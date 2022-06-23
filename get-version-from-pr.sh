#!/bin/bash
regex='v([0-9]{1,2})\.([0-9]{1,2})\.([0-9]{1,2})\+([0-9]{1,2})'
matched=''
[[ $pr_title =~ $regex ]] && matched="${BASH_REMATCH}"
echo "::set-output name=version::$matched"
