module PannelloSolare where

import Language.HOpenSCAD
import HOpenSCAD

import SlittaGancioPannello
import GancioPannello

larghezza = 100.5
spessore = 1

ascissa_slitta = 18
ordinata_alta_slitte = larghezza - 20
ordinata_bassa_slitte = ordinata_alta_slitte - 76

pannello = cubo larghezza spessore larghezza 

slitte = moveX ascissa_slitta slitta `Union` reflectX (larghezza/2) (moveX ascissa_slitta slitta)

main = putStrLn $ openSCAD $ pannello `Union` moveZ ordinata_alta_slitte slitte `Union` moveZ ordinata_bassa_slitte slitte
