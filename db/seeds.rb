
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

code_arr = ['qwer', 'wert', 'erty', 'rtyu', 'tyui', 'yuio', 'uiop', 'asdf', 'sdfg', 'dfgh', 'fghj', 'ghjk', 'hjkl', 'zxcv', 'xcvb', 'cvbn', 'vbnm']

# country_list.each do |name, population|
#   Country.create( name: name, population: population )
# end

code_arr.each do |code|
  User.create( code: code )
end
