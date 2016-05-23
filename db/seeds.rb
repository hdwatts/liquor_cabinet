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
triple = Ingredient.create(name: "Triple Sec")
jala = Ingredient.create(name: "Jalapeño")

citrus = Tag.create(name: "Citrus")
classic = Tag.create(name: "Classic")
savory = Tag.create(name: "Savory")
spicy = Tag.create(name: "Spicy")

manhattan = Recipe.create(name: "Manhattan", difficulty: 5, description: "When properly built, the Manhattan is the only cocktail that can slug it out toe-to-toe with the martini. It's bold and fortifying, yet as relaxing as a deep massage.", servings: 1, steps: "Fill a short glass 2/3 full with ice. Add bitters, vermouth, and bourbon. Add cherry (and crush it against the side of the glass with a spoon). Stir.", img_url: "http://www.bonappetit.com/wp-content/uploads/2010/05/mare-manhattan-v.jpg", user_id: 1)
cucumber_margarita = Recipe.create(name: "Spicy Cucumber Margarita", difficulty: 4, description: "A refreshing summer treat with cooling cucumber flavors.", servings: 12, steps: "Bring sugar and 1/3 cup water to a boil in a saucepan, stirring to dissolve sugar. Let simple syrup cool. Combine simple syrup, tequila, lemon juice, lime juice, triple sec, and jalapeño in a pitcher. Chill for at least 30 minutes or up to 3 hours (taste every half-hour or so until spiced to your liking); remove jalapeño. Rub a lime wedge over half the rim of highball or rocks glasses; dip into kosher salt. Serve Margaritas over ice in prepared glasses; garnish with sliced cucumber and jalapeño.", img_url: "http://www.bonappetit.com/wp-content/uploads/2013/01/spicy-cucumber-margarita-940x600.jpg", user_id: 2)
classic_margarita = Recipe.create(name: "Classic Margarita", difficulty: 3, description: "A refreshing, classic treat.", servings: 8, steps: "Bring sugar and 1/3 cup water to a boil in a saucepan, stirring to dissolve sugar. Let simple syrup cool. Combine simple syrup, tequila, lemon juice, lime juice, triple sec, and jalapeño in a pitcher. Chill for at least 30 minutes or up to 3 hours (taste every half-hour or so until spiced to your liking); remove jalapeño. Rub a lime wedge over half the rim of highball or rocks glasses; dip into kosher salt. Serve Margaritas over ice in prepared glasses; garnish with sliced cucumber and jalapeño.", img_url: "http://drinkmicro.com/wp-content/uploads/2015/10/margarita.jpg", user_id: 2)
paloma = Recipe.create(name: "Paloma", difficulty: 3, description: "It turns out the Paloma, not the Margarita, is Mexico's most beloved cocktail.", servings: 1, steps: "Pour some kosher salt on a plate. Rub half of rim of a highball glass with grapefruit wedge; dip rim of glass in salt. Combine grapefruit juice, lime juice, and sugar in glass; stir until sugar is dissolved. Stir in mescal, add ice, and top off with club soda. Garnish with grapefruit wedge.", img_url: "http://www.bonappetit.com/wp-content/uploads/2012/12/paloma-940x600.jpg", user_id: 3)
sidecar = Recipe.create(name: "Sidecar", difficulty: 2, tools: "shaker, strainer", description: "The Sidecar is often singled out as the only good cocktail to come out of the long national nightmare that was Prohibition.", servings: 1, steps: "Shake well with cracked ice, then strain into a chilled cocktail glass that has had its outside rim rubbed with lemon juice and dipped in sugar.", img_url: "http://esq.h-cdn.co/assets/15/18/640x640/square-1430427460-dmg-sidecar-cocktail-003.jpg", user_id: 4)
dirty_bongwater = Recipe.create(name: "Dirty Bongwater", difficulty: 2, description: "The premiere beverage of collegiate gentlemen.", servings: 1, steps: "Pour all ingredients in a glass with ice. Mix and enjoy.  Serve in a highball glass without garnish.", img_url: "http://www.ireadculture.com/wp-content/uploads/images/70/4170/4170.jpg", user_id: 3)
bloody_mary = Recipe.create(name: "Bloody Mary", tools: "shaker, strainer", difficulty: 5, description: "Neutral spirits, restorative juices, salts, spicy spices, capsaicins, and other volatile oils -- indicates that its origins lie in the shadowy world of the hangover cure, never to be listed on the more rarefied roster of nocturnal libations.", servings: 1, steps: "Squeeze the liquid out of the horseradish, then shake ingredients well with cracked ice in a chilled cocktail shaker, then strain into a Collins glass with 2 or 3 ice cubes in it; add a pinch of salt and a grind or two of fresh pepper, to taste. Garnish, if necessary, with a stalk of celery.", img_url: "http://esq.h-cdn.co/assets/cm/15/07/54dab41b0a606_-_bloodymary-004-de1.jpg", user_id: 2)
rob_roy = Recipe.create(name: "Rob Roy", tools: "shaker, strainer", difficulty: 3, description: "A delicious old-time-y drink", img_url: "http://s7d9.scene7.com/is/image/SAQ/rob-roy-ec?$saq-fiche-cocktail$", user_id: 1)
ramos_gin_fizz = Recipe.create(name: "Ramos Gin Fizz", tools: "shaker, strainer", difficulty: 5, description: "This version of the classic New Orleans cocktail was created by Eben Freeman, bartender of Tailor restaurant in New York City.", steps: "In large cocktail shaker, combine gin, orange blossom water, egg white, half-and-half, lemon juice, lime juice, and simple syrup. Shake vigorously for 25 seconds. Add ice and shake for 30 seconds more. Strain mixture into 8-ounce glass. Slowly pour soda water down inside edge of shaker to loosen remaining froth. Gently ease soda water/froth mix onto drink and serve.", img_url: "http://theframedtable.com/wp-content/uploads/2012/02/V01gin_fizz0012-2.jpg", user_id: 1)
moscow_mule = Recipe.create(name: "Moscow Mule", difficulty: 2, description: "A Moscow Mule, also known as a Vodka buck, is a cocktail made with a high-quality vodka, a spicy ginger beer, and lime juice, garnished with a slice or wedge of lime.", servings: 1, steps: "Combine vodka and ginger beer in a copper mug or highball glass filled with ice. Add lime juice. Stir gently and garnish with a lime slice.", img_url: "http://www.bonappetit.com/wp-content/uploads/2012/12/paloma-940x600.jpg", user_id: 4)
high_ball = Recipe.create(name: "Highball", difficulty: 2, description: "Highball is the name for a family of mixed alcoholic drinks that are composed of an alcoholic base spirit and a larger proportion of a non-alcoholic mixer.", steps: "Pour the whiskey into a chilled highball glass over ice. Add ginger ale to fill; then garnish with lemon peel", img_url: "http://everybodylovescocktails.com/wp-content/uploads/2015/03/WhiskeyThumb.jpg", user_id: 3)
negroni = Recipe.create(name: "Negroni", difficulty: 1, description: "The Negroni cocktail is made of one part gin, one part vermouth rosso, and one part Campari, garnished with orange peel. It is considered an apéritif.", steps: "Stir into glass over ice, garnish and serve.", img_url: "http://www.campari.com/media/50664/negroni.png", user_id: 2)
aviation = Recipe.create(name: "Aviation", difficulty: 3, description: "The Aviation is a classic cocktail made with gin, maraschino liqueur, crème de violette, and lemon juice. Some recipes omit the crème de violette.", steps: " Add all ingredients into cocktail shaker filled with ice. Shake well and strain into cocktail glass. Garnish with a cherry.", img_url: "http://liquor.s3.amazonaws.com/wp-content/uploads/2013/08/aviation.jpg", user_id: 4)
white_russian = Recipe.create(name: "White Russian", difficulty: 1, description: "A White Russian is a cocktail made with vodka, coffee liqueur, and cream served with ice in an Old Fashioned glass.", steps: "Pour coffee liqueur and vodka into an Old Fashioned glass filled with ice. Float fresh cream on top and stir slowly.", img_url: "http://liquor.s3.amazonaws.com/wp-content/uploads/2015/05/Draaanks-White-Russian-e1432674367165.jpeg", user_id: 2)
dirty_martini = Recipe.create(name: "Dirty Martini", difficulty: 3, description: "A dash of olive brine brings a salty, savory note to the all-time classic.", steps: "Add all the ingredients to a mixing glass filled with ice.", img_url: "http://liquor.s3.amazonaws.com/wp-content/uploads/2011/04/Dirty-Martini-newest.jpg", user_id: 1)
mint_julep = Recipe.create(name: "Mint Julep", difficulty: 2, description: "The mint julep is a mixed alcoholic drink, or cocktail, consisting primarily of bourbon, water, crushed or shaved ice, and fresh mint.", steps: "In a highball glass gently muddle the mint, sugar and water. Fill the glass with cracked ice, add Bourbon and stir well until the glass is well frosted. Garnish with a mint sprig.", img_url: "http://farm9.staticflickr.com/8402/8697556486_01916df3c5_o.jpg", user_id: 3)
mai_tai = Recipe.create(name: "Mai Tai", difficulty: 1, description: "The Mai Tai is an alcoholic cocktail based on rum, Curaçao liqueur, and lime juice, associated with Polynesian-style settings.", steps: "Preparation: Shake all ingredients except the dark rum together in a mixer with ice. Strain into glass and float the dark rum onto the top. Garnish and serve with straw.", img_url: "http://www.tripbase.com/blog/wp-content/uploads/2010/08/Mai-Tai.jpg", user_id: 2)
old_fashioned = Recipe.create(name: "Old Fashioned", difficulty: 2, description: "The Old Fashioned is a cocktail made by muddling sugar with bitters, then adding alcohol, such as whiskey or brandy, and a twist of citrus rind.", steps: "Place sugar cube in old fashioned glass and saturate with bitters, add a dash of plain water. Muddle until dissolved. Fill the glass with ice cubes and add whiskey. Garnish with orange slice, and a cocktail cherry.", img_url: "http://liquor.s3.amazonaws.com/wp-content/uploads/2012/09/bourbon-old-fashioned.jpg", user_id: 4)
sazerac = Recipe.create(name: "Sazerac", difficulty: 3, description: "The Sazerac is a local New Orleans variation of a Cognac or whiskey cocktail, named for the Sazerac de Forge et Fils brand of Cognac brandy that served as its original main ingredient", steps: "Rinse a chilled old-fashioned glass with the absinthe, add crushed ice and set it aside. Stir the remaining ingredients over ice and set it aside. Discard the ice and any excess absinthe from the prepared glass, and strain the drink into the glass. Add the Lemon peel for garnish.", img_url: "http://liquor.s3.amazonaws.com/wp-content/uploads/2013/05/Maison-Premiere-Sazerac.jpg", user_id: 2)
cosmopolitan = Recipe.create(name: "Cosmopolitan", difficulty: 2, description: "A cosmopolitan, or informally a cosmo, is a cocktail made with vodka, triple sec, cranberry juice, and freshly squeezed or sweetened lime juice.", steps: "Add all ingredients into cocktail shaker filled with ice. Shake well and double strain into large cocktail glass.", img_url: "http://www.bevdig.com/uploads/2/6/7/4/26740497/3472197_orig.jpg", user_id: 2)
long_island_iced_tea = Recipe.create(name: "Long Island Iced Tea", difficulty: 1, description: "A Long Island Iced Tea is a type of alcoholic mixed drink typically made with tequila, vodka, light rum, triple sec, gin, and a splash of cola, which gives the drink the same amber hue as its namesake.", steps: "Add all ingredients into highball glass filled with ice. Stir gently. Garnish with lemon spiral. Serve with straw.", img_url: "http://liquor.s3.amazonaws.com/wp-content/uploads/2013/07/Long-Island-Iced-Tea.jpg", user_id: 3)


