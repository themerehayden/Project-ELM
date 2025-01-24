module Test2 exposing (..)

-- define your functions here
--carte
type CouleurCarte = Trefle | Carreau | Coeur | Pique
type ValeurCarte = Deux | Trois | Quatre | Cinq | Six | Sept |
                   Huit | Neuf | Dix | Valet | Dame | Roi | As

type Carte = Carte ValeurCarte CouleurCarte
type Tree a = Vide | Noeud a (Tree a) (Tree a) -- type parametreparametre utilisé pour créer des types de données génériques qui peuvent être utilisés avec différentes valeurs de types

asTrefle : Carte
asTrefle = Carte As Trefle

quatreAs : List Carte 
quatreAs = [Carte As Trefle, Carte As Carreau, Carte As Coeur, Carte As Pique]

arbreVide : Tree a
arbreVide = Vide

arbreFlottants : Tree Float
arbreFlottants = Noeud 1.0 (Noeud 3.0 Vide Vide) (Noeud 5.0 Vide Vide)

hauteurArbre : Tree a -> Int 
hauteurArbre arbre = case arbre of
    Vide -> 0
    Noeud _ gauche droite -> 1 + max (hauteurArbre gauche) (hauteurArbre droite)