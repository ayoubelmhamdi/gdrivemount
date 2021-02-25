from os import environ as env
from google.colab import drive

env['CLOUDSDK_CONFIG']  = '/content/.config'
try:
    drive.mount('/root/drive/')

except NameError:
    drive.mount("/root/drive/", force_remount=True)


# try:
#     mountpoint = "/content/drive/"
#     user = 'root'
# except NameError:    
#     mountpoint = '/content/drive/'
#     user = 'root'
