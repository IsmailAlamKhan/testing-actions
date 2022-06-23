#!/bin/bash
title=$1
regex='v([0-9]{1,2})\.([0-9]{1,2})\.([0-9]{1,2})\+([0-9]{1,2})'
matched=''
[[ $title =~ $regex ]] && matched="${BASH_REMATCH}"
echo "::set-output name=version::$matched"
