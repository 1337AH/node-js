RESULT=$(curl -d '{"id":15033822, "source_branch":"dev", "target_branch":"staging", "title":"Build and Tests has been done successfully and moved to staging","squash":"false" }' -H "Content-Type: application/json" -H "PRIVATE-TOKEN: ${GITLAB_PRIVATE_TOKEN}" -X POST "http://gitlab.com/arlindh/api/v4/projects/${CI_PROJECT_ID}/merge_requests");

echo ${CI_PROJECT_ID};
echo ${GITLAB_PRIVATE_TOKEN};
echo $RESULT;

