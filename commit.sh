#!/bin/sh

TARGET_BRANCH=staging;

BODY='{"id": '${CI_PROJECT_ID}', "source_branch": '${CI_COMMIT_REF_NAME}', "target_branch": '${TARGET_BRANCH}', "remove_source_branch": false, "force_remove_source_branch": false, "allow_collaboration": true, "subscribed" : true, "title": '${GITLAB_USER_NAME}', merge request for: '${CI_COMMIT_REF_SLUG}' }'; 

RESULT= $('curl --request POST "'${CI_API_V4_URL}'/'${CI_PROJECT_ID}'/merge_requests" --header "PRIVATE-TOKEN:'${PRIVATE_TOKEN}'" --header "Content-Type: application/json" --data '${BODY}';');

echo $RESULT;	



