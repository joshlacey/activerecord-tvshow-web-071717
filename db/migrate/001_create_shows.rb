class CreateShows <ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.string :day
      t.string :network
      t.integer :rating
    end
  end
end

#:name => "Rick and Morty", :day => "Thursday", :network => "Adult Swim", :rating => 10
