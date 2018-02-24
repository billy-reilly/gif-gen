# gif-gen
Basic bash script for turning screen recordings (or any .mov files) into gifs for mac users

Extension of [baumandm's extension](https://gist.github.com/baumandm/1dba6a055356d183bbf7) of [dergachev's instructions](https://gist.github.com/dergachev/4627207)

### Steps:

1) make sure you have `ffmpeg` installed:
```
brew install ffmpeg
```

2) clone this repo onto your machine:
```
git clone https://github.com/billy-reilly/gif-gen.git
```

3) save a Quicktime screen recording (with .mov extension) into the `screen-recordings` directory

4) navigate to the project's root directory in your command line and run the bash script
```
billy-reilly$ cd gif-gen

billy-reilly$ ./gif-bash.sh
...
🍻  Cheers, test has successfully been converted to a gif
```

The gif should now be in the `gifs` directory
