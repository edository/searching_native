class AddCategoryIdIndexOnEpisodes < ActiveRecord::Migration[5.2]
  def change
  	#menambahkan index untuk field category_id di tabel episodes
  	add_index :episodes, :category_id
  end
end
