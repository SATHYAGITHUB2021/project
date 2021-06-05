all: frontend mongodb
help:		##print help message
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
frontend:	##Install frontend component
	@sh components/frontend.sh

mongodb:	##Install Mongodb component
	@sh components/mongodb.sh

catalogue:	##Install Catalogue component
	@sh components/catalogue.sh

redis:		##Install Redis component
	@sh components/redis.sh

user:		##Install User component
	@sh components/user.sh

cart:		##Install Cart component
	@sh components/cart.sh

mysql:		##Install Mysql component
	@sh components/mysql.sh

shipping:	##Install Shipping component
	@sh components/shipping.sh

payment:	##Install Payment component
	@sh components/payment.sh

rabbitmq:
	@sh components/rabbitmq.sh
