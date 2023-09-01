class CreateOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :options do |t|
      t.string :body
      t.string :description
      t.string :string

      t.timestamps
    end
  end
end
