#!/bin/bash
# verfiy="4/1AY0e-g73I_RLpOLl4N0BpfBmf1FLegzSfoFuFCnIo8tao_bLj14Mh24ilCE"
# verfiy="4/1AY0e-g73I_RLpOLl4N0BpfBmf1FLegzSfoFuFCnIo8tao_bLj14Mh24ilCE"
runuser -l $user -c "yes | python3 -m pip install --user google-colab"  > /dev/null 2>&1
# runuser -l $user -c "echo \"$verfiy\"|python3 $HOME/gdrivemount/mount.py"
runuser -l $user -c "echo \"$verfiy\"|python3 $HOME/gdrivemount/mount.py"

