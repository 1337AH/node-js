RESULT=$(curl -d '{"id":15033822, "source_branch":"dev", "target_branch":"hotfix", "title":"Build and Tests has not been done successfully and is moved to hotfix","squash":"false" }' -H "Content-Type: application/json" -H "PRIVATE-TOKEN: ${GITLAB_PRIVATE_TOKEN}" -X POST "https://gitlab.com/api/v4/projects/15033822/merge_requests");

#Get merge request id
IID=$(echo "$RESULT" | jq '.iid')
	
#Accept merge request
curl -d '{ "assignee_id":4851996, "description":"Merge request accepted, initiated from pipeline", "remove_source_branch":false }' -H "Content-Type: application/json" -H "Private-Token: ${GITLAB_PRIVATE_TOKEN}" -X PUT "https://gitlab.com/api/v4/projects/15033822/merge_requests/${IID}/merge";



