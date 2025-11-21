class ModifyPostToPosterUrl < ActiveRecord::Migration[7.1]
  def change
    rename_column :movies, :post_url, :poster_url
  end
end
