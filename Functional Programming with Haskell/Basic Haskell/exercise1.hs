cek :: Int -> String            
cek x =
    if x >= 80 then "A" 
    else if x >= 75 then "AB"
    else if x >= 70 then "B"
    else if x >= 65 then "BC"
    else if x >= 60 then "C"
    else if x >= 40 then "D"
    else "E"