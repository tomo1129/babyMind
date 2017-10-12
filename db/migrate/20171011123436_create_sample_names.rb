class CreateSampleNames < ActiveRecord::Migration[5.1]
  def change
    create_table :sample_names do |t|
      t.references :relation, foreign_key: true
      t.string :name
    end
  end
end
