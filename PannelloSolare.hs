module PannelloSolare where

import Language.HOpenSCAD
import HOpenSCAD

import SlittaGancioPannello
import GancioPannello

larghezza = 100.5
spessore = 1

distanza_verticale_slitte = 76
spiazzamento_verticale_slitte_alte = 20
ascissa_slitta = 18
ordinata_alta_slitte = larghezza - spiazzamento_verticale_slitte_alte
ordinata_bassa_slitte = ordinata_alta_slitte - distanza_verticale_slitte

pannello = cubo larghezza spessore larghezza 

slitte = moveX ascissa_slitta slitta `Union` reflectX (larghezza/2) (moveX ascissa_slitta slitta)

main = putStrLn $ openSCAD $ pannello `Union` moveZ ordinata_alta_slitte slitte `Union` moveZ ordinata_bassa_slitte slitte
