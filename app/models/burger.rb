class Burger < ApplicationRecord
    def nutriments 
        #Recupérer donnée api --> Faire tableau 
        # codeBurger = "3029330003533"
        codeBurger = self.code
        product = Openfoodfacts::Product.get(codeBurger, locale: 'fr')
        if product
            return product.nutriments.to_hash
        else
            return [""]
        end
    end
end
