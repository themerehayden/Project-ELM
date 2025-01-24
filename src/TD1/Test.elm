module Test exposing (..)

-- define your functions here

-- ex1 
-- version récursive
-- addElemInList : a -> Int -> List a -> List a
-- addElemInList elem count list =  -- list: la liste initiale
--     if count <= 0 then
--         list
--     else
--         addElemInList elem (count - 1) (elem :: list) --fonction récursive diminuant le count et ajoutant l'élément au début de la liste
-- --version non récursive
addElemInList : a -> Int -> List a -> List a 
addElemInList elem count list = 
    if count <= 0 then 
        list
    else 
        list ++ List.repeat count elem
--ex2
--version récursive
-- dupli : List a -> List a
-- dupli list = case list of --déconstruire une liste
--     [] -> []
--     (x :: xs) -> x :: x :: (dupli xs) --xs: liste des autres arguments

--version non récursive
dupli : List a -> List a
dupli list = 
    List.concatMap (\x -> [x, x]) list --The syntax for anonymous functions is (\x -> x + 1) 
--ex3
--version récursive
-- compress : List a -> List a 
-- compress list = case list of
--     [] -> []
--     [x] -> [x]
--     (x :: y :: xs) ->
--         if x == y then
--             compress (y :: xs)
--         else
--             x :: compress(y :: xs)

--version non récursive
compressHelper : comparable -> List comparable -> List comparable -- prend 2 arguments (un elem et une liste) et retourne une liste
compressHelper x partialRes = case partialRes of
    [] -> [x]
    (y :: ys) -> if x == y
                 then partialRes
                 else x :: partialRes

compress : List comparable -> List comparable
compress list = 
    List.foldr compressHelper [] list --applique compressHelper à chaque élément de la liste, en commençant par une liste vide [] comme valeur initiale.

------
singleton : a -> List a
singleton element = List.singleton element
