title = 'Recettes de kiffeur'

chapters = [
             ['Materiel pour cuisiner', 1],
             ['Produits de saison', 8],
             ['Sauces et soupes', 19],
             ['Viandes et Gibiers', 38],
             ['Poissons, coquillages et crustaces', 157]
           ]
	
	puts title.center(100)

	puts ""

chapters.each do |a, b|
        print "Chapter #{chapters.index([a, b]) + 1} : #{a}".ljust(10)
        puts "Page #{b}".rjust(90)
							end


