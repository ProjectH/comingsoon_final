class MailContact < ActiveRecord::Migration
  def up
  end

  def down
  end
  
  def change     
  rename_column :users, :email, :contact 
  add_column :users, :sexe, :boolean  
  end 
end
