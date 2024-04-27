#!/usr/bin/env bash
#   desc: Load kittens into the product catalog
#   params:
#   return (status code/stdout):

export PUBLIC_APP_URL="172.214.5.224"
echo $PUBLIC_APP_URL

load_clothes() {
  echo "Loading some clothes into the product catalog..."
  curl -X POST -H "Content-Type: application/json" -d '{"name": "Red dress", "price": "29.99", "tag": "cool", "pic_ref": "https://images.unsplash.com/photo-1595777457583-95e059d581b8?q=80&w=2583&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"}' ${PUBLIC_APP_URL}:8080/products/ >& add_products.sh.log
  curl -X POST -H "Content-Type: application/json" -d '{"name": "White shirt", "price": "39.99", "tag": "", "pic_ref": "https://images.unsplash.com/photo-1581655353564-df123a1eb820?q=80&w=2112&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"}' ${PUBLIC_APP_URL}:8080/products/ >& add_products.sh.log
  curl -X POST -H "Content-Type: application/json" -d '{"name": "Colored Shirts", "price": "19.50", "tag": "special", "pic_ref": "https://images.unsplash.com/photo-1562157873-818bc0726f68?q=80&w=2454&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"}' ${PUBLIC_APP_URL}:8080/products/ >& add_products.sh.log
  curl -X POST -H "Content-Type: application/json" -d '{"name": "Jeans and T-shirt", "price": "25.00", "tag": "special", "pic_ref": "https://plus.unsplash.com/premium_photo-1690034979531-17038351d76f?q=80&w=2487&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"}' ${PUBLIC_APP_URL}:8080/products/ >& add_products.sh.log
  curl -X POST -H "Content-Type: application/json" -d '{"name": "Green shirts", "price": "18.99", "tag": "green", "pic_ref": "https://images.unsplash.com/photo-1523381294911-8d3cead13475?q=80&w=2370&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"}' ${PUBLIC_APP_URL}:8080/products/ >& add_products.sh.log
  curl -X POST -H "Content-Type: application/json" -d '{"name": "Black shirt", "price": "29.99", "tag": "Goth", "pic_ref": "https://images.unsplash.com/photo-1599255068390-206e0d068539?q=80&w=2565&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"}' ${PUBLIC_APP_URL}:8080/products/ >& add_products.sh.log
  curl -X POST -H "Content-Type: application/json" -d '{"name": "Sun glasses", "price": "109.99", "tag": "cool", "pic_ref": "https://images.unsplash.com/photo-1622470953794-aa9c70b0fb9d?q=80&w=2487&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D0"}' ${PUBLIC_APP_URL}:8080/products/ >& add_products.sh.log

  echo "Done!"
}

load_kittens() {
  echo "Loading some kittens into the product catalog..."
  echo "   loading Meows"
  curl -X POST -H "Content-Type: application/json" -d '{"name": "Meows", "price": "29.99", "tag": "cool", "pic_ref": "https://placekitten.com/251/250"}' ${PUBLIC_APP_URL}:8080/products/ >& add_products.sh.log
  echo "   loading Loki"
  curl -X POST -H "Content-Type: application/json" -d '{"name": "Loki", "price": "39.99", "tag": "", "pic_ref": "https://placekitten.com/251/251"}' ${PUBLIC_APP_URL}:8080/products/ >& add_products.sh.log
  echo "   loading Charlie"
  curl -X POST -H "Content-Type: application/json" -d '{"name": "Charlie", "price": "19.50", "tag": "special", "pic_ref": "https://placekitten.com/250/251"}' ${PUBLIC_APP_URL}:8080/products/ >& add_products.sh.log
  echo "   loading Carla"
  curl -X POST -H "Content-Type: application/json" -d '{"name": "Carla", "price": "25.00", "tag": "special", "pic_ref": "https://placekitten.com/249/250"}' ${PUBLIC_APP_URL}:8080/products/ >& add_products.sh.log
  echo "Done!"
}

#   desc: Load smartphones into the product catalog
#   params:
#   return (status code/stdout):
load_phones() {
  echo "Loading some phones into the product catalog..."
  echo "   loading a XIAOMI phone"
  curl -X POST -H "Content-Type: application/json" -d '{"name": "XIAOMI", "price": "275.00", "tag": "5g", "pic_ref": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKBmH_aC5CmItXprFLTRKpev6HLiUesYoPIA&usqp=CAU"}' ${PUBLIC_APP_URL}:8080/products/ >& add_products.sh.log
  echo "   loading a ZTE phone"
  curl -X POST -H "Content-Type: application/json" -d '{"name": "ZTE", "price": "175.00", "tag": "4g", "pic_ref": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3wu0GHlwzpPPlh0KgQlMIxkY8h7zs7USPIw&usqp=CAU"}' ${PUBLIC_APP_URL}:8080/products/ >& add_products.sh.log
  echo "   loading a OPPO phone"
  curl -X POST -H "Content-Type: application/json" -d '{"name": "OPPO", "price": "255.00", "tag": "5g", "pic_ref": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO1kvevSM1v2ltBdB9ApnOU6GTYsVxT9jYLQ&usqp=CAU"}' ${PUBLIC_APP_URL}:8080/products/ >& add_products.sh.log
  echo "   loading a SAMSUNG phone"
  curl -X POST -H "Content-Type: application/json" -d '{"name": "SAMSUNG", "price": "155.00", "tag": "5g", "pic_ref": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmO3FEddg3lQD1s8f1xdSVselUhHc7ntRvEg&usqp=CAU"}' ${PUBLIC_APP_URL}:8080/products/ >& add_products.sh.log
  echo "Done!"
}