manhattan_bitters = Amount.create(recipe_id: 1, ingredient_id: 12, quantity: "2", unit: "dashes")
manhattan_vermouth = Amount.create(recipe_id: 1, ingredient_id: 13, quantity: "1", unit: "ounce")
manhattan_bourbon = Amount.create(recipe_id: 1, ingredient_id: 14, quantity: "2 1/2", unit: "ounces")
manhattan_cherry = Amount.create(recipe_id: 1, ingredient_id: 15, quantity: "1")

cucumber_sugar = Amount.create(recipe_id: 2, ingredient_id: 5, quantity: "1/3", unit: "cup")
cucumber_tequila = Amount.create(recipe_id: 2, ingredient_id: 7, quantity: "3", unit: "cups")
cucumber_lemon = Amount.create(recipe_id: 2, ingredient_id: 10, quantity: "1 1/4", unit: "cups")
cucumber_lime = Amount.create(recipe_id: 2, ingredient_id: 4, quantity: "1 1/4", unit: "cups")
cucumber_triple = Amount.create(recipe_id: 2, ingredient_id: 26, quantity: "1/2", unit: "cup")
cucumber_jala = Amount.create(recipe_id: 2, ingredient_id: 27, quantity: "1")
cucumber_citrus = RecipesTag.create(recipe_id:2, tag_id: 1)
cucumber_spicy = RecipesTag.create(recipe_id:2, tag_id: 4)

paloma_salt = Amount.create(recipe_id: 3, ingredient_id: 1)
paloma_grapef = Amount.create(recipe_id: 3, ingredient_id: 2, quantity: "1")
paloma_grapefr = Amount.create(recipe_id: 3, ingredient_id: 3, quantity: "1/4", unit: "cup")
paloma_lime = Amount.create(recipe_id: 3, ingredient_id: 4, quantity: "1", unit: "tbs")
paloma_sugar = Amount.create(recipe_id: 3, ingredient_id: 5, quantity: "1", unit: "tsp")
paloma_tequila = Amount.create(recipe_id: 3, ingredient_id: 6, quantity: "1/4", unit: "cup")
paloma_soda = Amount.create(recipe_id: 3, ingredient_id: 8, quantity: "1/4", unit: "cup")
paloma_citrus = RecipesTag.create(recipe_id: 3, tag_id: 1)


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

manhattan.ingredients << spiced_rum
manhattan.ingredients << tabasco
manhattan.save
