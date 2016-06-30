class Fixnum
  define_method (:coin_combinations) do
    amount = self.divmod(25) #amount [2, 16]
    # amount = amount[1].divmod(10)
  end
end
