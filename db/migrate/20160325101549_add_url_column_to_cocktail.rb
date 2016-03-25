class AddUrlColumnToCocktail < ActiveRecord::Migration
  def change
    add_column :cocktails, :img_url, :string
  end
end
