class CreateWelcomes < ActiveRecord::Migration[5.2]
  def change
    create_table :welcomes do |t|

      t.timestamps
    end
  end
end
