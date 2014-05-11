# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Country.create([{name: 'India'},{name: 'United States of America'}])
Country.find_by_name('India').cities.create([{name: 'Delhi NCR'},
                                             {name: 'Bangalore'},
                                             {name: 'Kolkata'},
                                             {name: 'Jaipur'},
                                             {name: 'Lucknow'},
                                             {name: 'Bhopal'},
                                             {name: 'Mumbai'}])

Country.find_by_name('United States of America').cities.create([{ name: 'Chicago'},
                                                                {name: 'San Fransisco'},
                                                                {name: 'New York'}])