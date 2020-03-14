# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
complete -cf sudo


export PATH=$PATH:/home/zpbird/.nutstore/dist/bin
export PATH=$PATH:/store/soft/scrt/scrt-8.3.1
export PATH=$PATH:/store/soft/xmind8-up6/XMind_amd64
export PATH=$PATH:/store/soft/wps
