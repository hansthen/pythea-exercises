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

-- Used to display files using eog.
import System.Cmd

type Figuur a = Pos -> a

type Pos = (Double, Double) -- (x, y)

schaakbord :: Figuur Bool
schaakbord (x, y) = even (round x) == even (round y)

------------------------------------------------------------------
-- 1. ASCII rendering

type Dimensie = (Int, Int) -- (breedte, hoogte)

coordinaten :: Dimensie -> [[(Int, Int)]]
coordinaten (x,y) = [[(x',y') | x' <- [0..(x-1)]] | y' <- [0..(y-1)]]

render :: Dimensie -> Figuur a -> [[a]] 
render d f = [[f (naarPositie d (x,y)) | (x,y) <- row] | row <- coordinaten d]

naarPositie :: Dimensie -> (Int, Int) -> Pos
naarPositie d (x, y) = (fromIntegral x*2/b-1, 1-fromIntegral y*2/h)
  where
    b  = fromIntegral (fst d-1)
    h  = fromIntegral (snd d-1)

boolChar :: Bool -> Char
boolChar True = '@'
boolChar False = '.'

verander :: (a -> b) -> Figuur a -> Figuur b
verander func fig = func . fig

toon :: Figuur Bool -> IO ()
toon = putStrLn . seqString . unlines . render (32, 20) . verander boolChar

seqString :: String -> String -- fixes subtle bug in WinHugs
seqString s = sum (map ord s) `seq` s 

------------------------------------------------------------------
-- 2. Basisvormen

cirkel :: Double -> Figuur Bool
cirkel r = \(x,y) -> x^2 + y^2 <= r^2

vierkant :: Double -> Figuur Bool
vierkant l = \(x,y) -> (x >= -l' && x <= l' && y >= -l' && y <= l')
               where l' = l / 2

driehoek :: Figuur Bool
driehoek = \(x,y) -> abs(x) <= 0.5 - y/2 && y >= -1

{-
y = -1 x = 0
y = 0  x = -1/2 +1/2
y = 1  x = -1   +1 
-}

------------------------------------------------------------------
-- 3. Transformaties

transform :: (Pos -> Pos) -> Figuur a -> Figuur a
transform = \f figuur -> figuur . f

verschuif :: (Double, Double) -> Figuur a -> Figuur a
verschuif (dx,dy) = transform (\(x,y) -> (x-dx, y-dy))

schaal :: Double -> Double -> Figuur a -> Figuur a
schaal fx fy = transform (\(x,y) -> (x/fx, y/fy))

infixr 7 #
infixr 7 //

(#) :: (Double, Double) -> Figuur a -> Figuur a -- verschuiven
(#) = verschuif 

(//) :: Double -> Figuur a -> Figuur a -- schalen
(//) = \f -> (schaal f f)

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
transPolar f = transform (fromPolar . f . toPolar)

roteer :: Double -> Figuur a -> Figuur a
roteer dh = transPolar (\(r,h) -> (r, h+dh))

krul :: Double -> Figuur a -> Figuur a
krul d = transPolar (\(r,h) -> (r,h-d*r))

------------------------------------------------------------------
-- 5. Composities

compositie :: (a -> b -> c) -> Figuur a -> Figuur b -> Figuur c
compositie = \f figuur_a figuur_b -> \p -> f (figuur_a p) (figuur_b p)

(<+>) :: Figuur Bool -> Figuur Bool -> Figuur Bool
(<+>) = compositie (||)

(<*>) :: Figuur Bool -> Figuur Bool -> Figuur Bool
(<*>) = compositie (&&)

(<->) :: Figuur Bool -> Figuur Bool -> Figuur Bool
(<->) = compositie (\p q -> p && not q)

ring :: Double -> Double -> Figuur Bool
ring c1 c2 = (cirkel c2) <-> (cirkel c1)

box :: Double -> Double -> Figuur Bool
box v1 v2 = (vierkant v2) <-> (vierkant v1)


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

-- Darn! Tuples are no functors, so no fmap on tuples.
veranderKleur :: (Double -> Double) -> Kleur -> Kleur
veranderKleur f = \(r,g,b,a) -> (f r, f g, f b, f a) 

transparant :: Double -> Kleur -> Kleur
transparant d = veranderKleur (*d)

-- (Darn!, darn!)
zipKleur :: (Double -> Double -> Double) -> Kleur -> Kleur -> Kleur
zipKleur f = \(r1, g1, b1, a1) (r2, g2, b2, a2) -> (f r1 r2, f g1 g2, f b1 b2, f a1 a2)

mixKleur :: Double -> Kleur -> Kleur -> Kleur
mixKleur d = zipKleur (\k1 k2 -> (d * k1 + (1 - d) * k2))

------------------------------------------------------------------
-- 7. PPM rendering

-- Gelukkig werkt eog *.ppm
eog s = rawSystem "eog" [s]

headerPPM :: Dimensie -> String
headerPPM (b,h) = "P6 " ++ show b ++ " " ++ show h ++ " 255" 

kleurPPM :: Kleur -> String
kleurPPM (r,g,b,_) = toC r:toC g:toC b:[]
  where toC = chr . round . (*255)

maakPPM :: Dimensie -> Figuur Kleur -> String
maakPPM d f = headerPPM d ++ "\n" ++ 
              concat [kleurPPM (f (naarPositie d (x,y))) | 
                      (x,y) <- concat (coordinaten d)]

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

-- (Darn!, darn! No zip on tuples either.)
over :: Kleur -> Kleur -> Kleur
over (r1,g1,b1,a1) (r2,g2,b2,a2) = (over' r1 r2, over' g1 g2, over' b1 b2, over' a1 a2)
  where over' k1 k2 = k1+(k2*(1-a1))

(<>) :: Figuur Kleur -> Figuur Kleur -> Figuur Kleur
(<>) = compositie (over)

stapel :: [Figuur Kleur] -> Figuur Kleur
stapel = foldr (<>) (const (0,0,0,0))

------------------------------------------------------------------
-- 9. Gradienten

gradient :: Kleur -> Kleur -> Figuur Kleur
gradient k1 k2 = \(x,y) -> mixKleur ((x+1)/2) k1 k2 

gradientCirkel :: Kleur -> Kleur -> Figuur Kleur
gradientCirkel k1 k2 (x,y) = mixKleur ratio k1 k2
  where ratio = min 1.0 (fst (toPolar (x,y)))

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
