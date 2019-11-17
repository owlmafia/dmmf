module UnitQuantity(
  UnitQuantity, create, value
) where

newtype UnitQuantity = UnitQuantity Int deriving (Eq, Show)

create :: Int -> UnitQuantity
create value | value > 0 && value < 1000 = UnitQuantity value
             | otherwise = error "Invalid value"

value :: UnitQuantity -> Int
value (UnitQuantity value) = value
