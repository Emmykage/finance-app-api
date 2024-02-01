class AssetSerializer < ActiveModel::Serializer
  attributes :id, :asset_name, :user_id, :minimum_investment, :term, :payment_schedule, :asset_type, :title, :description, :share_in_excess, :annual_mangt_fee, :annual_flat_expense, :overview_description, :overview_note, :asset_category, :image_url, :return
  
end
