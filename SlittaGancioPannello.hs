module SlittaGancioPannello (slitta) where

import Language.HOpenSCAD
import HOpenSCAD

larghezza = 3
altezza = 15
spessore = 0.5

profondità = 3*spessore 

volume = cubo (larghezza + 2* spessore) profondità altezza

scasso_centrale  = moveX spessore . moveY spessore $ cubo larghezza spessore altezza
scasso_frontale = moveX (2*spessore) $ cubo (larghezza - 2*spessore) (profondità - spessore) altezza 

slitta = moveY (negate profondità) $ volume `Difference` scasso_centrale `Difference` scasso_frontale

main = putStrLn . openSCAD $ slitta







