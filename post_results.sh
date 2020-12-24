#!/bin/bash

echo run setup
#. setup.sh

json="
{\"appLinkName\":\"${applink}\",
    \"fields\":
       {\"id\":\"$2\",
        \"test_log\":\"$3\",
        \"test_status\":\"$4\"
        }}"
echo "Send JSON: $json"
echo "via ${ConnectAllUrl}/api/2/postRecord?apikey=$ConnectAllApikey"
curl \
--header "Content-Type: application/json;charset=UTF-8" -X POST \
-d "$json" \
 ${ConnectAllUrl}/connectall/api/2/postRecord?apikey=$ConnectAllApiKey
