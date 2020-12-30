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
echo
echo "Send JSON: $json"
echo "via ${ConnectAllUrl}/api/2/postRecord?apikey=$ConnectAllApikey"
curl -s \
--header "Content-Type: application/json;charset=UTF-8" -X POST \
-d "$json" \
 ${ConnectAllUrl}/connectall/api/2/postRecord?apikey=$ConnectAllApiKey


# Send log file as an attachment
echo
echo "send the file $3 as an attachment"
echo cmd: curl -s --location -X POST --header 'Content-Type: multipart/form-data' --form "file=@${3}" "${ConnectAllUrl}/connectall/api/2/upload?appLinkName=${applink}&origin=destination&recordId=$2&apikey=$ConnectAllApiKey"
curl -s --location -X POST --header 'Content-Type: multipart/form-data' --form "file=@${3}" "${ConnectAllUrl}/connectall/api/2/upload?appLinkName=${applink}&origin=destination&recordId=$2&apikey=$ConnectAllApiKey"
