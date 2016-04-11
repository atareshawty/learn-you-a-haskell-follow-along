--functions are pretty much defined how they're called
--functionName arguments = what it does...
doubleMe x = x + x

-- the point of functional programming is to make small building blocks!
-- we call douleMe instead of x*2 + y*2 to reflect this
doubleUs x y = doubleMe x + doubleMe y

-- if statements are described in the readme
doubleSmallNumber x = if x > 100
                          then x
                          else x * 2

-- ' is not a special character in haskell, so we can use it to name stuff
conanO'Brien = "It's a-me, Conan O'Brien!"

-- two lists a can be concatenated with the ++ operator
-- NOTE: this is a good example of a function that should be called as infix
-- x `addTwoLists` y adds clarity to the order of the resulting list
addTwoLists x y = x ++ y

-- ranges are fun and included in the README
createRange begin end = [begin..end]

-- list comprehensions are also fun and also included in the README
boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
