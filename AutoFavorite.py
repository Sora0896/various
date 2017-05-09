#!/usr/bin/env python
# -*- coding:utf-8 -*-
 
import tweepy
import datetime
import sys

CK = ""
CS = ""
AT = ""
AS = ""

auth = tweepy.OAuthHandler(CK, CS)
auth.set_access_token(AT, AS)
 
api = tweepy.API(auth)
 
class Listener(tweepy.StreamListener):
    def on_status(self, status):
        status.created_at += datetime.timedelta(hours=9)
        api.create_favorite(status.id)
        return True

while True: 
    try:
        listener = Listener()
        stream = tweepy.Stream(auth, listener)
        stream.userstream()
    except:
        sys.exit()