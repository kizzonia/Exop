class CreateFaqs < ActiveRecord::Migration[5.0]
  def change
    create_table :faqs do |t|
      t.string :title
      t.text :body
      t.string :slug

      t.timestamps
    end
    add_index :faqs, :slug, unique: true
  end
end
