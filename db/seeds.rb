# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

drinks = Drink.create([
    {
      drinktype:'Champagne',
      name:'2004 Dom Perignon',
      location:'',
      description:'Named after Com Pierre Perignon, the monk and winemaker at the Benedictine Abbey of Hautvillers near Epernay, who is credited with having “invented” Champagne. Moet et Chandon’s Cuvée Dom Perignon is the most iconic of all Champagnes.  Always a vintage wine from 100% Grand Cru vineyards, pale gold in color with aromas of fresh almonds and white summer fruits, both caressing and precise on the palate.  It finishes with an expression of utmost elegance.'
    },
    {
      drinktype:'Champagne',
      name:'Krug Grande Cuvée',
      location:'',
      description:'Founded in Reims in 1843, the House of Krug is no managed by the fifth and sixth generations of the Krug family.  Rigorous selection and care go into every detail of the “multi-vintage” Grande Cuvée, which offers a magical combination of aromatic complexity, power and finesse with a long, lingering finish.  Krug is the ultimate experience in Champagne.'
    },
    {
      drinktype:'White Wine',
      name:'2008 Domaine William Fevre Montmains',
      location:'Chablis Premier Cru, France',
      description:'One of France’s most famous wine regions, Chablis produces the most classic white Burgundles from 100% Chardonnay grapes grown on a chalky soil that brings a floral raciness to the win.  The 98 hectare Premier Cru Montmains is well-situated on the left bank of the river Serein to produce wines of distinctive elegance and length of flavor, particularly for an excellent vintages like 2008.'
    },
    {
      drinktype:'White Wine',
      name:'2010 Trefethen Family Vineyards, Harmony Chardonnay',
      location:'Oak Knoll District, Napa, California',
      description:'This is an elegant Chardonnay with a vibrant flavor profile that ranges from tropical fruits to citrus and pear.  The wine is seamless and generous without being heavy or rich.  The acidity is refreshing and the finish fairly long. Quite different from many full bodies Napa Chardonnays, Trefethen always offers restrain rather than power.  Possessing layer complexity from sophisticated oak handling and maturation. A balanced, complete white win that will pair beautifully with many seafood dishes.'
    },
    {
      drinktype:'White Wine',
      name:'2012 Marimar Estate La Masia Done Miguel Vineyard Chardonnay',
      location:'Russian River Valley, California',
      description:'Russian River Valley is the home of some of the best Chardonnays and Pinot Noirs.  This elegant restrained Chardonnay was crafted under the watchful eye of founder Marimar Torres of the renowned Torres family in Spain.  The vineyard was planted in the mid 1980s and was named after the patriarch, Don Miguel Torres.  The crunchy apricot and nectarine flavors are subtle yet long in the finish.  The best part of this Chardonnay is its refreshing acidity, reflecting its origins in the southwest corner of the Russian River Valley.  Cool climate site, organic farming since 2003 and Torres’ deft touch in winemaking all contribute to the minerality and persistence in the finish.  Enjoy with numerous seafood options from stir-fried fish to shrimp, lobster or crab dishes.'
    },
    {
      drinktype:'Red Wine',
      name:'2007 Château Cos d’Estournel',
      location:'Saint-Estèphe, France',
      description:'With 65 hectares of superbly situated vineyard that adjoin those of Château Lafite-Rothschild in neighboring Pauillac, Cos d’Estournel is one of the only two estates in Saint-Estéphe to be classified “Second Growth” in 1855.  The wine is know for its intense Cabernet Sauvignon fruit blended with carefully selected Merlot that adds a touch of richness and roundness. 2007 was a vintage where the best win came only from the best ‘terroirs’ which provide optimum ripeness, witnessed in its deep colour, aromas of crushed summer berries, a succulent concentration of flavors on the palate and a firm, elegant finish.'
    },
    {
      drinktype:'Red Wine',
      name:'2008 Louis Latour Château Corton-Grancey Grand Cru',
      location:'Côte de Ceaune, France',
      description:'Louis LAtour, possessing 16 of the 120 hectares of Corton, is the largest owner of the only red Grand Cru in the Côte de Beaune. Carmine-ruby in color with a bouquet of summer red berry fruits, smooth and elegant on the palate with loverly lissome texture, elegance and length of flavour, Châeau Corton-Grancey is their flagship wine that is only produced in the best years.  This win is already showing maturity at five years old, with great promises for the future.'
    },
    {
      drinktype:'Red Wine',
      name:'2010 Penfolds RWT Shiraz',
      location:'Barossa Valley, Australia',
      description:'Penfolds best red wines are revered the world over, as is their Chief Winemaker Peter Gago - the company dates back to 1844. RWT stands for “red wine trial” and experiment to see what would happen when the wine from the old Barossa Shiraz was aged in French rancher than American oak barrels. Since the first release in 1977 RWT has become and iconic collectable of great reputation and quality.'
    },
    {
      drinktype:'Sweet White Wine',
      name:'2009 Château Filhot Sauternes',
      location:'',
      description:'With south-west facing vines surrounding one of the most impressive 18th century Bordeaux Châteaux, Filhot was classified a top Second Growth in 1855 and subsequent generations of the Comte de Vaucelles family have maintained the reputation.  Bright yellow-gold with floral aromas that contain white summer fruits, honey and a touch of citrus, the rich sweetness of the plate is lived by natural acidity to give beautiful length and balance.'
    },
    {
      drinktype:'Port',
      name:'Taylor’s Twenty-Year-Old Twany Port',
      location:'Douro, Portugal',
      description:'Matured in oak casks known as “pipes” for a minimum of 20 years, this is a blend of six grape varieties with are indigenous of the high, heat baked vineyards of Portugal’s Upper Douro Valley.  Over time the color turns from dense purple-red through carmine to orange-tawny, the fruit retaining its rich, rainy concentration and refining into a nutty, spicy, honeyed finish, a taste to linger over. Taylor’s was established in 1692 and remains the most famous name in Port.'
    },
    {
      drinktype:'Singapore Airlines’ Unique Creations',
      name:'Silver Kris Sling',
      location:'',
      description:'One of our special touches made with gun, orange liqueur, orange joice and pineapple juice, topped with Champagne'
    },
    {
      drinktype:'Singapore Airlines’ Unique Creations',
      name:'Jubilee Lining',
      location:'',
      description:'A zesty cocktail created with Cointreau, vodka, pineapple juice, topped with soda'
    },
    {
      drinktype:'Singapore Airlines’ Unique Creations',
      name:'Kris in Love',
      location:'',
      description:'A delightful concoction of white wine stirred up with 7-Up'
    },
    {
      drinktype:'Singapore Airlines’ Unique Creations',
      name:'Rumba',
      location:'',
      description:'An exotic thirst quencher of rum mixed with pineapple juice and 7-Up'
    },
    {
      drinktype:'Singapore Airlines’ Unique Creations',
      name:'Skyhigh',
      location:'',
      description:'An invigorating recipe featuring vodka, Cointreau and lemon, topped with 7-Up'
    },
    {
      drinktype:'Singapore Airlines’ Unique Creations',
      name:'Sunrise Breezer',
      location:'',
      description:'A refreshing blend of sake and bitter lemon'
    },
    {
      drinktype:'Singapore Airlines’ Unique Creations',
      name:'Alspritizer',
      location:'',
      description:'A sparkling mix of vodka shaken with apple juice and 7-Up'
    },
    {
      drinktype:'Singapore Airlines’ Unique Creations',
      name:'Sweetness in Darkness',
      location:'',
      description:'A unique mix of red wine and a splash of Coke'
    },
    {
      drinktype:'Singapore Airlines’ Unique Creations',
      name:'Solitaire Dreams',
      location:'',
      description:'A cool concoction of run, pineapple juice, Sling mix with ginger ale'
    },
    {
      drinktype:'Singapore Airlines’ Unique Creations',
      name:'Vodka Flush',
      location:'',
      description:'A tantalising drink of vodka, apple juice, and bitter lemon, topped with 7-Up'
    },
    {
      drinktype:'All-Time Favorites',
      name:'Dry Martini',
      location:'',
      description:'A classic mix of gin and dry vermouth stirred over ice, garnished with olive'
    },
    {
      drinktype:'All-Time Favorites',
      name:'Singapore Sling',
      location:'',
      description:'Synonymous with the Lion City since the early 1990s, this classic cocktail is made with dry gin, DOM Benedictine, orange liqueur, cherry brandy, Angostura bitters and Grenadine, mixed with lime and pineapple juice'
    }
    {
      drinktype:'All-Time Favorites',
      name:'Screwdriver',
      location:'',
      description:'A classic concoction of vodka and orange juice'
    },
    {
      drinktype:'Spirits',
      name:'Macallan 12-Year-Old Single Malt Whisky',
      location:'',
      description:'A time-honored distillation process and the traditional skills of master craftsmen create a satisfyingly complex single malt characterized by a full-bodied flavor with hints of dried fruit and spice.'
    },
    {
      drinktype:'Spirits',
      name:'Hennessy Congac XO',
      location:'',
      description:''
    },
    {
      drinktype:'Spirits',
      name:'Johnnie Walker Blue Label',
      location:'',
      description:''
    },
    {
      drinktype:'Spirits',
      name:'Jack Daniel’s Tennessee Whiskey',
      location:'',
      description:''
    },
    {
      drinktype:'Spirits',
      name:'Bombay Sapphire Gin',
      location:'',
      description:''
    },
    {
      drinktype:'Spirits',
      name:'Belvedere Vodka',
      location:'',
      description:''
    },
    {
      drinktype:'Spirits',
      name:'Bacardi Superior',
      location:'',
      description:''
    },
    {
      drinktype:'Spirits',
      name:'Momono Shizuku Sake',
      location:'',
      description:'A premium Junmai-Daiginjo sake from Kyoyo prefecture, named after a haiku by the famous poet Matsuo Basho'
    },
    {
      drinktype:'Liqueurs',
      name:'Grand Marnier',
      location:'',
      description:''
    },
    {
      drinktype:'Liqueurs',
      name:'Bailey’s Original Irish Cream',
      location:'',
      description:''
    }
  ])
