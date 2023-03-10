class CreateTeas < ActiveRecord::Migration[7.0]
  def change
    create_table :teas do |t|
      t.string :name
      t.string :kind
      t.string :desc

      t.timestamps
    end
  end
end
