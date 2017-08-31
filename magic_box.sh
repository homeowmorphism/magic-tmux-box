DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if tmux has-session -t magicbox 2> /dev/null
then 
	echo "Magic box running in background."
else
	echo "Magic box newly running in background."
	tmux new-session -d -s magicbox $DIR/hello_world.sh

fi
