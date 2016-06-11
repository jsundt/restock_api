class AddTeamToUser < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.belongs_to :team, foreign_key: true
    end
  end
end
