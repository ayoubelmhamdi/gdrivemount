from os import environ as env
from google.colab import drive

env['CLOUDSDK_CONFIG']  = '/content/.config'
try:
    drive.mount('/root/drive1/')

except NameError:
    drive.mount(/root/drive1/, force_remount=True)
