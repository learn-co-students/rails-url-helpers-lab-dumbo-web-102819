class AddBooleanShit < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :active, :boolean, default: :false # 0 false 'false'
  end
end
