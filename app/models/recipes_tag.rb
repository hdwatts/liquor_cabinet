class RecipesTag < ActiveRecord::Base
    belongs_to :recipe
    belongs_to :tag
end