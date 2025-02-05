# Steps

1. Main loop. Every game need to be updated at regular intervals. PICO-8 has three built in functions for the purpose.
2. Draw. Our game doesn't do much. Lets draw something. cls([color]) clears the graphics buffer using provided color as background. spr( n, [x,] [y,]) draws sprite n on position x and y.
3. Make it move. Introduce variable. We call it x. Set inital value in \_init(), increase it in \_update60() and use as x value in spr()
