class Food < ApplicationRecord
  enum genre: { ninniku: 0, abura: 1, buta: 2, tonkotsu: 3, yasai: 4, syoyu: 5, men: 6 }

end
