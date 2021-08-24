RESULT=$(curl -s -k --data "grant_type=client_credentials&client_id=curl&client_secret=f9341c12-602a-42c2-beb1-6fc3f76f456a" http://localhost:8080/auth/realms/vl-test/protocol/openid-connect/token)
TOKEN=$(echo ${RESULT} | awk -F: '{ print $2 }' | sed 's/"//g' | awk -F. '{ print $2 }' | base64 -d )
echo "${TOKEN}\"}" | jq .
