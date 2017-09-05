import os
import json


def install():
  current_directory = os.getcwd() 
  home_dir = os.getenv("HOME")
  with open('files.json') as json_data:
    d = json.load(json_data)
    for source_file_name, destination_file_name in d.iteritems():
       source_path = os.path.join(current_directory, source_file_name) 
       if destination_file_name.startswith("~/"):
          destination_path = os.path.join(home_dir, destination_file_name[2:])
       else:	
	  destination_path = destination_file_name
       if os.path.exists(destination_path):
          os.unlink(destination_path)
       os.link(source_path, destination_path)

if __name__ == "__main__":
  install()
