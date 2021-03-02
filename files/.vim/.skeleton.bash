#!/bin/bash

script_dir=$(dirname $(realpath $0))

usage() {
  cat << ENDUSAGE
Usage: $0 [-h]
   -h              Show help
ENDUSAGE
1>&2;
  exit 1;
}

while getopts "h" opt; do
  case "${opt}" in
    h )
        usage
        exit 1
        ;;
    * )
        usage
      ;;
  esac
done

shift $((OPTIND-1))

