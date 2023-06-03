# Convert .bin/.cue ROMs into .chd (macOS)

This script is for macOS.

Here's a video for how to do it on Windows. <https://www.youtube.com/watch?v=nAEoTXyz9Nk>

## Prerequisites

1. Install [Homebrew].
1. After that, `brew install findutils rom-tools`

## Setup for the _nearly-absolute beginner_

1. [Download a .zip file containing this source code](https://github.com/skyzyx/bin-cue-chd/archive/refs/heads/main.zip). By default, it will save to your `Downloads` folder.

1. Inside your `Downloads` folder, find `bin-cue-chd-main.zip` and double-click it to decompress it into a folder called `bin-cue-chd-main`.

1. Using Spotlight (by default, command-spacebar (`⌘[space]`)), search for _Terminal_.

1. In terminal, type `cd` followed by the spacebar.

1. Using your mouse/trackpad, click-and-drag the `bin-cue-chd-main` folder from Finder into your Terminal window. You'll notice that the path of the folder got filled-in _after_ the `cd `.

1. Press enter/return. You are now inside the `bin-cue-chd-main` folder in your Terminal app.

1. If you haven't done the prerequisites yet, now is the time to do them.

## Usage

You're stiil in the Terminal app, and still inside the `bin-cue-chd-main` folder. Right?

> **NOTE:** To check, type `pwd` and press enter/return. You should see a path that ends with `bin-cue-chd-main`.

Type the following (beginning with a _period-slash_), followed by a space.

```bash
./convert.sh
```

Find the Finder window that shows the folder where your `.bin`/`.cue` ROM is.

Just like before — using your mouse/trackpad, click-and-drag the ROM folder from Finder into your Terminal window. You'll notice that the path of the folder got filled-in _after_ the `./convert.sh `.

```bash
./convert.sh /example/path/to/your/game/folder
```

Press enter/return to begin the conversion.

## Conversion

You'll see something _similar_ to:

```plain
Will process files on directory: /Users/rparman/Desktop/Legal ROMS/Random Game that is a Legal ROM (USA)

Press enter to continue. Press Ctrl+C to quit.
```

Press enter/return.

The files will begin processing, and look _similar_ to:

```plain
Processing file: /Users/rparman/Desktop/Legal ROMS/Random Game that is a Legal ROM (USA)/Random Game that is a Legal ROM (USA).cue
chdman - MAME Compressed Hunks of Data (CHD) manager 0.254 (unknown)
Output CHD: /Users/rparman/Desktop/Legal ROMS/Random Game that is a Legal ROM (USA)/Random Game that is a Legal ROM (USA).chd
Input file: /Users/rparman/Desktop/Legal ROMS/Random Game that is a Legal ROM (USA)/Random Game that is a Legal ROM (USA).cue
Input tracks: 1
Input length: 70:37:12
Compression: cdlz (CD LZMA), cdzl (CD Deflate), cdfl (CD FLAC)
Logical size: 777,945,024
Compressing, 72.1% complete... (ratio=62.3%)
```

When it's done, you'll have a new `.chd` file in the same folder as the `.bin`/`.cue` files. The `.chd` is a _replacement_ for the `.bin`/`.cue` files.

It is now _one file_ that contains your game, and uses less space on-disk.

[Homebrew]: https://brew.sh
