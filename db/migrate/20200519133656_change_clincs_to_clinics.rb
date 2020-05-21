class ChangeClincsToClinics < ActiveRecord::Migration[6.0]
  def change
    rename_table :clincs, :clinics
  end
end
