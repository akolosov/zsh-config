### vim:ft=zsh
### Configuration file for dircolors, a utility to help you set the
### LS_COLORS environment variable used by GNU ls with the --color option.
###
### Frank Terbeck <ft@bewatermyfriend.org>
### Last-Modified: Fri Sep 25 16:11:12 2009
###
### URI: <http://ft.bewatermyfriend.org/comp/zsh.html>
###
### Below, there should be one TERM entry for each termtype that is colorizable
### {{{

    TERM Eterm
    TERM ansi
    TERM color-xterm
    TERM con132x25
    TERM con132x30
    TERM con132x43
    TERM con132x60
    TERM con80x25
    TERM con80x28
    TERM con80x30
    TERM con80x43
    TERM con80x50
    TERM con80x60
    TERM cons25
    TERM console
    TERM cygwin
    TERM dtterm
    TERM eterm-color
    TERM gnome
    TERM gnome-256color
    TERM konsole
    TERM kterm
    TERM linux
    TERM linux-c
    TERM mach-color
    TERM mlterm
    TERM putty
    TERM rxvt
    TERM rxvt-cygwin
    TERM rxvt-cygwin-native
    TERM rxvt-unicode
    TERM screen
    TERM screen-256color
    TERM screen-bce
    TERM screen-w
    TERM screen.linux
    TERM vt100
    TERM xterm
    TERM xterm-16color
    TERM xterm-256color
    TERM xterm-88color
    TERM xterm-color
    TERM xterm-debian

### }}}
### Below are the color init strings for the basic file types. A color init
### string consists of one or more of the following numeric codes:
### {{{
### Attribute codes:
###
###   00    none
###   01    bold
###   04    underscore
###   05    blink
###   07    reverse
###   08    concealed
###
### Text color codes:
###   30    black
###   31    red
###   32    green
###   33    yellow
###   34    blue
###   35    magenta
###   36    cyan
###   37    white
###
### Background color codes:
###   40    black
###   41    red
###   42    green
###   43    yellow
###   44    blue
###   45    magenta
###   46    cyan
###   47    white
### }}}
### filetypes
### {{{

### global default, although everything should be something.
    NORMAL 00

### file
    FILE 00

### directory
    DIR 01;34
    #DIR 38;5;12

### symbolic link.  (If you set this to 'target' instead of a
### numerical value, the color is as for the file pointed to.)
    LINK 01;36

### pipe
    FIFO 40;33

### socket
    SOCK 01;35

### door
    DOOR 01;35

### block device driver
    BLK 40;33;01

### character device driver
    CHR 40;33;01

### symlink to nonexistent file
    ORPHAN 40;31;01

### This is for files with execute permission:
    EXEC 01;32

### }}}
### List any file extensions like '.gz' or '.tar' that you would like ls
### to colorize below. Put the extension, a space, and the color init string.
### (and any comments you want to add after a '#')
### {{{

### archives or compressed (bright red)
    .tar 01;31
    .tgz 01;31
    .arj 01;31
    .taz 01;31
    .lzh 01;31
    .zip 01;31
    .rar 01;31
    .z   01;31
    .Z   01;31
    .gz  01;31
    .bz2 01;31
    .deb 01;31
    .rpm 01;31
    .jar 01;31

### image formats
    .jpg 01;35
    .jpeg 01;35
    .gif 01;35
    .bmp 01;35
    .pbm 01;35
    .pgm 01;35
    .ppm 01;35
    .tga 01;35
    .xbm 01;35
    .xpm 01;35
    .tif 01;35
    .tiff 01;35
    .png 01;35
    .mov 01;35
    .mpg 01;35
    .mpeg 01;35
    .avi 01;35
    .fli 01;35
    .gl 01;35
    .dl 01;35
    .xcf 01;35
    .xwd 01;35

### audio formats
    .ogg 01;31
    .mp3 01;31
    .flac 01;31
    .wav 01;31

### }}}
