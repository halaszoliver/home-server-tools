kubectl -n tools delete job $(kubectl -n tools get job --no-headers | awk '$3 > 0 {print $1}')
