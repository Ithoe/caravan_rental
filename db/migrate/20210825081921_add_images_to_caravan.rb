class AddImagesToCaravan < ActiveRecord::Migration[6.0]
  def change
    add_column :caravans, :photos, :text
  end
end
