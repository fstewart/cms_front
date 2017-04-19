class RenamePromoImageToCesPromo < ActiveRecord::Migration
  def change
    rename_column :ces_events, :promo_image, :ces_promo
  end
end
