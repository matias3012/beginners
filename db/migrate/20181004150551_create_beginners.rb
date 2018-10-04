class CreateBeginners < ActiveRecord::Migration[5.2]
  def change
    create_table :beginners do |t|
      t.string :title
      t.text :element
      t.string :author

      t.timestamps
    end
  end
end
