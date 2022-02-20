#!/bin/bash

PROTO_DIR='../definition'
PROTO_FILE='instruction_serialiser.proto'

protoc --dart_out=./lib/src/instruction_serialiser -I "${PROTO_DIR}" "${PROTO_DIR}"/"${PROTO_FILE}"
