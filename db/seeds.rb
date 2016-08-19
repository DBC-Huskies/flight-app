# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

coffee_biz_data = [
  {name: 'Slate Coffee Roasters', location: '602 2nd Ave, Seattle, WA 98104', theme: 3},
  {name: 'Elm Coffee Roasters', location: '240 2nd Ave S #103, Seattle, WA, 98104', theme: 3},
  {name: 'Victrola Coffee Roasters', location: '310 E Pike St, Seattle, WA, 98122', theme: 3},
  {name: 'Lighthouse Roasters', location: '400 N 43rd St, Seattle, WA, 98103', theme: 3},
  {name: 'Caffe Lusso Coffee Roasters', location: '17725 NE 65th St A150, Redmond, WA 98052', theme: 3},
  {name: 'Caffe Luca Coffee Roasters', location: '885 Industry Dr, Seattle, WA 98188', theme: 3},
  {name: 'Middle Fork Roasters', location: '420 S 96th St #6, Seattle, WA 98108', theme: 3},
  {name: 'Storyville Coffee Roasting Studio Coffee Shop & Tasting Room', location: '9459 Coppertop Loop NE, Bainbridge Island, WA 98110', theme: 3},
  {name: 'Fonte Coffee Roaster', location: '5501 6th Ave S, Seattle, WA 98108', theme: 3},
  {name: 'Zoka Coffee Roasters and Tea Company', location: '129 Central Way, Kirkland, WA 98033', theme: 3},
  {name: 'Bluebeard Coffee Roasters', location: '2201 6th Ave, Tacoma, WA 98403', theme: 3},
  {name: 'Black Swan Coffee Roasting', location: '8510 Cedarhome Dr, Stanwood, WA 98292', theme: 3},
  {name: 'Camano Island Coffee Roasters', location: '848 N Sunrise Blvd, Camano Island, WA 98282', theme: 3},
  {name: 'RainShadow Coffee Roasting Company', location: '157 W Cedar St, Sequim, WA 98382', theme: 3},
  {name: 'Honeymoon Bay Coffee Roasters', location: '1100 SW Bowmer St A101, Oak Harbor, WA 98277', theme: 3},
  {name: 'Red Door Coffee Roasters', location: '7425 Hardeson Rd, Everett, WA 98203', theme: 3},
  {name: 'Majestic Mountain Coffee Roasters', location: '11229 NE State Hwy 104, Kingston, WA 98346', theme: 3},
  {name: 'Broadcast Coffee Roasters', location: '1918 E Yesler Way, Seattle, WA 98122', theme: 3},
  {name: 'Stumptown Coffee Roasters', location: '1115 12th Ave, Seattle, WA 98122', theme: 3},
  {name: 'Seven Coffee Roasters Market & Cafe', location: '2007 NE Ravenna Blvd, Seattle, WA 98105', theme: 3},
  {name: 'Zoka Coffee Roaster & Tea Company', location: '2200 N 56th St, Seattle, WA 98103', theme: 3},
  {name: 'True North Coffee Roasters', location: '1406 NW 53rd St, Seattle, WA 98107', theme: 3},
  {name: 'Ventoux Roasters and Hart Coffee', location: '3404 NE 55th St, Seattle, WA 98105', theme: 3},
  {name: 'Seattle Coffee Works', location: '107 Pike St, Seattle, WA 98101', theme: 3},
  {name: 'QED Coffee', location: '1418 31st Ave S, Seattle, WA 98144', theme: 3},
  {name: 'Fonté Cafe & Wine Bar', location: '1321 1st Ave, Seattle, WA 98101', theme: 3},
  {name: 'Caffe Vita', location: '5028 Wilson Ave S, Seattle, WA 98118', theme: 3},
  {name: 'Tin Umbrella Coffee', location: '5600 Rainier Ave S, Seattle, WA 98118', theme: 3}
]

