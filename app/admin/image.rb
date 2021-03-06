ActiveAdmin.register Image do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :product_id, :title, :photo, :photo_type
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :photo_type, :as => :select,:collection => Image::TYPES, :label => "Type"
      f.input :product
      f.input :photo, :as => :file
    end
    f.actions
  end
  
end
