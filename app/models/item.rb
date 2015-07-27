class Item < ActiveRecord::Base
  belongs_to    :list
  belongs_to    :store
end