beer_biz_data = [
  {name: 'Holy Mountain Brewing Company', location: '1421 Elliott Ave W, Seattle, WA 98119', theme: 1},
  {name: 'Standard Brewing', location: '2504 S Jackson St, Seattle, WA 98144', theme: 1},
  {name: 'Schooner Exact Brewing Company', location: '3901 1st Avenue South, Seattle, WA 98134', theme: 1},
  {name: 'Two Beers Brewing Co.', location: '4700 Ohio Ave S, Seattle, WA 98134', theme: 1},
  {name: 'Reuben\'s Brews', location: '5010 14th Ave NW, Seattle, WA 98107', theme: 1},
  {name: 'Stoup Brewing', location: '1108 NW 52nd St, Seattle, WA 98107', theme: 1},
  {name: 'Outlander Brewery and Pub', location: '225 N 36th St, Seattle, WA 98103', theme: 1},
  {name: 'Big Time Brewery & Alehouse', location: '4133 University Way NE, Seattle, WA 98105', theme: 1},
  {name: 'Naked City Brewery & Taphouse', location: '8564 Greenwood Ave N, Seattle, WA 98103', theme: 1},
  {name: 'Snoqualmie Brewery and Taproom', location: '8032 Falls Ave SE, Snoqualmie, WA 98065', theme: 1},
  {name: 'Airways Brewing Company - Brewery & Tap Room', location: '8611 S 212th St, Kent, WA 98031', theme: 1},
  {name: 'Elliott Bay Brewhouse & Pub', location: '255 SW 152nd St, Burien, WA 98166', theme: 1},
  {name: 'Sound Brewery Tasting Room', location: '19815 Viking Ave NW, Poulsbo, WA 98370', theme: 1},
  {name: 'Port Townsend Brewing Co', location: '330 10th St, Port Townsend, WA 98368', theme: 1},
  {name: 'Diamond Knot Brewery & Alehouse', location: '621 Front St, Mukilteo, WA 98275', theme: 1},
  {name: 'Black Raven Brewing Company', location: '14679 NE 95th St, Redmond, WA 98052', theme: 1},
  {name: 'Elliott Bay Brewery', location: '12537 Lake City Way NE, Seattle, WA 98125', theme: 1},
  {name: 'Hi-Fi Brewing', location: '14950 NE 95th St, Redmond, WA 98052', theme: 1},
  {name: 'Bushnell Craft Brewing Company', location: '8461 164th Ave NE, Redmond, WA 98052', theme: 1},
  {name: 'Mac & Jack\'s Brewery', location: '17825 NE 65th St, Redmond, WA 98052', theme: 1},
  {name: 'Chainline Brewing Company', location: '503 6th St S, Kirkland, WA 98033', theme: 1},
  {name: 'Bellevue Brewing Company', location: '1820 130th Ave NE #2, Bellevue, WA 98005', theme: 1},
  {name: 'Geaux Brewing', location: '12031 Northup Way #203, Bellevue, WA 98005', theme: 1},
  {name: 'Resonate Brewery + Pizzeria', location: '5606 119th Ave SE, Bellevue, WA 98006', theme: 1},
  {name: 'Four Generals Brewing', location: '229 Wells Ave S, Renton, WA 98057', theme: 1},
  {name: 'Herbert B. Friendly Brewing', location: '527 Wells Ave S, Renton, WA 98057', theme: 1},
  {name: 'Odin Brewing Company', location: '402 Baker Blvd, Tukwila, WA 98188', theme: 1},
  {name: 'Big Al Brewing', location: '9832 14th Ave SW, Seattle, WA 98106', theme: 1},
  {name: 'Tin Dog Brewing', location: '309 S Cloverdale St Suite A2, Seattle, WA 98108', theme: 1},
  {name: 'Lowercase Brewing - Brewery', location: '8103 8th Ave S, Seattle, WA 98108', theme: 1},
  {name: 'Counterbalance Brewing Company', location: '503B S Michigan St, Seattle, WA 98108', theme: 1},
  {name: 'Elliott Bay Brewery & Pub', location: '4720 California Ave SW, Seattle, WA 98116', theme: 1},
  {name: 'Machine House Brewery', location: '5840 Airport Way S #121, Seattle, WA 98108', theme: 1},
  {name: 'Spinnaker Bay Brewing', location: '5718 Rainier Ave S, Seattle, WA 98118', theme: 1},
  {name: 'Flying Lion Brewing', location: '5041 Rainier Ave S, Seattle, WA 98118', theme: 1},
  {name: 'Georgetown Brewing Co', location: '5200 Denver Ave S, Seattle, WA 98108', theme: 1},
  {name: 'Optimism Brewing Company', location: '1158 Broadway, Seattle, WA 98122', theme: 1},
  {name: 'Outer Planet Craft Brewing', location: '1812 12th Ave #100, Seattle, WA 98122', theme: 1},
  {name: 'Cloudburst Brewing', location: '2116 Western Ave, Seattle, WA 98121', theme: 1},
  {name: 'Old Stove Brewing', location: '1525 1st Ave #16, Seattle, WA 98101', theme: 1},
  {name: 'Rock Bottom Restaurant & Brewery', location: 'Rainier Square, 1333 5th Ave, Seattle, WA 98101', theme: 1},
  {name: 'McMenamins Six Arms', location: '300 E Pike St, Seattle, WA 98122', theme: 1},
  {name: 'Urban Family Brewing Co.', location: '4441 26th Ave W, Seattle, WA 98199', theme: 1},
  {name: 'Fremont Brewing Company', location: '1050 N 34th St, Seattle, WA 98103', theme: 1},
  {name: 'Outlander Brewery and Pub', location: '225 N 36th St, Seattle, WA 98103', theme: 1},
  {name: 'Hale\'s Ales Brewery & Pub', location: '4301 Leary Way NW, Seattle, WA 98107', theme: 1},
  {name: 'Rooftop Brewing Company', location: '1220 W Nickerson St, Seattle, WA 98119', theme: 1},
  {name: 'Peddler Brewing Company', location: '1514 NW Leary Way, Seattle, WA 98107', theme: 1},
  {name: 'NW Peaks Brewery', location: '4818 17th Ave NW, Seattle, WA 98107', theme: 1},
  {name: 'Bad Jimmy\'s Brewing Co.', location: 'B, 4358 Leary Way NW, Seattle, WA 98107', theme: 1},
  {name: 'Populuxe Brewing', location: '826B NW 49th St, Seattle, WA 98107', theme: 1},
  {name: 'Reuben\'s Brews', location: '5010 14th Ave NW, Seattle, WA 98107', theme: 1},
  {name: 'Cedar River Brewing Company', location: '7410 Greenwood Ave N #B, Seattle, WA 98103', theme: 1},
  {name: 'Flying Bike Cooperative Brewery', location: '8570 Greenwood Ave N, Seattle, WA 98103', theme: 1},
  {name: 'Ravenna Brewing Co', location: '5408 26th Ave NE, Seattle, WA 98105', theme: 1},
  {name: 'Floating Bridge Brewing', location: '722 NE 45th St, Seattle, WA 98105', theme: 1},
  {name: 'Hellbent Brewing Company', location: '13035 Lake City Way NE, Seattle, WA 98125', theme: 1},
  {name: 'Lantern Brewing', location: '938 N 95th St, Seattle, WA 98103', theme: 1},
  {name: '192 Brewing Company', location: '7324 NE 175th St, Kenmore, WA 98028', theme: 1},
  {name: 'Sumerian Brewing Company', location: '15510 Woodinville-Redmond Rd NE E110, Woodinville, WA 98072', theme: 1},
  {name: 'Redhook Brewery Woodinville', location: '14300 NE 145th St, Woodinville, WA 98072', theme: 1},
  {name: 'Dirty Bucket Brewing Co.', location: '19151 144th Ave NE, Woodinville, WA 98072', theme: 1},
  {name: 'Fish Brewing', location: '14701 148th Ave NE, Woodinville, WA 98072', theme: 1},
  {name: 'Triplehorn Brewing Co', location: '19510 144th Ave NE #6, Woodinville, WA 98072', theme: 1},
  {name: 'Diamond Knot Brewpub @ MLT', location: '5602 232nd St SW, Mountlake Terrace, WA 98043', theme: 1},
  {name: 'American Brewing Company Inc.', location: '180 W Dayton St, Edmonds, WA 98020', theme: 1},
  {name: 'Big E Ales', location: '5030 208th St SW, Lynnwood, WA 98036', theme: 1},
  {name: 'Salish Sea Brewing Co.', location: '518 Dayton St #104, Edmonds, WA 98020', theme: 1}
]

