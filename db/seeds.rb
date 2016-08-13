# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Business.destroy_all

biz_sample_data = [
  {name: 'Charles Smith Wine Jet City', location: '1136 S Albro Pl, Seattle, WA 98108', theme: 0},
  {name: 'Elson Cellars', location: '2960 4th Ave S, Seattle, WA 98134', theme: 0},
  {name: 'Stomani Cellars', location: '1403 Dexter Ave N, Seattle, WA 98109', theme: 0},
  {name: 'Hand Of God Wines', location: '308 9th Ave N, Seattle, WA 98109', theme: 0},
  {name: 'The Tasting Room', location: 'Pike Place Market, 1924 Post Alley, Seattle, WA 98101', theme: 0},
  {name: 'The Barrel Thief', location: '3417 Evanston Ave N #102, Seattle, WA 98103', theme: 2},
  {name: 'Holy Mountain Brewing Company', location: '1421 Elliott Ave W, Seattle, WA 98119', theme: 1},
  {name: 'Standard Brewing', location: '2504 S Jackson St, Seattle, WA 98144', theme: 1},
  {name: 'Schooner Exact Brewing Company', location: '3901 1st Avenue South, Seattle, WA 98134', theme: 1},
  {name: 'Two Beers Brewing Co.', location: '4700 Ohio Ave S, Seattle, WA 98134', theme: 1},
  {name: 'Reuben\'s Brews', location: '5010 14th Ave NW, Seattle, WA 98107', theme: 1},
  {name: 'Stoup Brewing', location: '1108 NW 52nd St, Seattle, WA 98107', theme: 1},
  {name: 'Outlander Brewery and Pub', location: '225 N 36th St, Seattle, WA 98103', theme: 1},
  {name: 'Big Time Brewery & Alehouse', location: '4133 University Way NE, Seattle, WA 98105', theme: 1},
  {name: 'Naked City Brewery & Taphouse', location: '8564 Greenwood Ave N, Seattle, WA 98103', theme: 1},
  {name: 'Slate Coffee Roasters', location: '602 2nd Ave, Seattle, WA 98104', theme: 3},
  {name: 'Elm Coffee Roasters', location: '240 2nd Ave S #103, Seattle, WA, 98104', theme: 3},
  {name: 'Victrola Coffee Roasters', location: '310 E Pike St, Seattle, WA, 98122', theme: 3},
  {name: 'Lighthouse Roasters', location: '400 N 43rd St, Seattle, WA, 98103', theme: 3},
  {name: 'Westland Distillery', location: '2931 1st Ave S, Seattle, WA, 98134', theme: 2},
  {name: 'OOLA Distillery', location: '1314 E Union St, Seattle, WA, 98122', theme: 2}
]

biz_sample_data.each do |business_data|
  Business.create!(business_data)
end
