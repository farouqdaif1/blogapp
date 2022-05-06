class FixColumnsName < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :users_id, :author_id
    rename_column :comments, :users_id, :author_id
    rename_column :likes, :users_id, :author_id
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
