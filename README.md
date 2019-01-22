# mmlong
A collection of scripts for metagenome assembly using long reads.

# Installation

## Clone from github
1. Go to desired installation folder, open a terminal and run commands:
2. git clone https://github.com/SorenKarst/mmlong.git

## Make bash scripts executable
1. Go to mmlong folder, open a terminal and run commands:
2. find . -name "mmlong*" -exec chmod +x {} \;

## Create symlink to run mmlong from terminal
1. Open terminal and run command:
2. ln -s /path/to/mmlong/mmlong.sh /usr/local/bin
3. Test symlink by opening a terminal window anywhere
4. Type mmlong -h

## Change paths to dependencies
1. Go to /path/to/mmlong/mmlong_tools and open dependencies.sh in a texteditor.
2. Change all paths under "Paths to dependencies" to reflect installations on you system.
3. If unsure of the paths try to type `which <function>` in the terminal. I.e. `which racon`.

# Running mmlong functions
1. `mmlong -h` gives an overview of available tools.
2. `mmlong <tool name> -h` gives the help text for the specific tool. i.e. `mmlong hybrid-metalflow`

