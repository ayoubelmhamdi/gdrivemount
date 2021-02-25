#!/bin/bash
# verfiy="4/1AY0e-g73I_RLpOLl4N0BpfBmf1FLegzSfoFuFCnIo8tao_bLj14Mh24ilCE"
# verfiy="4/1AY0e-g73I_RLpOLl4N0BpfBmf1FLegzSfoFuFCnIo8tao_bLj14Mh24ilCE"
runuser -l $user -c "yes | python3 -m pip install --user google-colab"  > /dev/null 2>&1
# runuser -l $user -c "echo \"$verfiy\"|python3 $HOME/gdrivemount/mount.py"

var="drive1"

echo "from os import environ as env"                         >  mount.py
echo "from google.colab import drive"                        >> mount.py
echo                                                         >> mount.py
echo "env['CLOUDSDK_CONFIG']  = '/content/.config'"          >> mount.py
echo "try:"                                                  >> mount.py
echo "    drive.mount('/root/$var/')"                        >> mount.py
echo                                                         >> mount.py
echo "except NameError:"                                     >> mount.py
echo "    drive.mount('/root/$var/', force_remount=True)"    >> mount.py





runuser -l $user -c "python3 $HOME/gdrivemount/mount.py"

