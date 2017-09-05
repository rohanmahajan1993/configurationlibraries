import os
import json


def install():
  with open('strings.json') as json_data:
    d = json.load(json_data)
    print(d)
  home_dir = os.getenv("HOME")
  print home_dir

if __name__ == "__main__":
  install()
