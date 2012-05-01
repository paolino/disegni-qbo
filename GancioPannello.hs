module GancioPannello (gancio) where

import Language.HOpenSCAD
import HOpenSCAD 

larghezza = 3
altezza = 7
incastro = 3
spessore = 0.5

profondità = spessore * 2 + incastro

volume = cubo larghezza profondità altezza

scasso_centrale  = moveY spessore $ cubo larghezza (profondità - 2*spessore) (altezza - spessore)
scasso_laterale = cubo spessore (profondità - spessore) altezza 

gancio = volume `Difference` scasso_centrale `Difference` moveX (larghezza - spessore) scasso_laterale `Difference` scasso_laterale

main = putStrLn . openSCAD $ gancio







