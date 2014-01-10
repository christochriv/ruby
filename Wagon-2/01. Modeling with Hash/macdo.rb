# Hash
def test(nom_du_sandwich, nom_accompagnement, nom_boisson)
	food = { 
					"Cheese Burger" => 290,
					"Big Mac" => 300,
					"Mc Bacon" => 400,
					"Royal Cheese" => 130,
					"Filet-of-Fish" => 190,
					"French fries" => 130,
					"Potatoes" => 130,
					"Coca" => 160,
					"Sprite" => 170
					}
					
	puts food[nom_du_sandwich].to_s + " calories dans " + nom_du_sandwich
	puts food[nom_accompagnement].to_s + " calories dans " + nom_accompagnement
	puts food[nom_boisson].to_s + " calories dans " + nom_boisson
end


#Array
def calories(nom_du_sandwich, nom_accompagnement, nom_boisson)
	burger = [
		["Cheese Burger", 290],
		["Big Mac", 300],
		["Mc Bacon", 400],
		["Royal Cheese", 130],
		["Filet-o-Fish", 190]
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
test("Royal Cheese", "Potatoes", "Coca")