class User < ActiveRecord::Base
   has_many :reviews
   has_many :products, through: :reviews


    def favorite_product
        self.products
        Product.all.order(:star_rating).first
    end

    def remove_reviews(product)
        review = self.reviews.find_by_product_id(product_id)
        if reviews != ""
            review.destroy_all

        end


    end



end