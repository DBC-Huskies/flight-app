# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

biz_sample_data = [
  {name: 'Charles Smith Wine Jet City', location: '1136 S Albro Pl, Seattle, WA 98108', average_rating: 4.0, theme: 0, google_place_id: 'ChIJVym2i-xBkFQRikp5JxnbiuE'},
  {name: 'Elsom Cellars', location: '2960 4th Ave S, Seattle, WA 98134', average_rating: 5.0, theme: 0, google_place_id: 'ChIJb8KVi8kNkFQR_e7zWgSAneM'},
  {name: 'Stomani Cellars', location: '1403 Dexter Ave N, Seattle, WA 98109', average_rating: 2.0, theme: 0, google_place_id:'ChIJ4xKG6T0VkFQR-sIc8E4f_dQ'},
  {name: 'Hand Of God Wines', location: '308 9th Ave N, Seattle, WA 98109', average_rating: 4.0, theme: 0, google_place_id: 'ChIJrceiwjcVkFQRgLvQSohGx7o'},
  {name: 'The Tasting Room', location: 'Pike Place Market, 1924 Post Alley, Seattle, WA 98101', average_rating: 3.0, theme: 0, google_place_id: 'ChIJQVHlzbJqkFQR3KSsOoYgmr4'},
  {name: 'The Barrel Thief', location: '3417 Evanston Ave N #102, Seattle, WA 98103', average_rating: 4.0, theme: 2, google_place_id: 'ChIJpVLqQQcVkFQRZEsgerL_wUY'},
  {name: 'Holy Mountain Brewing Company', location: '1421 Elliott Ave W, Seattle, WA 98119', average_rating: 4.0, theme: 1, google_place_id: 'ChIJ2XA_mWUVkFQRC19Fj-xTIBk'},
  {name: 'Standard Brewing', location: '2504 S Jackson St, Seattle, WA 98144', average_rating: 2.0, theme: 1, google_place_id: 'ChIJAakSB-lqkFQRj4Pg2QvmOHI'},
  {name: 'Schooner Exact Brewing Company', location: '3901 1st Avenue South, Seattle, WA 98134', average_rating: 5.0, theme: 1, google_place_id: 'ChIJiYImO81BkFQRmqfK8di-xts'},
  {name: 'Two Beers Brewing Co.', location: '4700 Ohio Ave S, Seattle, WA 98134', average_rating: 3.0, theme: 1, google_place_id: 'ChIJ1S3yzMlBkFQRiqqAffDnfI8'},
  {name: 'Reuben\'s Brews', location: '5010 14th Ave NW, Seattle, WA 98107', average_rating: 2.0, theme: 1, google_place_id: 'ChIJP1kCxckVkFQRq_Hc5aXF15A'},
  {name: 'Stoup Brewing', location: '1108 NW 52nd St, Seattle, WA 98107', average_rating: 5.0, theme: 1, google_place_id: 'ChIJUxUrELYVkFQR5zLwZuglTLQ'},
  {name: 'Outlander Brewery and Pub', location: '225 N 36th St, Seattle, WA 98103', average_rating: 3.0, theme: 1, google_place_id: 'ChIJNc0YsakVkFQR0ZWpPVRsxGM'},
  {name: 'Big Time Brewery & Alehouse', location: '4133 University Way NE, Seattle, WA 98105', average_rating: 2.0, theme: 1, google_place_id: 'ChIJKaC2QvMUkFQRWVvn71SBmuY'},
  {name: 'Naked City Brewery & Taphouse', location: '8564 Greenwood Ave N, Seattle, WA 98103', average_rating: 4.0, theme: 1, google_place_id: 'ChIJacmILCAUkFQRdc6zDu0K4wM'},
  {name: 'Slate Coffee Roasters', location: '602 2nd Ave, Seattle, WA 98104', average_rating: 4.0, theme: 3, google_place_id: 'ChIJwTxsg7pqkFQRiZGAJuyQsic'},
  {name: 'Elm Coffee Roasters', location: '240 2nd Ave S #103, Seattle, WA, 98104', average_rating: 3.0, theme: 3, google_place_id: 'ChIJv4Ih4LpqkFQRsEFZjeKx2tY'},
  {name: 'Victrola Coffee Roasters', location: '310 E Pike St, Seattle, WA, 98122', average_rating: 5.0, theme: 3, google_place_id: 'ChIJ7bdU9rJqkFQRqx0_701azUU'},
  {name: 'Lighthouse Roasters', location: '400 N 43rd St, Seattle, WA, 98103', average_rating: 2.0, theme: 3, google_place_id: 'ChIJwd-h4qwVkFQRgqm5OODEBQw'},
  {name: 'Westland Distillery', location: '2931 1st Ave S, Seattle, WA, 98134', average_rating: 2.0, theme: 2, google_place_id: 'ChIJ8WRf7i5AkFQRfe6bKjobuOg'},
  {name: 'OOLA Distillery', location: '1314 E Union St, Seattle, WA, 98122', average_rating: 5.0, theme: 2, google_place_id: 'ChIJ_7lmbs5qkFQR_JtyDWDCBy4'},
  {name: '21 Acres', location: '13701 NE 171st Street, Woodinville, WA 98072', average_rating: 5.0, theme: 0, google_place_id: 'ChIJ34iHbywMkFQR0H2syINxKt8'},
  {name: 'Adams Bench Winery', location: '14360 160th Pl NE, Woodinville, WA 98072', average_rating: 3.0, theme: 0, google_place_id: 'ChIJQyPIAlEMkFQRvzrV1hVs7LE'},
  {name: 'Alexandria Nicole Cellars', location: '14810 NE 145th St, Woodinville, WA 98072', average_rating: 4.0, theme: 0, google_place_id: 'ChIJicuRUrMNkFQRMDo0eD9XM1w'},
  {name: 'áMaurice Cellars', location: '14463 Woodinville-Redmond Rd NE, Woodinville, WA 98072', average_rating: 2.0, theme: 0, google_place_id: 'ChIJh_NZtYYSkFQRKVXSoEwzRCk'},
  {name: 'áMaurice Cellars', location: '14463 Woodinville-Redmond Rd NE, Woodinville, WA 98072', average_rating: 2.0, theme: 0, google_place_id: 'ChIJh_NZtYYSkFQRKVXSoEwzRCk'},
  {name: 'Domanico Cellars', location: '825 NW 49th St, Seattle, WA 98107', average_rating: 3.0, theme: 0},
  {name: 'Laurelhurst Cellars Winery', location: '5608 7th Ave S, Seattle, WA 98108', average_rating: 3.0, theme: 0},
  {name: 'Viscon Cellars', location: '5910 California Ave SW, Seattle, WA 98136', average_rating: 3.0, theme: 0},
  {name: 'J Bookwalter Tasting Studio', location: '14810 NE 145th St, Woodinville, WA 98072', average_rating: 3.0, theme: 0},
  {name: 'Rolling Bay Winery', location: '10334 Beach Crest, Bainbridge Island, WA 98110', average_rating: 3.0, theme: 0},
  {name: 'Fletcher Bay Winery', location: '9415 Coppertop Loop NE, Bainbridge Island, WA 98110', average_rating: 3.0, theme: 0},
  {name: 'Eleven Winery', location: '287 Winslow Way E, Bainbridge Island, WA 98110', average_rating: 3.0, theme: 0},
  {name: 'Island Vintners', location: '450 Winslow Way E, Bainbridge Island, WA 98110', average_rating: 3.0, theme: 0},
  {name: 'Aspenwood Cellars Winery', location: '18642 142nd Ave NE, Woodinville, WA 98072', average_rating: 3.0, theme: 0},
  {name: 'Waving Tree Winery', location: '11901 124th AVE NE, Kirkland, WA 98034', average_rating: 3.0, theme: 0},
  {name: 'Matthews Winery', location: '16116 140th Pl NE, Woodinville, WA 98072', average_rating: 3.0, theme: 0},
  {name: 'Eye of the Needle Winery', location: '19501 144th Ave NE, Woodinville, WA 98072', average_rating: 3.0, theme: 0},
  {name: 'Northwest Cellars', location: '11909 124th Ave NE, Kirkland, WA 98034', average_rating: 3.0, theme: 0},
  {name: 'Eagle Harbor Wine Company', location: '278 Winslow Way E, Bainbridge Island, WA 98110', average_rating: 3.0, theme: 0},
  {name: 'Patterson Cellars', location: '14505 148th Ave NE, Woodinville, WA 98072', average_rating: 3.0, theme: 0},
  {name: 'Perennial Vintners', location: '8840 NE Lovgreen Rd, Bainbridge Island, WA 98110', average_rating: 3.0, theme: 0},
  {name: 'Mark Ryan Winery', location: '14475 Woodinville-redmond Rd NE, Woodinville, WA 98072', average_rating: 3.0, theme: 0},
  {name: 'Kestrel Cellar and Tasting Room', location: '19501 144th Ave NE, Woodinville, WA 98072', average_rating: 3.0, theme: 0},
  {name: 'Martedi Winery', location: '16110 Woodinville-Redmond Rd NE, Woodinville, WA 98072', average_rating: 3.0, theme: 0},
  {name: 'Darby Winery', location: '14450 Woodinville Redmond Rd NE, Woodinville, WA 98072', average_rating: 3.0, theme: 0},
  {name: 'Sparkman Cellars', location: '19501 144 Ave. NE, Woodinville, WA 98072', average_rating: 3.0, theme: 0},
  {name: 'Palouse Winery', location: '12431 Vashon Hwy SW, Vashon, WA 98070', average_rating: 3.0, theme: 0},
  {name: 'Arista Wine Cellars', location: '320 5th Ave S, Edmonds, WA 98020', average_rating: 3.0, theme: 0},
  {name: 'Red Sky Winery', location: '19495 144th Ave NE, Woodinville, WA 98072', average_rating: 3.0, theme: 0},
  {name: 'Efeste', location: '19730 144th Ave NE, Woodinville, WA 98072', average_rating: 3.0, theme: 0},
  {name: 'Vashon Winery', location: '10317 SW 156th St, Vashon, WA 98070', average_rating: 3.0, theme: 0},
  {name: 'Finn Hill Winery', location: '8218 NE 115th Way, Kirkland, WA 98034', average_rating: 3.0, theme: 0},
  {name: 'Almquist Family Vintners', location: '198 Nickerson St, Seattle, WA 98109', average_rating: 3.0, theme: 0},
  {name: 'Barrique', location: '1762 Airport Way S, Seattle, WA 98134', average_rating: 3.0, theme: 0},
  {name: 'Bartholomew Winery', location: '3100 Airport Way S, Seattle, WA 98134', average_rating: 3.0, theme: 0},
  {name: 'Cloudlift Cellars', location: '312 S Lucile St, Seattle, WA 98108', average_rating: 3.0, theme: 0},
  {name: 'Eight Bells Winery', location: '6213-B Roosevelt Way NE, Seattle, WA 98115', average_rating: 3.0, theme: 0},
  {name: 'Falling Rain Cellars', location: '825 NW 49th Street, Seattle, WA 98107', average_rating: 3.0, theme: 0},
  {name: 'Kerloo Cellars', location: '3911 1st Ave South, Seattle, WA 98134', average_rating: 3.0, theme: 0},
  {name: 'Nota Bene Cellars', location: '9320 15th Ave S Unit CC, Seattle, WA 98108', average_rating: 3.0, theme: 0},
  {name: 'O·S Winery', location: '5319 4th Avenue South, Seattle, WA 98108', average_rating: 3.0, theme: 0},
  {name: 'Riley Sexton Vintners', location: '1403 Dexter Avenue North', average_rating: 3.0, theme: 0},
  {name: 'Robert Ramsay Cellars', location: '1629 Queen Anne Ave N 102, Seattle, WA 98109', average_rating: 3.0, theme: 0},
  {name: 'Structure Cellars', location: '3849 1st Ave So suite D , Seattle, WA 98134 ', average_rating: 3.0, theme: 0},
  {name: 'The Estates Wine Room', location: '307 Occidental Ave S, Seattle, WA 98104', average_rating: 3.0, theme: 0},
  {name: 'Two Brothers Winery', location: '3902 California Ave SW, Seattle, WA 98116', average_rating: 3.0, theme: 0},
  {name: 'Ward Johnson Winery', location: '1445 Elliott Ave W, Seattle, WA 98119', average_rating: 3.0, theme: 0},
  {name: 'Welcome Road Winery', location: '4415 SW Stevens St, Seattle, WA 98116', average_rating: 3.0, theme: 0},
  {name: 'Capri Cellars', location: '88 Front St S, Issaquah, WA 98027', average_rating: 3.0, theme: 0},
  {name: 'Fivash Cellars', location: '602 234th Ave SE, Sammamish, WA 98074', average_rating: 3.0, theme: 0},
  {name: 'Piccola Cellars', location: '112 W 2nd St, North Bend, WA 98045', average_rating: 3.0, theme: 0}
]

biz_sample_data.each do |business_data|
  business = Business.new(business_data)
  business.retrieve_google_place_id
  business.save
end
