#!/bin/bash

PROTO_DIR='../definition'
PROTO_FILE='instruction_serialiser.proto'
OUT_DIR='./src/instruction_serialiser'

protoc \
    --js_out=import_style=commonjs,binary:$OUT_DIR \
    --grpc-web_out=import_style=typescript,mode=grpcweb:$OUT_DIR \
    -I "${PROTO_DIR}" \
    "${PROTO_DIR}"/"${PROTO_FILE}"
