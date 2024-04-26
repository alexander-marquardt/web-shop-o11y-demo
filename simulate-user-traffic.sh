export PUBLIC_APP_URL="4.156.201.184"
echo $PUBLIC_APP_URL
docker run --rm -i grafana/k6  run -e HOSTNAME=${PUBLIC_APP_URL:=web-shop} - <shop-simulator/webshop-protocol-demo.js 
docker run --rm -i grafana/k6  run -e HOSTNAME=${PUBLIC_APP_URL:=web-shop} - <shop-simulator/webshop-protocol-demo-phones.js 
docker run --rm -i grafana/k6  run -e HOSTNAME=${PUBLIC_APP_URL:=web-shop} - <shop-simulator/webshop-protocol-demo-energy.js 
docker run --rm -i grafana/k6  run -e HOSTNAME=${PUBLIC_APP_URL:=web-shop} - <shop-simulator/webshop-protocol-demo-food.js 

