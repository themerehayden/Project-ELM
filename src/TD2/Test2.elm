module Test2 exposing (..)

-- define your functions here
--carte
type CouleurCarte = Trefle | Carreau | Coeur | Pique
type ValeurCarte = Deux | Trois | Quatre | Cinq | Six | Sept |
                   Huit | Neuf | Dix | Valet | Dame | Roi | As

type Carte = Carte ValeurCarte CouleurCarte