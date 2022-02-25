# Instruction Serialiser Go

This is the Go implementation of the instruction serialiser.

## Using the library
In your own go module run
`go get github.com/nico151999/instruction_serialiser/go/instruction_serialiser@latest`
to get the latest version.

## Extending the library
If you adapted the definitions and would like to generate a new Go
source file from them there is a handy [script](generate_code.sh) you
can run included in this repository. Running the script in the context
of this directory generates a .go file which can be found
in the [instruction_serialiser directory](instruction_serialiser).

The implementation can be found in the
[instruction_serialiser directory](instruction_serialiser) as well.

Tests can be found in the files named with a '_test.go' postfix in the
[instruction_serialiser directory](instruction_serialiser). If you want
to write your own tests please put them there.