import pymysql
import getpass
import sys
import argparse
import os
DIR = os.path.dirname(os.path.realpath('__file__'))


parser = argparse.ArgumentParser(description='Run the QwikTix Server')

parser.add_argument('--host', dest='host', default='localhost',
                    help='host of MySQL server. default is \'localhost\'')

parser.add_argument('-u', '--user', dest='user', default='root',
                    help='username to connect to MySQL server. default is \'root\'')

parser.add_argument('-p', '--password', dest='password', action='store_true',
                    help='whether to use password to connect to MySQL server')

parser.add_argument('-d', '--debug', dest='debug', default='',
                    help='enable debug mode')

parser.add_argument('-c', '--create', dest='create', action='store_true',
                    help='create database WARNING: this will drop the existing DB!')

parser.add_argument('-i', '--insert', dest='insert', action='store_true',
                    help='insert data to database WARNING: data may already be in DB!')

parser.add_argument('-x', '--stop', dest='stop', action='store_true',
                    help='run initial sql but not the server')


args = parser.parse_args()
pswd = ''
if args.debug:
    pswd = args.debug
elif args.password:
    print 'Enter your MySQL password'
    pswd = getpass.getpass(prompt='Password:')


def executeScriptsFromFile(filename, cursor):
    fd = open(filename, 'r')
    sqlFile = fd.read()
    fd.close()
    sqlCommands = sqlFile.split(';')

    for command in sqlCommands:
        try:
            if command.strip() != '':
                cursor.execute(command)
        except IOError, msg:
            print "Command skipped: ", msg


# (re)create database if desired
if args.create:
    conn = pymysql.connect(host=args.host,  # your host, usually localhost
                           user=args.user,  # your username
                           password=pswd)   # mysql password
    cur = conn.cursor()
    conn.autocommit(True)
    executeScriptsFromFile(os.path.join(DIR, '../milestone/ddl.sql'), cur)


# make connection
CONNECTION = pymysql.connect(host=args.host,      # your host, usually localhost
                             user=args.user,      # your username
                             password=pswd,       # mysql password
                             db='QwikTix')        # name of the data base
CONNECTION.autocommit(True)


def DB():
    return conn.cursor()


# seed database if desired
if args.insert:
    executeScriptsFromFile(os.path.join(DIR, '../milestone/dml.sql'), DB())


if args.stop:
    sys.exit()


