# Instruction Serialiser Rust

This is the Rust implementation of the instruction serialiser.

## Using the library
Install the library as described on its
[page on crates.io](https://crates.io/crates/instruction_serialiser).

## Extending the library
This implementation uses Rust's build script to automatically compile
the current definitions when the library is compiled.

The implementation of the program logic can be found in the
[src directory](src). The [lib.rs](src/lib.rs) file exposes the
functionality.

Tests can be found right inside the files which also contain the program
logic. If you want to write your own tests please put them there.