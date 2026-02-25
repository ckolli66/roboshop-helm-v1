install:
	git pull
	helm upgrade -i frontend . -f microservice-specific-valuesFiles/frontend.yml
	helm upgrade -i shipping . -f microservice-specific-valuesFiles/shipping.yml
	helm upgrade -i payment . -f microservice-specific-valuesFiles/payment.yml
	helm upgrade -i user . -f microservice-specific-valuesFiles/user.yml
	helm upgrade -i cart . -f microservice-specific-valuesFiles/cart.yml

uninstall:
	git pull
	helm uninstall frontend
	helm uninstall shipping
	helm uninstall payment
	helm uninstall user
	helm uninstall cart
