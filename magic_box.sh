# "magicbox" is the name of the session. 
# Other example: "my_session"

# "$DIR/hello_world.sh" is the path to the script you are executing. 
# Other example: "python hello_world.py"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if tmux has-session -t magicbox 2> /dev/null
then 
	echo "Magic box running in background."
else
	echo "Magic box newly running in background."
	tmux new-session -d -s magicbox $DIR/hello_world.sh

fi
