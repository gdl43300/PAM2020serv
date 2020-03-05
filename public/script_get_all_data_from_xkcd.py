import urllib.request
import json

data_list = []

for i in range(1, 2267):
    contents = None
    try:
        contents = json.loads(urllib.request.urlopen("https://xkcd.com/" + str(i) + "/info.0.json").read())
    except urllib.error.HTTPError:
        pass
    data_list.append(contents)

with open('xkcd.json', 'a') as the_file:
    the_file.write(str(data_list))
