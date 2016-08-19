distilleries_collection_wa = [
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
  {name: 'Four Leaf Spirits', location: '12280 NE Woodinville Dr, Woodinville, WA 98072
', theme: 2},
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
  {name: 'Tucker Distillery', location: '5451 NW Newbery Hill Rd Silverdale, WA 98383', theme: 2}
]

distilleries_collection_wa.each do |business_data|
  Business.find_or_create_by(distillery_data)
end

distilleries_collection_or = [
  {name: 'Spiritopia Liqueurs', location: '720 NE Granger Ave, Corvallis, OR 97330', theme: 2},
  {name: 'Martin Ryan Distilling Co', location: '2304 NW Savier St, Portland, OR 97210', theme: 2}
]

distilleries_collection_mt = [
  {name: 'Headframe Spirits', location: '21 S Montana St, Butte, MT 59701', theme: 2}
]