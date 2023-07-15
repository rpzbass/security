#!/usr/bin/python
import requests

site = requests.get("http://businesscorp.com.br/jkjkj")
status = site.status_code

print(status);


