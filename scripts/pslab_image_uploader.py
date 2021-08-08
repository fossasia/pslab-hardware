import sys
import time

from cloudinary import uploader

if __name__ == '__main__':
  API_KEY = sys.argv[1]
  API_SECRET = sys.argv[2]
  IMAGE = sys.argv[3]

  img_res = uploader.upload(IMAGE, public_id=str(round(time.time()*1000)), api_key=API_KEY, api_secret=API_SECRET, cloud_name="pslab")

  IMG_URL = img_res['url']

  print(IMG_URL)
