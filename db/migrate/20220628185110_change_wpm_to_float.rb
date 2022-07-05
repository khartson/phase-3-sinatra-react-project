class ChangeWpmToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :tests, :wpm, :float
  end
end
