# -*- coding: utf-8 -*-

import argparse
import json

from rocketchat.api import RocketChatAPI

api = RocketChatAPI(settings={'username': 'Alexa', 'password': 'sb6mWMiXF6fk',
                              'domain': 'https://chat.baiyjk.com'})

parser = argparse.ArgumentParser(description='MySQL master failover succeeded')

parser.add_argument('--orig_master_host', nargs='?', dest='orig_master_host')
parser.add_argument('--new_master_host', nargs='?', dest='new_master_host')
parser.add_argument('--new_slave_hosts', nargs='?', dest='new_slave_hosts')
parser.add_argument('--subject', nargs='?', dest='subject')
parser.add_argument('--body', nargs='?', dest='body')
parser.add_argument('--conf', nargs='?', dest='conf')

args = parser.parse_args()

message = "**MySQL {}, failover has completed.**\norigin master: {}, new master: {}, new slaves: {}\nsubject: {}\nbody: {}".format(args.new_master_host, args.orig_master_host, args.new_master_host, args.new_slave_hosts, args.subject, args.body)

api.send_message(message, 'prometheus')
