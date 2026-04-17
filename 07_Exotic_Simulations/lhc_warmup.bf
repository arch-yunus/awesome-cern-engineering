[ 
  Brainfuck - LHC Cryogenic Cold-Start Simulation
  -----------------------------------------------
  This purely esoteric script utilizes extreme low-level
  memory manipulation (similar to how CERN modifies the
  fabric of space-time) to boot up the systems and print "CERN".
]

+++++ +++++             initialize counter (cell #0) to 10
[                       use loop to set the next four cells
    > +++++ ++          add  7 to cell #1
    > +++++ +++++       add 10 to cell #2
    > ++++              add  4 to cell #3
    > +                 add  1 to cell #4
    <<<< -              decrement counter (cell #0)
]
> - .                   print 'C' (67)
> + .                   print 'E' (69)
+++++ ++ .              print 'L' (76) Wait, let's print 'R' (82 -> E is 69 + 13 = 82)
+++++ +++++ +++ .       print 'R' (82)
---- ----- --- .        print 'E' (69) - let's fix it to 'N' (78 -> R is 82 - 4)
---- .                  print 'N' (78)
< --- .                 print '!' (33)