#   desc: Load energy products into the product catalog
#   params:
#   return (status code/stdout):
load_energy_products() {
  echo "Loading some energy products into the product catalog..."
  echo "   loading a solar panel"
  curl -X POST -H "Content-Type: application/json" -d '{"name": "SolarPanel", "price": "275.00", "tag": "cheap now!", "pic_ref": "/static/img/energy/solarpanel.png"}' ${PUBLIC_APP_URL}:8080/products/ >& add_products.sh.log
  echo "Done!"
  echo "   loading a electric car charger"
  curl -X POST -H "Content-Type: application/json" -d '{"name": "CarChargeBox", "price": "777.00", "tag": "hot", "pic_ref": "/static/img/energy/wallbox.png"}' ${PUBLIC_APP_URL}:8080/products/ >& add_products.sh.log
  echo "Done!"
  echo "   loading a modem"
  curl -X POST -H "Content-Type: application/json" -d '{"name": "Internet", "price": "20.00", "tag": "", "pic_ref": "/static/img/energy/modem.png"}' ${PUBLIC_APP_URL}:8080/products/ >& add_products.sh.log
  echo "Done!"
  echo "   loading a heatpump"
  curl -X POST -H "Content-Type: application/json" -d '{"name": "HeatPump", "price": "2499.00", "tag": "save", "pic_ref": "/static/img/energy/heatpump.png"}' ${PUBLIC_APP_URL}:8080/products/ >& add_products.sh.log
  echo "Done!"
}

#   desc: Load food products into the product catalog
#   params:
#   return (status code/stdout):
load_food_products() {
  echo "Loading some energy products into the product catalog..."
  echo "   loading a salmon"
  curl -X POST -H "Content-Type: application/json" -d '{"name": "Salmon", "price": "12.90", "tag": "fishy!", "pic_ref": "/static/img/food/salmon.png"}' ${PUBLIC_APP_URL}:8080/products/ >& add_products.sh.log
  echo "Done!"
  echo "   loading a pasta"
  curl -X POST -H "Content-Type: application/json" -d '{"name": "Pasta", "price": "9.99", "tag": "hot", "pic_ref": "/static/img/food/pasta.png"}' ${PUBLIC_APP_URL}:8080/products/ >& add_products.sh.log
  echo "Done!"
  echo "   loading a chicken"
  curl -X POST -H "Content-Type: application/json" -d '{"name": "Chicken", "price": "14.90", "tag": "", "pic_ref": "/static/img/food/chicken.png"}' ${PUBLIC_APP_URL}:8080/products/ >& add_products.sh.log
  echo "Done!"
  echo "   loading a shrimps"
  curl -X POST -H "Content-Type: application/json" -d '{"name": "Shrimps", "price": "19.00", "tag": "save now", "pic_ref": "/static/img/food/shrimps.png"}' ${PUBLIC_APP_URL}:8080/products/ >& add_products.sh.log
  echo "Done!"
}

#   desc: display script's syntax
#   params:
#   return (status code/stdout):
usage() {
  echo "Usage: add_product.sh [VERTICAL]"
  echo 
  echo "Available verticals for add_product:"
  echo "  default            it loads some clothes" 
  echo "  kittens            it loads some kittens" 
  echo "  phones             it loads some smartphones"
  echo "  energy             it loads some energy products"
  echo "  food               it loads some food products"
}

# eval_args
#   desc: evaluate the arguments provided to the script
#   params:
#     $1 - option to execute
#   return (status code/stdout):
#     0/ok message - the option is executed properly
#     1/ko message - display usage due to a syntax error
eval_args(){
  if [ $# -eq 1 ]
  then
    if [ "$1" == "default" ]
    then
      load_kittens
    elif [ "$1" == "kittens" ]
    then
      load_kittens
    elif [ "$1" == "clothes" ]
    then
      load_clothes
    elif [ "$1" == "phones" ]
    then
      load_phones
    elif [ "$1" == "energy" ]
    then
      load_energy_products
    elif [ "$1" == "food" ]
    then
      load_food_products
    else
      echo "Error: bad vertical"
      usage
      exit 1
    fi
  else
    echo "Error: bad number of arguments"
    usage
    exit 1
  fi
}

# Script's entry point
#
if ! [ -z "$*" ]
then
  eval_args $*
  exit 0
fi

usage
exit 1
