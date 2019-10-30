#!/bin/bash

RESULT=$(curl -d '{ "id":15033822, "source_branch":"dev", "target_branch":"staging", "title":"Build and Tests has been done successfully and moved to staging","squash":"false" }' -H "Content-Type: application/json" -H "Private-Token: ${PRIVATE_TOKEN}" -X POST "http://gitlab.com/api/v4/projects/${CI_PROJECT_ID}/merge_requests")

echo $RESULT;	



