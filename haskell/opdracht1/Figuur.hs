------------------------------------------------------------------
-- Functioneel programmeren
-- Opdracht 1: Functionele figuren (versie 1.1)
--
-- Student: 
-- Nummer:
--
------------------------------------------------------------------
module Figuur where

import Data.Char
import System.IO

type Figuur a = Pos -> a

type Pos = (Double, Double) -- (x, y)

schaakbord :: Figuur Bool
schaakbord (x, y) = even (round x) == even (round y)

------------------------------------------------------------------
-- 1. ASCII rendering

type Dimensie = (Int, Int) -- (breedte, hoogte)

coordinaten :: Dimensie -> [[(Int, Int)]]
coordinaten = undefined

render :: Dimensie -> Figuur a -> [[a]] 
render = undefined

naarPositie :: Dimensie -> (Int, Int) -> Pos
naarPositie d (x, y) = (fromIntegral x*2/b-1, 1-fromIntegral y*2/h)
  where
    b  = fromIntegral (fst d-1)
    h  = fromIntegral (snd d-1)

boolChar :: Bool -> Char
boolChar = undefined

verander :: (a -> b) -> Figuur a -> Figuur b
verander = undefined

toon :: Figuur Bool -> IO ()
toon = putStrLn . seqString . unlines . render (32, 20) . verander boolChar

seqString :: String -> String -- fixes subtle bug in WinHugs
seqString s = sum (map ord s) `seq` s 

------------------------------------------------------------------
-- 2. Basisvormen

cirkel :: Double -> Figuur Bool
cirkel = undefined

vierkant :: Double -> Figuur Bool
vierkant = undefined

driehoek :: Figuur Bool
driehoek = undefined

------------------------------------------------------------------
-- 3. Transformaties

transform :: (Pos -> Pos) -> Figuur a -> Figuur a
transform = undefined

verschuif :: (Double, Double) -> Figuur a -> Figuur a
verschuif = undefined

schaal :: Double -> Double -> Figuur a -> Figuur a
schaal = undefined

infixr 7 #
infixr 7 //

