#!/bin/bash

PROTO_DIR='../definition'
PROTO_FILE='instruction_serialiser.proto'

protoc --go_out=./instruction_serialiser --go_opt=paths=source_relative -I "${PROTO_DIR}" "${PROTO_DIR}"/"${PROTO_FILE}"
