class CreateWelcomeImages < ActiveRecord::Migration[5.2]
  def change
    create_table :welcome_images do |t|
      t.string :original_filename
      t.boolean :display_image, default: true
    end
  end
end
