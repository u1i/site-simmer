echo "$(date) started"

while read website
do
        echo $website
        curl -o /tmp/simmer.tmp "${website}?simmer=$(date +%s)"
done < sites.cfg

echo "$(date) ended"
