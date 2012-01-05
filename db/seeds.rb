# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sites = Site.create([
  {name: "Perris High School", abbreviation: 'PHS', latitude: 33.799419, longitude: -117.22389}, 
  {name: "Paloma Valley High School", abbreviation: 'PVHS', latitude: 33.664613, longitude: -117.190293}, 
  {name: "Perris Lake High School", abbreviation: 'PLHS', latitude: 33.773414, longitude: -117.232651}, 
  {name: "Pinacate Middle School", abbreviation: 'PMS', latitude: 33.767232, longitude: -117.23588}, 
  {name: "Heritage High School", abbreviation: 'HHS', latitude: 33.74115, longitude: -117.13828}, 
  {name: "The Academy", abbreviation: 'CDS', latitude: 33.778804, longitude: -117.2188}, 
  {name: "California Military Institute", abbreviation: 'CMI', latitude: 33.791259, longitude: -117.234383}, 
  {name: "District Office", abbreviation: 'DAC', latitude: 33.791259, longitude: -117.234383}, 
  {name: "Student Services Center", abbreviation: 'SSC', latitude: 33.791259, longitude: -117.234383},
  {name: "Choice 2000", abbreviation: 'C2K', latitude: 33.791259, longitude: -117.234383}
  ])
  
manufacturers = Manufacturer.create([
  {name: "Apple"},
  {name: "Dell"},
  {name: "Epson"},
  {name: "test"},
  {name: "Cisco"},
  {name: "HP"},
  {name: "Xerox"},
  {name: "Sony"},
  {name: "NEC"},
  {name: "InFocus"},
  {name: "Minolta"},
  {name: "Gateway"},
  {name: "Canon"},
  {name: "Toshiba"},
  {name: "eInstruction"},
  {name: "Brother"},
  {name: "Hitachi"},
  {name: "IBM"},
  {name: "Fujitsu"},
  {name: "AverVision"},
  {name: "Lexmark"},
  {name: "Temp"}
  ])
  
categories = Category.create([
  {name: "Workstation"},
  {name: "Laptop"},
  {name: "Tablet"},
  {name: "Printer"},
  {name: "Projector"},
  {name: "Monitor"},
  {name: "Server"},
  {name: "Networking"},
  {name: "Other"},
  {name: "Scanner"},
  {name: "Temp"}
  ])