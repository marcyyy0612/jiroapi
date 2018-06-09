class Food < ApplicationRecord
  enum type: [:ninniku, :abura, :buta, :tonkotsu, :yasai, :syoyu, :men]
end
