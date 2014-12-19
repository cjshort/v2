class CreateHelpdesks < ActiveRecord::Migration
  def change
    create_table :helpdesks do |t|
      t.string :title
      t.text :content
      t.string :youtube
      t.boolean :featuredone, default: false
      t.boolean :featuredtwo, default: false

      t.timestamps
    end
  end
end
