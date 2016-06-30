class Fixnum
  define_method (:coin_combinations) do
    coin_array = []
    amount = self.divmod(25) #amount [2, 16]
    coin_array.push(amount[0])
    amount = amount[1].divmod(10)
    coin_array.push(amount[0])
    return coin_array
  end
end
