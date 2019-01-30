# duffle-builder
Easily get compiled duffle binary on your system with no need to install any dependencies

# Usage:

# Build from github
By default, the image will clone the latest version of src using "https://github.com/deislabs/duffle.git". If that is desired behavior, run the following command:

docker run -v ${PWD}:/output stefanjbergh/duffle-builder:latest

This will output a binary file 'duffle' to your current directory.

# Build local code:
If you have issues downloading from git or want to build from local source code, run this command:

docker run -v ${PWD}:/output -v /path/to/src/code:/go/src/github.com/deislabs/duffle stefanjbergh/duffle-builder:latest

For instance, if your source code is located in the current directory in a folder named "duffle-src",

docker run -v ${PWD}:/output -v ${PWD}/duffle-src:/go/src/github.com/deislabs/duffle stefanjbergh/duffle-builder:latest

Again, this will output a binary file 'duffle' to your current directory.


# Change duffle binary output folder
If you want the output binary to be written somewhere else, change the first volume mount

-v ${PWD}:/output

to

-v /path/you/want/binary/written/to:/output
