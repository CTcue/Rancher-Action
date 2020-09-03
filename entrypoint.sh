#!/bin/sh -l

token="$INPUT_TOKEN"
context="$INPUT_CONTEXT"
url="$INPUT_URL"

command_to_execute="rancher kubectl $INPUT_COMMAND_STRING"

rancher login --token $token --context $context $url

eval $command_to_execute

