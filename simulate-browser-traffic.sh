export PUBLIC_APP_URL="alexandermarquardt.info"
echo $PUBLIC_APP_URL

#ocker run --rm -i grafana/k6  run -e HOSTNAME=${PUBLIC_APP_URL:=web-shop} - <shop-simulator/webshop-protocol-demo.js
docker run --rm -i grafana/k6  run -e K6_BROWSER_ENABLED=true -e HOSTNAME=${PUBLIC_APP_URL:=web-shop} - <shop-simulator/webshop-browser-demo.js
#docker run --network web-shop-o11y-demo_web-shop --rm -i grafana/k6  run -e K6_BROWSER_ENABLED=true -e HOSTNAME=${PUBLIC_APP_URL:=web-shop} - <shop-simulator/webshop-browser-demo.js
#docker run --rm -i --cap-add=SYS_ADMIN grafana/k6:master-with-browser run - < shop-simulator/webshop-browser-demo.js

