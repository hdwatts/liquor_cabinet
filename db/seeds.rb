# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
daniella = User.create(first_name: "Daniella", last_name: "Corricelli", email: "daniella@cocktails.com", password: "asdf", birth_date: DateTime.new(2012,12,12), bio: "I love to drink!", img_url: 'http://www.clikklac.com/design_services/media/k2/items/cache/2a14beb1aee2d71c6fecb12f25c690f7_XL.jpg' )
liana = User.create(first_name: "Liana", last_name: "Grobstein", email: "liana@cocktails.com", password: "asdf", birth_date: DateTime.new(2012,12,12), bio: "I love to drink!")
dean = User.create(first_name: "Dean", last_name: "Watts", email: "dean@cocktails.com", password: "asdf", birth_date: DateTime.new(2012,12,12), bio: "I love to drink!")
eve = User.create(first_name: "Eve", last_name: "Essex", email: "eve@cocktails.com", password: "asdf", birth_date: DateTime.new(2012,12,12), bio: "I love to drink!", img_url: 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTTFQDxzvS7GngqGB5qC4Ik2wNdagZWwSrsIYTkiVkIwJcpD2FPfaq-XIY')

kosher_salt = Ingredient.create(name: "Kosher salt")
grapefruit = Ingredient.create(name: "Grapefruit")
grapefruit_juice = Ingredient.create(name: "Grapefruit juice")
lime_juice = Ingredient.create(name: "Lime juice")
sugar = Ingredient.create(name: "Sugar")
mescal = Ingredient.create(name: "Mescal")
tequila = Ingredient.create(name: "Tequila")
club_soda = Ingredient.create(name: "Club Soda")
cointreau = Ingredient.create(name: "Cointreau")
lemon_juice = Ingredient.create(name: "Lemon juice")
cognac = Ingredient.create(name: "Cognac")
angostura_bitters = Ingredient.create(name: "Angostura Bitters")
sweet_vermouth = Ingredient.create(name: "Sweet Vermouth")
bourbon = Ingredient.create(name: "Bourbon")
maraschino_cherry = Ingredient.create(name: "Maraschino cherry")
raspberry_liquor = Ingredient.create(name: "Raspberry liqueur")
blue_curacao = Ingredient.create(name: "Blue curacao liqueur")
amaretto = Ingredient.create(name: "Amaretto")
spiced_rum = Ingredient.create(name: "Spiced rum")
sweet_sour = Ingredient.create(name: "Sweet and sour mix")
vodka = Ingredient.create(name: "Vodka")
tomato_juice = Ingredient.create(name: "Tomato juice")
worcestershire = Ingredient.create(name: "Worcestershire sauce")
tabasco = Ingredient.create(name: "Tabasco sauce")
horseradish = Ingredient.create(name: "Horseradish")

manhattan = Recipe.create(name: "Manhattan", difficulty: 5, description: "When properly built, the Manhattan is the only cocktail that can slug it out toe-to-toe with the martini. It's bold and fortifying, yet as relaxing as a deep massage.", servings: 1, steps: "Fill a short glass 2/3 full with ice. Add bitters, vermouth, and bourbon. Add cherry (and crush it against the side of the glass with a spoon). Stir.", img_url: "http://www.bonappetit.com/wp-content/uploads/2010/05/mare-manhattan-v.jpg", user_id: 1)
cucumber_margarita = Recipe.create(name: "Spicy Cucumber Margarita", difficulty: 4, description: "A refreshing summer treat with cooling cucumber flavors.", servings: 12, steps: "Bring sugar and 1/3 cup water to a boil in a saucepan, stirring to dissolve sugar. Let simple syrup cool. Combine simple syrup, tequila, lemon juice, lime juice, triple sec, and jalapeño in a pitcher. Chill for at least 30 minutes or up to 3 hours (taste every half-hour or so until spiced to your liking); remove jalapeño. Rub a lime wedge over half the rim of highball or rocks glasses; dip into kosher salt. Serve Margaritas over ice in prepared glasses; garnish with sliced cucumber and jalapeño.", img_url: "http://www.bonappetit.com/wp-content/uploads/2013/01/spicy-cucumber-margarita-940x600.jpg", user_id: 2)
classic_margarita = Recipe.create(name: "Classic Margarita", difficulty: 3, description: "A refreshing, classic treat.", servings: 8, steps: "Bring sugar and 1/3 cup water to a boil in a saucepan, stirring to dissolve sugar. Let simple syrup cool. Combine simple syrup, tequila, lemon juice, lime juice, triple sec, and jalapeño in a pitcher. Chill for at least 30 minutes or up to 3 hours (taste every half-hour or so until spiced to your liking); remove jalapeño. Rub a lime wedge over half the rim of highball or rocks glasses; dip into kosher salt. Serve Margaritas over ice in prepared glasses; garnish with sliced cucumber and jalapeño.", img_url: "http://www.bonappetit.com/wp-content/uploads/2013/01/spicy-cucumber-margarita-940x600.jpg", user_id: 2)
paloma = Recipe.create(name: "Paloma", difficulty: 3, description: "It turns out the Paloma, not the Margarita, is Mexico's most beloved cocktail.", servings: 1, steps: "Pour some kosher salt on a plate. Rub half of rim of a highball glass with grapefruit wedge; dip rim of glass in salt. Combine grapefruit juice, lime juice, and sugar in glass; stir until sugar is dissolved. Stir in mescal, add ice, and top off with club soda. Garnish with grapefruit wedge.", img_url: "http://www.bonappetit.com/wp-content/uploads/2012/12/paloma-940x600.jpg", user_id: 3)
sidecar = Recipe.create(name: "Sidecar", difficulty: 2, tools: "shaker, strainer", description: "The Sidecar is often singled out as the only good cocktail to come out of the long national nightmare that was Prohibition.", servings: 1, steps: "Shake well with cracked ice, then strain into a chilled cocktail glass that has had its outside rim rubbed with lemon juice and dipped in sugar.", img_url: "http://esq.h-cdn.co/assets/15/18/640x640/square-1430427460-dmg-sidecar-cocktail-003.jpg", user_id: 4)
dirty_bongwater = Recipe.create(name: "Dirty Bongwater", difficulty: 2, description: "The premiere beverage of collegiate gentlemen.", servings: 1, steps: "Pour all ingredients in a glass with ice. Mix and enjoy.  Serve in a highball glass without garnish.", img_url: "http://www.ireadculture.com/wp-content/uploads/images/70/4170/4170.jpg", user_id: 3)
bloody_mary = Recipe.create(name: "Bloody Mary", tools: "shaker, strainer", difficulty: 5, description: "Neutral spirits, restorative juices, salts, capsaicins, and other volatile oils -- indicates that its origins lie in the shadowy world of the hangover cure, never to be listed on the more rarefied roster of nocturnal libations.", servings: 1, steps: "Squeeze the liquid out of the horseradish, then shake ingredients well with cracked ice in a chilled cocktail shaker, then strain into a Collins glass with 2 or 3 ice cubes in it; add a pinch of salt and a grind or two of fresh pepper, to taste. Garnish, if necessary, with a stalk of celery.", img_url: "http://esq.h-cdn.co/assets/cm/15/07/54dab41b0a606_-_bloodymary-004-de1.jpg", user_id: 2)

citrus = Tag.create(name: "Citrus")
classic = Tag.create(name: "Classic")
savory = Tag.create(name: "Savory")
spicy = Tag.create(name: "Spicy")

comment1 = Review.create(user_id: 1, recipe_id: 2, comment: "So great, a big improvement on my regular jam.")
comment2 = Review.create(user_id: 2, recipe_id: 3, comment: "This could really use some lemon, will add it next time for sure.")
comment3 = Review.create(user_id: 3, recipe_id: 4, comment: "This take on the classic drink has converted me for good.")
comment4 = Review.create(user_id: 4, recipe_id: 6, comment: "Like your recipe, would be great if you tried to tackle a margarita as well!")

dean.favorites << Favorite.create(recipe: dirty_bongwater);
dean.favorites << Favorite.create(recipe: sidecar);
daniella.favorites << Favorite.create(recipe: bloody_mary);
daniella.favorites << Favorite.create(recipe: manhattan);
daniella.favorites << Favorite.create(recipe: sidecar);
liana.favorites << Favorite.create(recipe: bloody_mary);
liana.favorites << Favorite.create(recipe: cucumber_margarita);
