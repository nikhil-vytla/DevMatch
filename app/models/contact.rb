# You add model files for any objects that you want your project to be working on.
# An object is basically a list of attributes (imagine key-value pairs).
# Model files are where we place the main blueprint of the object (including parameters, attributes, etc.)
# Rails takes care of the object blueprints via the schema.rb
class Contact < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates :comments, presence: true
end