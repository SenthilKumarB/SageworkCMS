class CreateTestimonials < ActiveRecord::Migration
  def self.up
    create_table :testimonials do |t|
      t.string :name
      t.string :quotes
      t.string :company
      t.string :position

      t.timestamps
    end
  end

  def self.down
    drop_table :testimonials
  end
end
