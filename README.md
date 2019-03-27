# cdi_ohe

cdi_ohe is command line one-hot encoder written in Crystal. Input values should be passed to the STDIN and encoding keys as arguments.
The encoded output is sent to STDOUT

## Installation

Build with `shards build` and copy the resulting binary to a location in your PATH.

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