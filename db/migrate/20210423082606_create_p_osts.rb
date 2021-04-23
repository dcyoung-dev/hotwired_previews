class CreatePOsts < ActiveRecord::Migration[6.1]
  def change
    create_table :p_osts do |t|
      t.text :content

      t.timestamps
    end
  end
end