distillery_biz_data = [
  {name: 'Westland Distillery', location: '2931 1st Avenue South Seattle, WA 98134', theme: 2},
  {name: '2Bar Spirits', location: '2960 4th Ave S #106 Seattle, WA 98134', theme: 2},
  {name: '3 Howls Distillery', location: '426 S Massachusetts St Seattle, WA 98134', theme: 2},
  {name: 'Letterpress Distilling', location: '85 S Atlantic St #110 Seattle, WA 98134', theme: 2},
  {name: 'Copperworks Tasting Room & Distillery', location: '1250 Alaskan Way Seattle, WA 98101', theme: 2},
  {name: 'OOLA Distillery', location: '1314 E Union St Seattle, WA 98122', theme: 2},
  {name: 'Sun Liquor Distillery', location: '514 E Pike St Seattle, WA 98122', theme: 2},
  {name: 'Batch 206', location: '1417 Elliott Ave W Seattle, WA 98119', theme: 2},
  {name: 'Sound Spirits', location: '1630 15th Ave W Seattle, WA 98119', theme: 2},
  {name: 'Old Ballard Liquor Co.', location: '4421 Shilshole Ave NW Seattle, WA 98107', theme: 2},
  {name: 'Captive Spirits', location: '1518 NW 52nd St Seattle, WA 98107', theme: 2},
  {name: 'Woodinville Whiskey Co.', location: '16110 Woodinville Redmond Rd NE Woodinville, WA 98072', theme: 2},
  {name: 'J.P. Trodden', location: '18646 142nd Ave NE Woodinville, WA 98072', theme: 2},
  {name: 'Pacific Distillery', location: '18808 142nd Ave NE #4B Woodinville, WA 98072', theme: 2},
  {name: 'Wildwood Spirits & Co.', location: '19116 Beardslee Blvd Ste 102 Bothell, WA 98011', theme: 2},
  {name: 'Parliament Distillery', location: '14209 29th St E, Sumner, WA 98390', theme: 2},
  {name: 'Scratch Distillery', location: '190 Sunset Ave, Edmonds, WA 98020', theme: 2},
  {name: 'The Barrel Thief', location: '3417 Evanston Ave N #102, Seattle, WA 98103', theme: 2},
  {name: 'Bad Dog Distillery', location: '19109 63rd Ave NE Suite 1A, Arlington, WA 98223', theme: 2},
  {name: 'BelleWood Distilling', location: '6140 Guide Meridian #3, Lynden, WA 98264', theme: 2},
  {name: 'Blackfish Spirits Distillery', location: '420 37th St NW, Auburn, WA 98001', theme: 2},
  {name: 'Black Heron Spirits', location: '8011 Keene Rd, West Richland, WA 99353', theme: 2},
  {name: 'BroVo Spirits', location: '18808 142nd Ave NE, Woodinville, WA 98072', theme: 2},
  {name: 'Cadée Distillery', location: '8912 WA-525, Clinton, WA 98236', theme: 2},
  {name: 'Chambers Bay Distillery', location: '2013 70th Ave W, University Place, WA 98466', theme: 2},
  {name: 'Chuckanut Bay Distillery', location: ' 1115 Railroad Avenue, Bellingham, WA 98225', theme: 2},
  {name: 'Four Leaf Spirits', location: '12280 NE Woodinville Dr, Woodinville, WA 98072', theme: 2},
  {name: 'Fremont Mischief', location: '132 N Canal St, Seattle, WA 98103', theme: 2},
  {name: 'Heritage Distilling Company ', location: '3207 57th St Ct NW, Gig Harbor, WA 98335', theme: 2},
  {name: 'Salish Sea Organic Liqueurs', location: '2641 Willamette Dr NE Ste D Lacey, WA 98516', theme: 2},
  {name: 'Sandstone Distillery', location: '842 Wright Rd SE, Tenino, WA 98589', theme: 2},
  {name: 'Seattle Distilling', location: '19429 Vashon Hwy SW, Vashon, WA 98070', theme: 2},
  {name: 'Sidetrack Distillery', location: 'Lazy River Farm 27010 78th Ave S Kent, WA 98032', theme: 2},
  {name: 'Skip Rock Distillers', location: '104 Ave C, Snohomish, WA 98290', theme: 2},
  {name: 'Temple Distilling Company', location: '19231 36th Ave W, Lynnwood, WA 98036', theme: 2},
  {name: 'Valley Shine Distillery', location: '320 S 1st St, Mt Vernon, WA 98273', theme: 2},
  {name: 'Whidbey Island Distillery', location: '3466 Craw Rd, Langley, WA 98260', theme: 2},
  {name: 'Whiskey Gap Distillery', location: '213 W Main Ave, Ritzville, WA 99169', theme: 2},
  {name: 'Wildwood Spirits Co.', location: '19116 Beardslee Blvd #102, Bothell, WA 98011', theme: 2},
  {name: 'Wishkah River Distillery', location: '2210 Port Industrial Rd, Aberdeen, WA 98520', theme: 2},
  {name: 'Schnapsleiche Spirits', location: '19151 144th Ave NE Woodinville, WA 98072', theme: 2},
  {name: 'SoDo Spirits Distillery', location: '2228 Occidental Ave S Seattle, WA 98134', theme: 2},
  {name: 'Bainbridge Organic Distillers', location: '9727 Coppertop Loop NE Bainbridge Island, WA 98110', theme: 2},
  {name: 'Tucker Distillery', location: '5451 NW Newbery Hill Rd Silverdale, WA 98383', theme: 2},
  {name: 'Headframe Spirits', location: '21 S Montana St, Butte, MT 59701', theme: 2},
  {name: 'Spiritopia Liqueurs', location: '720 NE Granger Ave, Corvallis, OR 97330', theme: 2},
  {name: 'Martin Ryan Distilling Co', location: '2304 NW Savier St, Portland, OR 97210', theme: 2}
]

biz_sample_data.each do |business_data|
  Business.find_or_create_by(business_data)
end
