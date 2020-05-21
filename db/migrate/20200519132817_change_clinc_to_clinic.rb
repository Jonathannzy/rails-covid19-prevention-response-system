class ChangeClincToClinic < ActiveRecord::Migration[6.0]
  def change
    rename_table :clinc, :clinic
  end
end
