#!/bin/bash

# This file is used for performing the publish operation since it requires some basic setup to create a valid package.

function cleanup {
  rm -rf "$1" || exit 1
  exit "$2"
}

function main {
  cd "$(dirname "${BASH_SOURCE[0]}")" || exit 1
  parse_config definition_paths.toml || exit 1
  local DEFINITION_DIR_DEV_VARIABLE_NAME='DEFINITION_DIR_DEV' || exit 1
  local DEFINITION_DIR_PROD_VARIABLE_NAME='DEFINITION_DIR_PROD' || exit 1
  # shellcheck disable=SC2154
  local DEFINITION_SRC_DIR="${definition[$DEFINITION_DIR_DEV_VARIABLE_NAME]}" || exit 1
  local DEFINITION_DEST_DIR="${definition[$DEFINITION_DIR_PROD_VARIABLE_NAME]}" || exit 1
  mkdir "$DEFINITION_DEST_DIR" || exit 1
  cp -rf "$DEFINITION_SRC_DIR"/* "$DEFINITION_DEST_DIR" || cleanup "$DEFINITION_DEST_DIR" 1
  cargo publish "$@" || cleanup "$DEFINITION_DEST_DIR" 1
  cleanup "$DEFINITION_DEST_DIR" 0
}

function parse_config {
  [[ -f "$1" ]] || { echo "$1 is not a file." >&2;return 1;}
  local LINE KEY VALUE SECTION_REGEX ENTRY_REGEX
  SECTION_REGEX="^[[:blank:]]*\[([[:alpha:]_][[:alnum:]_-]*)\][[:blank:]]*(#.*)?$"
  ENTRY_REGEX="^[[:blank:]]*([[:alpha:]_][[:alnum:]_-]*)[[:blank:]]*=[[:blank:]]*('[^']+'|\"[^\"]+\"|[^#[:blank:]]+)[[:blank:]]*(#.*)*$"
  while read -r LINE
  do
    [[ -n "$LINE" ]] || continue
    [[ "$LINE" =~ $SECTION_REGEX ]] && {
      local -n CONFIG_ARRAY="${BASH_REMATCH[1]}"
      declare -Ag "${!CONFIG_ARRAY}" || return 1
      continue
    }
    [[ $LINE =~ $ENTRY_REGEX ]] || continue
    KEY="${BASH_REMATCH[1]}"
    VALUE="${BASH_REMATCH[2]#[\"\']}"
    VALUE="${VALUE%[\"\']}"
    CONFIG_ARRAY["${KEY}"]="${VALUE}"
  done < <(grep '' "$1")
}

main "$@"
