#!/bin/bash
if [ -z "$PG_PASS" ]
then
  echo "$0: you need to set PG_PASS=..."
  exit 1
fi
PG_DB=cii GHA2DB_LOCAL=1 GHA2DB_CSVOUT=committers.csv runq sql/committers.sql {{exclude_bots}} "`cat ~/dev/go/src/github.com/cncf/devstats/util_sql/exclude_bots.sql`"
