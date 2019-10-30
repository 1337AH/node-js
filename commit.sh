RESULT=$(curl -d '{ "id":15033822, "source_branch":"dev", "target_branch":"staging", "title":"Build and Tests has been done successfully and moved to staging","squash":"false" }' --header "Content-Type: application/json" --header "Private-Token: ${PRIVATE_TOKEN}" --request POST "http://gitlab.com/api/v4/projects/${CI_PROJECT_ID}/merge_requests")
	
echo ${CI_PROJECT_ID};
echo ${PRIVATE_TOKEN};
echo $RESULT;
