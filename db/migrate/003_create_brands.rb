class CreateBrands < ActiveRecord::Migration[5.1]
    def change
        create_table :brands do |t|
        t.string :brand
        t.string :style
        t.string :price_point
        end
    end
end