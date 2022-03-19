# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.delete_all
Feature.delete_all
Technology.delete_all
TechnologyGroup.delete_all
TechnologyType.delete_all

puts "\n Creating TechnologyTypes"

frontend = TechnologyType.create!(
  name: "Frontend"
)

backend = TechnologyType.create!(
  name: "Backend"
)

dev_ops = TechnologyType.create!(
  name: "DevOps"
)

creative = TechnologyType.create!(
  name: "Creative"
)

other = TechnologyType.create!(
  name: "Other"
)

puts "\n Creating Technologies"

ruby = Technology.create!(
  name: "Ruby",
  icon: "icons/ruby.png",
  icon_high_res: "icons/ruby_high_res.png",
  description: "I've used ruby before...",
  technology_type: backend
)

html = Technology.create!(
  name: "HTML5",
  icon: "icons/html5.png",
  icon_high_res: "icons/html_high_res.png",
  technology_type: frontend
)

css = Technology.create!(
  name: "CSS3",
  icon: "icons/css3.png",
  icon_high_res: "icons/css_high_res.png",
  technology_type: frontend
)

javascript = Technology.create!(
  name: "Javascript",
  icon: "icons/javascript.png",
  icon_high_res: "icons/javascript_high_res.png",
  technology_type: frontend
)

django = Technology.create!(
  name: "Django",
  icon: "icons/django.png",
  icon_high_res: "icons/django_high_res.png",
  technology_type: backend
)

adobe_ai = Technology.create!(
  name: "Adobe",
  icon: "icons/ai.png",
  icon_high_res: "icons/adobe_ai_high_res.png",
  technology_type: creative
)

blender = Technology.create!(
  name: "blender",
  icon: "icons/blender.png",
  icon_high_res: "icons/blender_high_res.png",
  technology_type: creative
)

mongodb = Technology.create!(
  name: "mongodb",
  icon: "icons/mongodb.png",
  icon_high_res: "icons/mongodb_high_res.png",
  technology_type: backend
)

python = Technology.create!(
  name: "python",
  icon: "icons/python.png",
  icon_high_res: "icons/python_high_res.png",
  technology_type: backend
)

digital_ocean = Technology.create!(
  name: "DigitalOcean",
  icon: "icons/digital_ocean.png",
  icon_high_res: "icons/digital_ocean_high_res.png",
  technology_type: dev_ops
)

heroku = Technology.create!(
  name: "heroku",
  icon: "icons/heroku.png",
  icon_high_res: "icons/heroku_high_res.png",
  technology_type: dev_ops
)

stripe = Technology.create!(
  name: "stripe",
  icon: "icons/stripe.png",
  icon_high_res: "icons/stripe_high_res.png",
  technology_type: backend
)

nginx = Technology.create!(
  name: "nginx",
  icon: "icons/nginx.png",
  icon_high_res: "icons/nginx_high_res.png",
  technology_type: dev_ops
)

github = Technology.create!(
  name: "github",
  icon: "icons/github.png",
  icon_high_res: "icons/github_high_res.png",
  technology_type: other,
)

vscode = Technology.create!(
  name: "vscode",
  icon: "icons/vscode.png",
  technology_type: other
)

gimp = Technology.create!(
  name: "gimp",
  icon: "icons/gimp.png",
  technology_type: creative
)

jenkins = Technology.create!(
  name: "jenkins",
  icon: "icons/jenkins.png",
  technology_type: other
)

bitbucket = Technology.create!(
  name: "bitbucket",
  icon: "icons/bitbucket.png",
  technology_type: other
)

sass = Technology.create!(
  name: "sass",
  icon: "icons/sass.png",
  technology_type: frontend
)

postgres = Technology.create!(
  name: "postgres",
  icon: "icons/postgres.png",
  technology_type: backend
)

sql = Technology.create!(
  name: "sql",
  icon: "icons/sql.png",
  technology_type: backend
)

# maybe remove?
api = Technology.create!(
  name: "api",
  icon: "icons/api.png",
  technology_type: backend
)

travis = Technology.create!(
  name: "travis",
  icon: "icons/travis.png",
  technology_type: other
)

google_api = Technology.create!(
  name: "Google API",
  icon: "icons/google_api.png",
  technology_type: backend
)

amazon_aws = Technology.create!(
  name: "Amazon",
  icon: "icons/amazon_aws.png",
  technology_type: dev_ops
)

virtual_machine = Technology.create!(
  name: "VirtualMachine",
  icon: "icons/virtual_machine.png",
  technology_type: other
)

adobe_xd = Technology.create!(
  name: "AdobeXD",
  icon: "icons/adobe_xd.png",
  technology_type: creative
)

w3c = Technology.create!(
  name: "W3C",
  icon: "icons/w3c.png",
  technology_type: other
)

puts "\n Creating Projects"

fordsdevelopment = Project.create!(
  name: "Fordsdevelopment",
  link: "https://fordsdevelopment.co.uk",
  started: Date.new(2021,10,01),
  description: "My website",
  ux: "Some information about the ux",
  image: "logos/fordsdevelopment.svg",
  order: 1
)

family_organiser = Project.create!(
  name: "Family Organiser",
  link: "https://fordsdevelopment.co.uk",
  started: Date.new(2021,10,01),
  description: "My website",
  ux: "Some information about the ux",
  image: "projects/family_organiser.png",
  order: 2
)

the_note_worthy = Project.create!(
  name: "TheNoteWorthy",
  link: "https://thenoteworthy.fordsdevelopment.co.uk",
  started: Date.new(2021,10,01),
  description: "My website",
  ux: "Some information about the ux",
  order: 3
)

calendar = Project.create!(
  name: "Calendar",
  link: "https://fordsdevelopment.co.uk",
  started: Date.new(2021,10,01),
  description: "My website",
  ux: "Some information about the ux",
  order: 4
)

puts "\n Creating Features"

contact = Feature.create!(
  name: "Contact",
  description: "Multi-part form",
  started: Date.new(2021,01,01),
  project: fordsdevelopment,
  completed: true
)

puts "\n Creating TechnologyGroups"

TechnologyGroup.create!(
  technology: html,
  technology_groupable: fordsdevelopment,
)

TechnologyGroup.create!(
  technology: ruby,
  technology_groupable: fordsdevelopment,
)

TechnologyGroup.create!(
  technology: ruby,
  technology_groupable: contact,
)

TechnologyGroup.create!(
  technology: ruby,
  technology_groupable: the_note_worthy,
)

TechnologyGroup.create!(
  technology: css,
  technology_groupable: fordsdevelopment,
)

TechnologyGroup.create!(
  technology: javascript,
  technology_groupable: fordsdevelopment,
)

TechnologyGroup.create!(
  technology: django,
  technology_groupable: fordsdevelopment,
)

TechnologyGroup.create!(
  technology: mongodb,
  technology_groupable: fordsdevelopment,
)

# I think add a polymorphic model Info

# CURRENT_FEATURE = "Current Feature"
# FUTURE_FEATURE = "Future Feature"
# ACKNOWLEDGEMENT = "Acknowledgement"

# has_many :current_features, class_name: "Info", category: CURRENT_FEATURE
# has_many :future_features, class_name: "Info"
# has_many :acknowledgements, class_name: "Info"

