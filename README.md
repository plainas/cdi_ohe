# cdi_ohe

cdi_ohe is command line one-hot encoder written in Crystal. Input values should be passed to the STDIN and encoding keys as arguments.
The encoded output is sent to STDOUT

## Installation

Build with `shards build` and copy the resulting binary to a location in your PATH.

You can download a compiled binary for x86_64 from the releases page:

https://github.com/plainas/cdi_ohe/releases

I do not plan to make further releases for this or any other architecture.

## Usage

```
$ cat testfile 
a
b
a
b
c
c
p
q

$ cat testfile | ./cdi_ohe a b c
1 0 0
0 1 0
1 0 0
0 1 0
0 0 1
0 0 1
0 0 0
0 0 0
```

## Contributing

This program source is 20 lines of code and it was written in a few minutes. I do not plan to add more functionality. The recomended way of contributing is by cloning the project and modifying it as needed.