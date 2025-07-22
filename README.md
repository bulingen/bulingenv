# Bulingenv

## Get started

```bash
source ./source_me.sh
```

## TODO:

### Fix autocompletion for ROS2 Humble in Ubuntu 22.04 and Zsh

Here are some notes that have to be cleaned up:

```bash
# To put in ~/.zshrc or similar

source /opt/ros/humble/setup.zsh
# argcomplete for ros2 & colcon
# eval "$(register-python-argcomplete3 ros2)"
# eval "$(register-python-argcomplete3 colcon)"
# eval "$(register-python-argcomplete ros2)"
# eval "$(register-python-argcomplete colcon)"

# autoload -U +X bashcompinit && bashcompinit

# NOTE: to make autocomplete work, do what it says here:
# https://lightrun.com/answers/ros2-ros2cli-autocomplete-fails-while-using-zsh
# Basically: comment out the line
# autoload -U +X compinit && compinit
# in /opt/ros/humble/share/rosidl_cli/environment/rosidl-argcomplete.zsh
# then source everything again, and it should work.

eval "$(register-python-argcomplete3 ros2)"
eval "$(register-python-argcomplete3 colcon)"
# eval "$(register-python-argcomplete ros2)"
# eval "$(register-python-argcomplete colcon)"

source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.zsh
```
