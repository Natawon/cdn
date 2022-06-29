awk '{print $3}' /var/log/nginx/setlive-stream-cdn.open-cdn.com.cache.log  | sort | uniq -c | sort -r

