kubectl -n tools create job --from=cronjob/renovate renovate-manual-$(date +%s)
