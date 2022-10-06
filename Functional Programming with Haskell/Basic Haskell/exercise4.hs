comparePrime :: (Integer,Integer) -> Bool
comparePrime (x,y) =
    if y < 2 then
        True 
    else if x `mod` y == 0 && x /= y then
        False
    else
        comparePrime(x,y-1)

checkPrime :: Integer -> Bool
checkPrime 1 = 
    False
checkPrime x =
    comparePrime(x,x)