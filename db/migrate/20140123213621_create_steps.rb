class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :name
      t.text :description
      t.references :task, index: true

      t.timestamps
    end
  end
end
