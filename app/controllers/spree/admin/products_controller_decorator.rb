Spree::Admin::ProductsController.class_eval do

  def update
    store_ids = params[:product][:store_ids]
    if store_ids.present?
      params[:product][:store_ids] = store_ids.split(',')
    end
    super
  end
end
