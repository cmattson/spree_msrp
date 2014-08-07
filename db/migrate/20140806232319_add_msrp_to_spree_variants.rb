class AddMsrpToSpreeVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :msrp, :decimal, :precision => 8, :scale => 2
  end
end
