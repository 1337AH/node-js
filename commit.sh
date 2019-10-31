RESULT=$(curl -d '{"id":15033822, "source_branch":"dev", "target_branch":"staging", "title":"Build and Tests has been done successfully and moved to staging","squash":"false" }' -H "Content-Type: application/json" -H "PRIVATE-TOKEN: ${GITLAB_PRIVATE_TOKEN}" -X POST "https://gitlab.com/api/v4/projects/15033822/merge_requests");

echo $RESULT;

#Get merge request id
IID=$(echo "$RESULT" | jq '.iid')

#Accept merge request
curl -d '{ "assignee_id":4851996, "description":"Merge request accepted, initiated from pipeline", "remove_source_branch":false }' -H "Content-Type: application/json" -H "Private-Token: ${GITLAB_PRIVATE_TOKEN}" -X PUT "${CI_API_V4_URL}/projects/${CI_PROJECT_ID}/merge_requests/${IID}/merge"


#[{"id":4851996,"name":"arberiesinani","username":"arberiesinani","state":"active","avatar_url":"https://secure.gravatar.com/avatar/7291835b72c4658c04c4b334ef69948c?s=80\u0026d=identicon","web_url":"https://gitlab.com/arberiesinani"}]
