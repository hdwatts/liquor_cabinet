Amount.create!([
  {recipe_id: 4, ingredient_id: 12, quantity: "1", unit: ""},
  {recipe_id: 17, ingredient_id: 29, quantity: "1", unit: "oz"},
  {recipe_id: 4, ingredient_id: 5, quantity: "", unit: ""},
  {recipe_id: 4, ingredient_id: 15, quantity: "", unit: ""},
  {recipe_id: 5, ingredient_id: 16, quantity: "2", unit: "oz"},
  {recipe_id: 18, ingredient_id: 30, quantity: "1", unit: ""},
  {recipe_id: 5, ingredient_id: 3, quantity: "1", unit: "oz"},
  {recipe_id: 5, ingredient_id: 5, quantity: "", unit: ""},
  {recipe_id: 19, ingredient_id: 23, quantity: "2", unit: "oz"},
  {recipe_id: 1, ingredient_id: 1, quantity: "2", unit: "dashes"},
  {recipe_id: 20, ingredient_id: 22, quantity: "1", unit: "oz"},
  {recipe_id: 1, ingredient_id: 2, quantity: "1", unit: "ounce"},
  {recipe_id: 1, ingredient_id: 3, quantity: "2 1/2", unit: "ounces"},
  {recipe_id: 1, ingredient_id: 4, quantity: "1", unit: ""},
  {recipe_id: 2, ingredient_id: 5, quantity: "1/3", unit: "cup"},
  {recipe_id: 2, ingredient_id: 6, quantity: "3", unit: "cups"},
  {recipe_id: 2, ingredient_id: 7, quantity: "1 1/4", unit: "cups"},
  {recipe_id: 2, ingredient_id: 8, quantity: "1/2", unit: "cup"},
  {recipe_id: 6, ingredient_id: 17, quantity: "1/8", unit: "oz"},
  {recipe_id: 2, ingredient_id: 9, quantity: "1", unit: ""},
  {recipe_id: 3, ingredient_id: 10, quantity: "", unit: ""},
  {recipe_id: 21, ingredient_id: 31, quantity: "1", unit: "oz"},
  {recipe_id: 3, ingredient_id: 11, quantity: "1", unit: ""},
  {recipe_id: 6, ingredient_id: 18, quantity: "1", unit: "cup"},
  {recipe_id: 3, ingredient_id: 12, quantity: "1", unit: "tbs"},
  {recipe_id: 3, ingredient_id: 13, quantity: "1/4", unit: "cup"},
  {recipe_id: 3, ingredient_id: 5, quantity: "1", unit: "tsp"},
  {recipe_id: 6, ingredient_id: 19, quantity: "", unit: ""},
  {recipe_id: 3, ingredient_id: 6, quantity: "1/4", unit: "cup"},
  {recipe_id: 3, ingredient_id: 14, quantity: "1/4", unit: "cup"},
  {recipe_id: 7, ingredient_id: 10, quantity: "", unit: ""},
  {recipe_id: 8, ingredient_id: 20, quantity: "1", unit: ""},
  {recipe_id: 9, ingredient_id: 16, quantity: "1", unit: "oz"},
  {recipe_id: 9, ingredient_id: 21, quantity: "1", unit: ""},
  {recipe_id: 10, ingredient_id: 22, quantity: "1", unit: "cup"},
  {recipe_id: 11, ingredient_id: 23, quantity: "1", unit: "oz"},
  {recipe_id: 12, ingredient_id: 24, quantity: "1", unit: "oz"},
  {recipe_id: 13, ingredient_id: 4, quantity: "1", unit: ""},
  {recipe_id: 14, ingredient_id: 22, quantity: "1", unit: "oz"},
  {recipe_id: 14, ingredient_id: 25, quantity: "2", unit: "oz"},
  {recipe_id: 14, ingredient_id: 26, quantity: "1", unit: "oz"},
  {recipe_id: 15, ingredient_id: 27, quantity: "1", unit: ""},
  {recipe_id: 16, ingredient_id: 28, quantity: "1", unit: ""},
  {recipe_id: 16, ingredient_id: 3, quantity: "1", unit: "oz"},
  {recipe_id: 22, ingredient_id: 32, quantity: "", unit: ""},
  {recipe_id: nil, ingredient_id: 33, quantity: "", unit: ""},
  {recipe_id: nil, ingredient_id: 33, quantity: "", unit: ""},
  {recipe_id: nil, ingredient_id: 33, quantity: "", unit: ""},
  {recipe_id: nil, ingredient_id: 34, quantity: "", unit: ""},
  {recipe_id: nil, ingredient_id: 34, quantity: "", unit: ""},
  {recipe_id: nil, ingredient_id: 34, quantity: "", unit: ""},
  {recipe_id: nil, ingredient_id: 34, quantity: "", unit: ""},
  {recipe_id: nil, ingredient_id: 34, quantity: "", unit: ""},
  {recipe_id: nil, ingredient_id: 34, quantity: "", unit: ""},
  {recipe_id: nil, ingredient_id: 34, quantity: "", unit: ""},
  {recipe_id: 18, ingredient_id: 35, quantity: "1", unit: "shot"},
  {recipe_id: nil, ingredient_id: 36, quantity: "1 ", unit: "part"},
  {recipe_id: nil, ingredient_id: 37, quantity: "1", unit: "part"},
  {recipe_id: nil, ingredient_id: 36, quantity: "1 ", unit: "part"},
  {recipe_id: nil, ingredient_id: 37, quantity: "1", unit: "part"},
  {recipe_id: nil, ingredient_id: 36, quantity: "1 ", unit: "part"},
  {recipe_id: nil, ingredient_id: 37, quantity: "1", unit: "part"},
  {recipe_id: nil, ingredient_id: 38, quantity: "5", unit: "part"},
  {recipe_id: 16, ingredient_id: 36, quantity: "1 ", unit: "part"},
  {recipe_id: 17, ingredient_id: 37, quantity: "1", unit: "part"}
])
Favorite.create!([
  {user_id: 1, recipe_id: 14},
  {user_id: 3, recipe_id: 16}
])
Ingredient.create!([
  {name: "bitters"},
  {name: "vermouth"},
  {name: "bourbon"},
  {name: "cherry"},
  {name: "sugar"},
  {name: "tequila"},
  {name: "lemon"},
  {name: "triple Sec"},
  {name: "jala"},
  {name: "salt"},
  {name: "grapefruit"},
  {name: "lime"},
  {name: "grapefruit Juice"},
  {name: "soda"},
  {name: "jalapeño"},
  {name: "lemon Juice"},
  {name: "hemp"},
  {name: "water"},
  {name: "fire"},
  {name: "old People"},
  {name: "egg"},
  {name: "vodka"},
  {name: "whiskey"},
  {name: "negroni"},
  {name: "coffee Liquer"},
  {name: "cream"},
  {name: "olive"},
  {name: "mint"},
  {name: "rum"},
  {name: "sugar Cube"},
  {name: "tequila"},
  {name: "linus"},
  {name: "cup"},
  {name: "red wine"},
  {name: "coke"},
  {name: "poison"}
])
Recipe.create!([
  {user_id: 1, name: "Bloody Mary", description: "Neutral spirits, restorative juices, salts, spicy spices, capsaicins, and other volatile oils -- indicates that its origins lie in the shadowy world of the hangover cure, never to be listed on the more rarefied roster of nocturnal libations.", steps: "Squeeze the liquid out of the horseradish, then shake ingredients well with cracked ice in a chilled cocktail shaker, then strain into a Collins glass with 2 or 3 ice cubes in it; add a pinch of salt and a grind or two of fresh pepper, to taste. Garnish, if necessary, with a stalk of celery.", tools: nil, difficulty: 5, img_url: "http://esq.h-cdn.co/assets/cm/15/07/54dab41b0a606_-_bloodymary-004-de1.jpg", servings: 1},
  {user_id: 1, name: "Manhattan", description: "When properly built, the Manhattan is the only cocktail that can slug it out toe-to-toe with the martini. It's bold and fortifying, yet as relaxing as a deep massage.", steps: "Fill a short glass 2/3 full with ice. Add bitters, vermouth, and bourbon. Add cherry (and crush it against the side of the glass with a spoon). Stir.", tools: nil, difficulty: 2, img_url: "http://www.bonappetit.com/wp-content/uploads/2010/05/mare-manhattan-v.jpg", servings: 1},
  {user_id: 3, name: "Spicy Cucumber Margarita", description: "A refreshing summer treat with cooling cucumber flavors.", steps: "Bring sugar and 1/3 cup water to a boil in a saucepan, stirring to dissolve sugar. Let simple syrup cool. Combine simple syrup, tequila, lemon juice, lime juice, triple sec, and jalapeño in a pitcher. Chill for at least 30 minutes or up to 3 hours (taste every half-hour or so until spiced to your liking); remove jalapeño. Rub a lime wedge over half the rim of highball or rocks glasses; dip into kosher salt. Serve Margaritas over ice in prepared glasses; garnish with sliced cucumber and jalapeño.", tools: nil, difficulty: 4, img_url: "http://www.bonappetit.com/wp-content/uploads/2013/01/spicy-cucumber-margarita-940x600.jpg", servings: 1},
  {user_id: 2, name: "Paloma", description: "It turns out the Paloma, not the Margarita, is Mexico's most beloved cocktail.", steps: "Pour some kosher salt on a plate. Rub half of rim of a highball glass with grapefruit wedge; dip rim of glass in salt. Combine grapefruit juice, lime juice, and sugar in glass; stir until sugar is dissolved. Stir in mescal, add ice, and top off with club soda. Garnish with grapefruit wedge.", tools: nil, difficulty: 3, img_url: "http://www.bonappetit.com/wp-content/uploads/2012/12/paloma-940x600.jpg", servings: 1},
  {user_id: 3, name: "Classic Margarita", description: "A refreshing, classic treat.", steps: "Bring sugar and 1/3 cup water to a boil in a saucepan, stirring to dissolve sugar. Let simple syrup cool. Combine simple syrup, tequila, lemon juice, lime juice, triple sec, and jalapeño in a pitcher. Chill for at least 30 minutes or up to 3 hours (taste every half-hour or so until spiced to your liking); remove jalapeño. Rub a lime wedge over half the rim of highball or rocks glasses; dip into kosher salt. Serve Margaritas over ice in prepared glasses; garnish with sliced cucumber and jalapeño.", tools: nil, difficulty: 3, img_url: "http://drinkmicro.com/wp-content/uploads/2015/10/margarita.jpg", servings: 6},
  {user_id: 3, name: "Sidecar", description: "The Sidecar is often singled out as the only good cocktail to come out of the long national nightmare that was Prohibition.", steps: "Shake well with cracked ice, then strain into a chilled cocktail glass that has had its outside rim rubbed with lemon juice and dipped in sugar.", tools: nil, difficulty: 2, img_url: "http://esq.h-cdn.co/assets/15/18/640x640/square-1430427460-dmg-sidecar-cocktail-003.jpg", servings: 1},
  {user_id: 1, name: "Dirty Bongwater", description: "The premiere beverage of collegiate gentlemen.", steps: "Pour all ingredients in a glass with ice. Mix and enjoy.  Serve in a highball glass without garnish.", tools: nil, difficulty: 2, img_url: "http://www.drinksecrets.com/images/drinks/megahuge/xxl_pornstar.png", servings: 2},
  {user_id: 3, name: "Rob Roy", description: "A delicious old-time-y drink", steps: "Make it", tools: nil, difficulty: 3, img_url: "http://s7d9.scene7.com/is/image/SAQ/rob-roy-ec?$saq-fiche-cocktail$", servings: 2},
  {user_id: 4, name: "Ramos Gin Fizz", description: "This version of the classic New Orleans cocktail was created by Eben Freeman, bartender of Tailor restaurant in New York City.", steps: "In large cocktail shaker, combine gin, orange blossom water, egg white, half-and-half, lemon juice, lime juice, and simple syrup. Shake vigorously for 25 seconds. Add ice and shake for 30 seconds more. Strain mixture into 8-ounce glass. Slowly pour soda water down inside edge of shaker to loosen remaining froth. Gently ease soda water/froth mix onto drink and serve.", tools: nil, difficulty: 5, img_url: "http://theframedtable.com/wp-content/uploads/2012/02/V01gin_fizz0012-2.jpg", servings: 1},
  {user_id: 1, name: "Moscow Mule", description: "A Moscow Mule, also known as a Vodka buck, is a cocktail made with a high-quality vodka, a spicy ginger beer, and lime juice, garnished with a slice or wedge of lime.", steps: "Combine vodka and ginger beer in a copper mug or highball glass filled with ice. Add lime juice. Stir gently and garnish with a lime slice.", tools: nil, difficulty: 2, img_url: "http://www.bonappetit.com/wp-content/uploads/2012/12/paloma-940x600.jpg", servings: 1},
  {user_id: 3, name: "Highball", description: "Highball is the name for a family of mixed alcoholic drinks that are composed of an alcoholic base spirit and a larger proportion of a non-alcoholic mixer.", steps: "Pour whiskey in drink. Drink", tools: nil, difficulty: 2, img_url: "http://everybodylovescocktails.com/wp-content/uploads/2015/03/WhiskeyThumb.jpg", servings: 1},
  {user_id: 2, name: "Negroni", description: "The Negroni cocktail is made of one part gin, one part vermouth rosso, and one part Campari, garnished with orange peel. It is considered an apéritif.", steps: "Stir into glass over ice, garnish and serve.", tools: nil, difficulty: 1, img_url: "http://www.campari.com/media/50664/negroni.png", servings: 3},
  {user_id: 4, name: "Aviation", description: "The Aviation is a classic cocktail made with gin, maraschino liqueur, crème de violette, and lemon juice. Some recipes omit the crème de violette.", steps: "Add all ingredients into cocktail shaker filled with ice. Shake well and strain into cocktail glass. Garnish with a cherry.", tools: nil, difficulty: 3, img_url: "http://liquor.s3.amazonaws.com/wp-content/uploads/2013/08/aviation.jpg", servings: 3},
  {user_id: 4, name: "White Russian", description: "A White Russian is a cocktail made with vodka, coffee liqueur, and cream served with ice in an Old Fashioned glass.", steps: "Pour coffee liqueur and vodka into an Old Fashioned glass filled with ice. Float fresh cream on top and stir slowly.", tools: nil, difficulty: 1, img_url: "http://liquor.s3.amazonaws.com/wp-content/uploads/2015/05/Draaanks-White-Russian-e1432674367165.jpeg", servings: 1},
  {user_id: 4, name: "Dirty Martini", description: "A dash of olive brine brings a salty, savory note to the all-time classic.", steps: "Add all the ingredients to a mixing glass filled with ice.", tools: nil, difficulty: 3, img_url: "http://liquor.s3.amazonaws.com/wp-content/uploads/2011/04/Dirty-Martini-newest.jpg", servings: 1},
  {user_id: 2, name: "Mint Julep", description: "The mint julep is a mixed alcoholic drink, or cocktail, consisting primarily of bourbon, water, crushed or shaved ice, and fresh mint.", steps: "In a highball glass gently muddle the mint, sugar and water. Fill the glass with cracked ice, add Bourbon and stir well until the glass is well frosted. Garnish with a mint sprig.", tools: nil, difficulty: 2, img_url: "http://farm9.staticflickr.com/8402/8697556486_01916df3c5_o.jpg", servings: 1},
  {user_id: 3, name: "Mai Tai", description: "The Mai Tai is an alcoholic cocktail based on rum, Curaçao liqueur, and lime juice, associated with Polynesian-style settings.", steps: "Preparation: Shake all ingredients except the dark rum together in a mixer with ice. Strain into glass and float the dark rum onto the top. Garnish and serve with straw.\"", tools: nil, difficulty: 4, img_url: "http://www.tripbase.com/blog/wp-content/uploads/2010/08/Mai-Tai.jpg", servings: 1},
  {user_id: 4, name: "Old Fashioned", description: "The Old Fashioned is a cocktail made by muddling sugar with bitters, then adding alcohol, such as whiskey or brandy, and a twist of citrus rind.", steps: "Place sugar cube in old fashioned glass and saturate with bitters, add a dash of plain water. Muddle until dissolved. Fill the glass with ice cubes and add whiskey. Garnish with orange slice, and a cocktail cherry.", tools: nil, difficulty: 2, img_url: "http://liquor.s3.amazonaws.com/wp-content/uploads/2012/09/bourbon-old-fashioned.jpg", servings: 1},
  {user_id: 3, name: "Sazerac", description: "The Sazerac is a local New Orleans variation of a Cognac or whiskey cocktail, named for the Sazerac de Forge et Fils brand of Cognac brandy that served as its original main ingredient", steps: "Rinse a chilled old-fashioned glass with the absinthe, add crushed ice and set it aside. Stir the remaining ingredients over ice and set it aside. Discard the ice and any excess absinthe from the prepared glass, and strain the drink into the glass. Add the Lemon peel for garnish.", tools: nil, difficulty: 3, img_url: "http://liquor.s3.amazonaws.com/wp-content/uploads/2013/05/Maison-Premiere-Sazerac.jpg", servings: 1},
  {user_id: 2, name: "Cosmopolitan", description: "A cosmopolitan, or informally a cosmo, is a cocktail made with vodka, triple sec, cranberry juice, and freshly squeezed or sweetened lime juice.", steps: "Add all ingredients into cocktail shaker filled with ice. Shake well and double strain into large cocktail glass.", tools: nil, difficulty: 2, img_url: "http://www.bevdig.com/uploads/2/6/7/4/26740497/3472197_orig.jpg", servings: 1},
  {user_id: 3, name: "Long Island Iced Tea", description: "A Long Island Iced Tea is a type of alcoholic mixed drink typically made with tequila, vodka, light rum, triple sec, gin, and a splash of cola, which gives the drink the same amber hue as its namesake.", steps: "Add all ingredients into highball glass filled with ice. Stir gently. Garnish with lemon spiral. Serve with straw.", tools: nil, difficulty: 2, img_url: "http://liquor.s3.amazonaws.com/wp-content/uploads/2013/07/Long-Island-Iced-Tea.jpg", servings: 2},
  {user_id: 1, name: "Calimocho", description: "Red wine and coke. Sounds gross but trust me it is DEE-lishous! They drink it in Spain all the time!!", steps: "1. Pour red wine.\r\n2. Pour coke\r\n3. Enjoy!", tools: nil, difficulty: 1, img_url: "http://www.thebestspanishrecipes.com/wp-content/uploads/2014/07/calimocho.jpg", servings: 1}
])
RecipesTag.create!([
  {recipe_id: 1, tag_id: 1},
  {recipe_id: 1, tag_id: 2},
  {recipe_id: 1, tag_id: 3},
  {recipe_id: 2, tag_id: 4},
  {recipe_id: 2, tag_id: 5},
  {recipe_id: 2, tag_id: 6},
  {recipe_id: 2, tag_id: 7},
  {recipe_id: 3, tag_id: 4},
  {recipe_id: 3, tag_id: 8},
  {recipe_id: 3, tag_id: 9},
  {recipe_id: 4, tag_id: 7},
  {recipe_id: 4, tag_id: 10},
  {recipe_id: 5, tag_id: 11},
  {recipe_id: 6, tag_id: 12},
  {recipe_id: 6, tag_id: 13},
  {recipe_id: 7, tag_id: 5},
  {recipe_id: 8, tag_id: 14},
  {recipe_id: 8, tag_id: 15},
  {recipe_id: 9, tag_id: 16},
  {recipe_id: 10, tag_id: 17},
  {recipe_id: 10, tag_id: 18},
  {recipe_id: 11, tag_id: 19},
  {recipe_id: 11, tag_id: 20},
  {recipe_id: 12, tag_id: 21},
  {recipe_id: 12, tag_id: 22},
  {recipe_id: 13, tag_id: 2},
  {recipe_id: 13, tag_id: 23},
  {recipe_id: 14, tag_id: 24},
  {recipe_id: 14, tag_id: 25},
  {recipe_id: 14, tag_id: 26},
  {recipe_id: 15, tag_id: 27},
  {recipe_id: 15, tag_id: 28},
  {recipe_id: 16, tag_id: 3},
  {recipe_id: 16, tag_id: 29},
  {recipe_id: 17, tag_id: 30},
  {recipe_id: 17, tag_id: 31},
  {recipe_id: 17, tag_id: 32},
  {recipe_id: 18, tag_id: 33},
  {recipe_id: 18, tag_id: 34},
  {recipe_id: 19, tag_id: 19},
  {recipe_id: 20, tag_id: 35},
  {recipe_id: 21, tag_id: 8}
])
Review.create!([
  {user_id: 1, recipe_id: 8, comment: "Not to be confused with Roy Rogers!", img_url: nil, rating: nil},
  {user_id: 2, recipe_id: 20, comment: "Clearly the best recipe on here. Just sayin'.", img_url: nil, rating: nil},
  {user_id: 3, recipe_id: 21, comment: "You would Dean", img_url: nil, rating: nil}
])
Tag.create!([
  {name: "manhattan"},
  {name: "cherry"},
  {name: "bourbon"},
  {name: "citrus"},
  {name: "spicy"},
  {name: "cucumber"},
  {name: "margarita"},
  {name: "tequila"},
  {name: "paloma"},
  {name: "lime"},
  {name: "sidecar"},
  {name: "hemp"},
  {name: "water"},
  {name: "rob"},
  {name: "roy"},
  {name: "egg"},
  {name: "vodka"},
  {name: "mule"},
  {name: "whiskey"},
  {name: "lemon"},
  {name: "negroni"},
  {name: "vermouth"},
  {name: "aviation"},
  {name: "coffee"},
  {name: "white"},
  {name: "russian"},
  {name: "dirty"},
  {name: "martini"},
  {name: "mint"},
  {name: "mai"},
  {name: "tai"},
  {name: "rum"},
  {name: "fashioned"},
  {name: "sugar"},
  {name: "cosmo"},
  {name: "linus"},
  {name: "test"},
  {name: "wine"},
  {name: "coke"},
  {name: "yum"}
])
User.create!([
  {username: nil, birth_date: "2012-12-12", bio: "I love to drink!", img_url: nil, password_digest: "$2a$10$Y/.Jgm8P08o8uXhWpVLny.YylkHk5l2h2vDFM4kHQ7WQza2.VZozi", email: "liana@cocktails.com", first_name: "Liana", last_name: "Grobstein"},
  {username: nil, birth_date: "2012-12-12", bio: "I love to drink!", img_url: nil, password_digest: "$2a$10$e1qlijJx9WsY/6rogHY9VeEq9canZfOtw2j9Q9.6nLUKTtiE4hCJe", email: "dean@cocktails.com", first_name: "Dean", last_name: "Watts"},
  {username: nil, birth_date: "2012-12-12", bio: "I love to drink!", img_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTTFQDxzvS7GngqGB5qC4Ik2wNdagZWwSrsIYTkiVkIwJcpD2FPfaq-XIY", password_digest: "$2a$10$zj28KcdLR1kRyVDUza.Rvu5JJ0SrP5gbvuQdK7GZjHIAqb6HPlh1y", email: "eve@cocktails.com", first_name: "Eve", last_name: "Essex"},
  {username: nil, birth_date: "1988-07-28", bio: "I love to drink!", img_url: "http://www.clikklac.com/design_services/media/k2/items/cache/2a14beb1aee2d71c6fecb12f25c690f7_XL.jpg", password_digest: "$2a$10$wVE5r1miMRNh9gWgv8KI6.LdbbTLmwCBKq9BDd8f2iqfdNmOI.4Qe", email: "daniella@cocktails.com", first_name: "Daniella", last_name: "Corricelli"}
])
