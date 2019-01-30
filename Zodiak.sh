#!/usr/bin/env python2
# -*- coding: utf-8 -*-

"""
# Recode = CCD masa gak bisa bikin script-simple gini
# Jika pingin recode Buatlah sendiri.
# Code By : SK4T3RS
"""

import os
import json
from urllib2 import urlopen

logoTaLaZ = """\033[1;37m
    .-----.     .-.          .----.
    `-. .-'     : :          `--. :
      : : .--.  : :    .--.    ,','
      : :' .; ; : :__ ' .; ; .'.'_.
      :_;`.__,_;:___.'`.__,_;:____;
   TaLaZ (\033[1;32mTanggal Lahir Zodiak\033[1;37m)  V\033[1;32m 1.0\033[0m
 """
print logoTaLaZ
name = raw_input("\033[1;32m  [\033[1;31m!\033[1;32m]\033[1;37m Nama    : ")
tgl = raw_input("\033[1;32m  [\033[1;31m!\033[1;32m]\033[1;37m Tanggal : ")
bln = raw_input("\033[1;32m  [\033[1;31m!\033[1;32m]\033[1;37m Bulan   : ")
thn = raw_input("\033[1;32m  [\033[1;31m!\033[1;32m]\033[1;37m Tahun   : ")
url = "https://script.google.com/macros/exec?service=AKfycbw7gKzP-WYV2F5mc9RaR7yE3Ve1yN91Tjs91hp_jHSE02dSv9w&nama="+name+"&tanggal="+tgl+"-"+bln+"-"+thn
dat = urlopen(url).read().decode("utf-8")
data = json.loads(dat)

print("\n\033[1;33m  [\033[1;37m#\033[1;33m] \033[1;37mInformation >>>\033[0m")
print "\033[1;33m  [\033[1;32m+\033[1;33m] \033[1;30mStatus\033[1;32m :\033[37m ", str(data['status'])
print "\033[1;33m  [\033[1;32m+\033[1;33m] \033[1;30mNama\033[1;32m   :\033[37m ", str(data['data']['nama'])
print "\033[1;33m  [\033[1;32m+\033[1;33m] \033[1;30mLahir\033[1;32m  :\033[37m ", str(data['data']['lahir'])
print "\033[1;33m  [\033[1;32m+\033[1;33m] \033[1;30mUsia\033[1;32m   :\033[37m ", str(data['data']['usia'])
print "\033[1;33m  [\033[1;32m+\033[1;33m] \033[1;30mUltah\033[1;32m  :\033[37m ", str(data['data']['ultah'])
print "\033[1;33m  [\033[1;32m+\033[1;33m] \033[1;30mZodiak\033[1;32m :\033[37m ", str(data['data']['zodiak'])
os.system("exit")