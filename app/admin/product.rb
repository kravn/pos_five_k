ActiveAdmin.register Product do

  permit_params :name, :price_centavos, :price_currency, :retail_price_centavos, :retail_price_currency
  permit_params :category_id, :supplier_id

  actions :all, except: [:delete, :destroy]
  index do
    column :id
    column :name
    column :price_centavos
    column :retail_price_centavos
    column :supplier
    column :category
    actions
  end

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end


end
