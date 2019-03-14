#!/usr/bin/env bash
#
# Use this script to run the uninstalled (repo) version of "bdc",
# pulling "gendbc", and "master_parse" from the repo.
# -----------------------------------------------------------------------------

here=`pwd`
up=`(cd ..; pwd)`

export PYTHONPATH=.:$up/db_edu_util:$up/master_parse:$up/gendbc
python bdc/__init__.py "$@"
