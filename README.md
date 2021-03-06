# magic-tmux-box

*Status: polished.*

Shell script which executes a program in a detached tmux session whenever your Terminal is open. Does not duplicate the session if it's already running.

## Run

Make sure you have [tmux](https://github.com/tmux/tmux/wiki) installed.

To run the `hello_world.sh` script in a detached tmux session, `cd` into the repo folder and type

```
$ chmod +x hello_world.sh
```

In your `~/.bash_profile` (or `~/.bashrc` if you are using Linux) add the line

```
YOUR_PATH_TO_REPO/magic_box.sh
```
and start a new shell. You should see 

```
Magic box newly running in background.
$
```

The `hello_world` script is now running in the background as the session `magicbox`.

## Attach the session

```
$ tmux attach-session -t magicbox
```

If you want to attach magicbox within an active tmux session, you can unset $TMUX with the command 

```
unset TMUX
```

## Customize the code

The code is contained in `magic_box.sh`.

`magicbox` is the name of the session.

Other example: `my_session`

`$DIR/hello_world.sh` is the path to the script you are executing. 

Other example: `python /YOUR_PATH/hello_world.py`

## Usage case: Twitter bot

I use this code to run my Twitter bot, [the EL bot](https://twitter.com/@TheELBot), so that whenever I open my terminal to do work,✨ hugs are given across the world 🌈. Sometimes I wanna tune in to the love and attach the session 🌟.

This is why it's a magic box! Hope this code is useful to you as well. 

## Acknowledgements

This code was written in the company of [Wesley Aptekar-Cassels](https://github.com/WesleyAC) during my retreat at the [Recurse Center](https://github.com/recursecenter). Thank you Wesley for having infinite patience to my infinite questions!
