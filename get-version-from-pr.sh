#!/bin/bash
title=$1
echo "title is $title"
regex='v([0-9]{1,2})\.([0-9]{1,2})\.([0-9]{1,2})\+([0-9]{1,2})'
matched=''
[[ $title =~ $regex ]] && matched="${BASH_REMATCH}"
echo "matched: $matched"
echo "::set-output name=matched::$(echo $matched)"
