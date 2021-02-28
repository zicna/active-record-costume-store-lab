# Create a class and inherit from ActiveRecord::Migration

# By convention, the class name should match the part of the
# file name after the number, so in this case:
# 002_create_costumes.rb becomes class CreateCostumes

# Define a change method in which to do the migration
# In this change method, create columns with the correct names and 
# value types according to the spec

# !!! Before you run rake db:migrate, remember to fill out the other migration files -- otherwise you'll get an error resulting from the blank migration files.

class CreateCostume < ActiveRecord::Migration[5.1]
    def change
        create_table :create_costumes do |t|
            t.string :name
            t.integer :price
            t.string :size
            t.string :image_url
            t.timestamps
        end
    end
end