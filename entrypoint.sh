#!/bin/bash

./setup.sh

# odd seconds since epoch the test will pass
#
epoch_time=`date +%s`
echo time = $epoch_time
if [ $((epoch_time%2)) -eq 0 ]; then
	log=`cat error.log|sed 's/\"/\\"/g' | perl -p -e 's/\n/\\\\n/'`
#  | jq -aRs .`
	test_status='fail'
	echo  'test failed'
else
	log=`cat success.log|sed 's/\"/\\"/g' | perl -p -e 's/\n/\\\\n/'`
#  | jq -aRs .`
	test_status='pass'
	echo 'test passed'
fi

# Remove the unique part of the job name on the end, eg, make TEST-123-jjdh to TEST-123
#
recordid=`echo ${recordid}|sed 's/\(.*\)-.*/\1/'`
echo "$log" >z.z

./post_results.sh "${applink}" "${recordid}" "${log}" "${test_status}"
