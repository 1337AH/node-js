#!/bin/sh

TARGET_BRANCH=staging;

 BODY="{ \"project_id\": \"${CI_PROJECT_ID}\",
 \"source_branch\": \"${CI_COMMIT_REF_NAME}\",
 \"target_branch\": \"${TARGET_BRANCH}\",
 \"remove_source_branch\": false,
 \"force_remove_source_branch\": false,
 \"allow_collaboration\": true,
 \"subscribed\" : true,
 \"title\": \"${GITLAB_USER_NAME} merge request for: ${CI_COMMIT_REF_SLUG}\" }"; 
 
RESULT=$(curl -X POST "http://gitlab.com/api/v4/projects/${CI_PROJECT_ID}/merge_requests" -H "PRIVATE-TOKEN:${PRIVATE_TOKEN}" -H "Content-Type: application/json" -D "${BODY}");
 echo $RESULT;