(#) :: (Double, Double) -> Figuur a -> Figuur a -- verschuiven
(#) = undefined

(//) :: Double -> Figuur a -> Figuur a -- schalen
(//) = undefined

------------------------------------------------------------------
-- 4. Transformaties met poolcoordinaten

type Polar = (Double, Double) -- (afstand, hoek)

toPolar :: Pos -> Polar
toPolar (x, y) = (sqrt (x^2 + y^2), hoek) 
  where hoek  | x == 0     = pi/2 * signum y
              | x < 0      = atan (y/x) + pi
              | otherwise  = atan (y/x)

fromPolar :: Polar -> Pos
fromPolar (r, h) = (cos h*r, sin h*r)

transPolar :: (Polar -> Polar) -> Figuur a -> Figuur a
transPolar = undefined

roteer :: Double -> Figuur a -> Figuur a
roteer = undefined

krul :: Double -> Figuur a -> Figuur a
krul = undefined

------------------------------------------------------------------
-- 5. Composities

compositie :: (a -> b -> c) -> Figuur a -> Figuur b -> Figuur c
compositie = undefined

(<+>) :: Figuur Bool -> Figuur Bool -> Figuur Bool
(<+>) = undefined

(<*>) :: Figuur Bool -> Figuur Bool -> Figuur Bool
(<*>) = undefined

(<->) :: Figuur Bool -> Figuur Bool -> Figuur Bool
(<->) = undefined

ring :: Double -> Double -> Figuur Bool
ring = undefined

box :: Double -> Double -> Figuur Bool
box = undefined

------------------------------------------------------------------
-- 6. Kleuren

type Kleur = (Double, Double, Double, Double) -- (rood, groen, blauw, alpha)

alpha :: Kleur -> Double
alpha (_, _, _, a) = a

rood, groen, blauw, zwart, wit, leeg :: Kleur
rood   = (1,0,0,1)
groen  = (0,1,0,1)
blauw  = (0,0,1,1)
zwart  = (0,0,0,1)
wit    = (1,1,1,1)
leeg   = (0,0,0,0) -- volledig doorzichtig

veranderKleur :: (Double -> Double) -> Kleur -> Kleur
veranderKleur = undefined

transparant :: Double -> Kleur -> Kleur
transparant = undefined

zipKleur :: (Double -> Double -> Double) -> Kleur -> Kleur -> Kleur
zipKleur = undefined

mixKleur :: Double -> Kleur -> Kleur -> Kleur
mixKleur = undefined

------------------------------------------------------------------
-- 7. PPM rendering

headerPPM :: Dimensie -> String
headerPPM = undefined

kleurPPM :: Kleur -> String
kleurPPM = undefined

maakPPM :: Dimensie -> Figuur Kleur -> String
maakPPM = undefined

schrijf :: FilePath -> Figuur Kleur -> IO ()
schrijf file = writeBinaryFile file . maakPPM (300, 300)

writeBinaryFile :: FilePath -> String -> IO ()
writeBinaryFile file s = do
  h <- openBinaryFile file WriteMode
  hPutStr h s
  hClose h
  
kleur :: Kleur -> Figuur Bool -> Figuur Kleur
kleur = kleurMet . const

kleurMet :: Figuur Kleur -> Figuur Bool -> Figuur Kleur
kleurMet = compositie (\k b -> if b then k else leeg)

------------------------------------------------------------------
-- 8. Kleuren composities

over :: Kleur -> Kleur -> Kleur
over = undefined

(<>) :: Figuur Kleur -> Figuur Kleur -> Figuur Kleur
(<>) = undefined

stapel :: [Figuur Kleur] -> Figuur Kleur
stapel = undefined

------------------------------------------------------------------
-- 9. Gradienten

gradient :: Kleur -> Kleur -> Figuur Kleur
gradient = undefined

gradientCirkel :: Kleur -> Kleur -> Figuur Kleur
gradientCirkel = undefined

------------------------------------------------------------------
-- 10. Voorbeelden

fig1, fig2, fig3, fig4 :: Figuur Kleur
fig1 = kleur (transparant 0.6 rood) (cirkel 0.9) 
       <> kleur wit (0.4 // schaakbord)
fig2 = kleur (transparant 0.6 (mixKleur 0.5 blauw wit)) ((0.4,0.4) # vierkant 1) 
       <> kleur rood (cirkel 0.5)
fig3 = stapel [ kleur (transparant 0.8 rood) ((x/2,-0.3) # ring 0.3 0.45) 
              | x <- [-1..1] ]
       <> kleur wit ((0.4 // schaakbord) <*> driehoek)
fig4 = kleurMet ((0.2,0.2) # 1.2 // gradientCirkel zwart wit) (cirkel 0.8)

type Serie = Double -> Figuur Kleur

serie :: Double -> Serie -> Figuur Kleur
serie n f = stapel (map f [0..n])

spiraal :: Serie -> Serie
spiraal g t = verschuif (fromPolar (t/10, t*0.8)) (g t)

eindvb :: Figuur Kleur
eindvb = figs <> bollen <> grid
  where
    paars   =  transparant 0.9 (mixKleur 0.5 rood blauw)
    lgrijs  =  mixKleur 0.3 zwart wit
    bol     =  kleurMet ((0.3,0.3) # 1.2 // gradientCirkel paars rood) (cirkel 1)
    bollen  =  (-0.1, -0.1) # serie 9 (spiraal (\t -> (0.05 + t/40) // bol))
    grid    =  kleurMet achter (0.3 // krul 0.1 schaakbord)
    achter  =  roteer (pi/6) (gradient zwart lgrijs)
    figs    =  (-0.5,0.5) # kleurMet grad (0.15 // foldr1 (<+>) lijst)
    lijst   =  [  (3,-0.5)  # schaal 1.1 0.9 (ring 0.6 1)
               ,  (2,2)     # ring 0.4 1
               ,  (-2,-2)   # roteer (pi/4) (box 0.6 1.5)
               ,  (0,2)     # cirkel 1 <-> ((0.5,0) # cirkel 1)
               ,  roteer (-pi/4) (driehoek <*> cirkel 1) 
               ]
    grad    =  gradient (transparant 0.85 groen) (transparant 0.85 blauw)
