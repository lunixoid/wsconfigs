#!/bin/bash

w_id1=$(xwininfo -root -tree | grep ws_term1 | awk 'NR==1{print $1}')
w_id2=$(xwininfo -root -tree | grep ws_term2 | awk 'NR==1{print $1}')
c_id=$(xdotool getactivewindow)
c_id=$(printf 0x%x $c_id)

if [ $c_id == $w_id1 ]
then
    xdotool windowactivate $w_id2
    wmctrl -a $w_id2
else
    xdotool windowactivate $w_id1
    wmctrl -a $w_id1;
fi

exit 0
