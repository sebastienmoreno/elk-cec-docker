for entry in ${1}/*.log
do
  echo ""
  echo "Sending file $entry"
  curl -X POST localhost:8080/_bulk --data @$entry
done