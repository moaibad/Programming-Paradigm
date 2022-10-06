checkEvenOddPosNeg :: Integer -> String
checkEvenOddPosNeg (x) =
    if x > 0 && x `mod` 2 == 0 then 
        "Genap Positif"
    else if x < 0 && x `mod` 2 == 0 then
        "Genap Negatif"
    else if x > 0 && x `mod` 2 == 1 then
        "Ganjil Positif"
    else if x < 0 && x `mod` 2 == 1 then
        "Ganjil Negatif"
    else
        "Nol"