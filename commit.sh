#!/bin/sh

TARGET_BRANCH=staging;

RESULT= $(curl -d '{"id": '${CI_PROJECT_ID}', "source_branch": '${CI_COMMIT_REF_NAME}', "target_branch": '${TARGET_BRANCH}', "remove_source_branch": false, "force_remove_source_branch": false, "allow_collaboration": true, "subscribed" : true, "title": '${GITLAB_USER_NAME}', merge request for: '${CI_COMMIT_REF_SLUG}'}' --header "PRIVATE-TOKEN:'${PRIVATE_TOKEN}'" --header "Content-Type: application/json" -X POST "'${CI_API_V4_URL}'/'${CI_PROJECT_ID}'/merge_requests");

#RESULT=$(curl -d '{ "id":1, "source_branch":"dev", "target_branch":"staging", "title":"Build and Tests has been done successfully and moved to staging", #"squash":"false" }' -H "Content-Type: application/json" -H "Private-Token: ${PRIVATE_TOKEN}" -X POST "http://git.vision-agency.com/api/v4/projects/${CI_PROJECT_ID}/     #merge_requests")

echo $RESULT;	



