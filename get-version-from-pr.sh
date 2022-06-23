#!/bin/bash
title=$1
echo "title is $title"
regex='v([0-9]{1,2})\.([0-9]{1,2})\.([0-9]{1,2})\+([0-9]{1,2})'
version=''
[[ $title =~ $regex ]] && version="${BASH_REMATCH}"
echo "version: $version"
echo "::set-output name=version::$(echo $version)"
