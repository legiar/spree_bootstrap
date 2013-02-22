Spree::HomeController.class_eval do
  before_filter :load_featured_products, :only => :index

  private

    def load_featured_products
      featured = Spree::Taxon.where(:name => 'Featured').first
      @featured_products = featured.products.active if featured
    end

end
