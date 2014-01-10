def calories(nom_du_sandwich, nom_accompagnement, nom_boisson)
	burger = [
		["Cheese Burger", 290],
		["Big Mac", 300],
		["Mc Bacon", 400],
		["Royal Cheese", 130]
					]

	side = [
		["French fries", 130],
		["Potatoes", 130]
				]

	beverage = [ 
		["Coca", 160],
		["Sprite", 170]
						]

	burger.each {|a| puts a[0].to_s + ": " + a[1].to_s + " calories" if a[0] == nom_du_sandwich}

	side.each {|a| puts a[0].to_s + ": " + a[1].to_s + " calories" if a[0] == nom_accompagnement}

	beverage.each {|a| puts a[0].to_s + ": " + a[1].to_s + " calories" if a[0] == nom_boisson}

end

# Test Array
calories("Royal Cheese", "Potatoes", "Coca")