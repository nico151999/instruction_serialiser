# Instruction Serialiser Dart

This is the Dart implementation of the instruction serialiser.

## Using the library
Add the library to your project as described on its
[install page on pub.dev](https://pub.dev/packages/instruction_serialiser/install).

## Extending the library
If you adapted the definitions and would like to generate new Dart
source files from them there is a handy [script](generate_code.sh) you
can run included in this repository. Running the script in the context
of this directory generates several .dart files which can be found
[here](lib/src/instruction_serialiser).

The implementation can be found in the [lib directory](lib). The file
[instruction_serialiser.dart](lib/instruction_serialiser.dart) inside
is meant to expose the functionality. The actual logic can be found in
the [src subdirectory](lib/src).

Tests can be found in the [test directory](test). If you want to write
your own tests please put them there.