# Steps

Work in progress. A game, step by step. Trying to stick to popular game programming patterns.
But keep it as dead simple as possible. No clue where it will end up.

1. Main loop. Every game need to be updated at regular intervals. PICO-8 has three built in functions for the purpose.
2. Draw. Our game doesn't do much. Lets draw something. cls([color]) clears the graphics buffer using provided color as background. spr( n, [x,] [y,]) draws sprite n on position x and y.
3. Make it move. Introduce variable. We call it x. Set inital value in \_init(), increase it in \_update60() and use as x value in spr().
4. Make it interactive. Listen for buttons and update the variable x accordingly. Will make our character move around on the screen.
5. Make it alive. Our character is static, lets make him move by switching sprite at a certain interval, aka sprite animation.
6. Make is more realistic. Add variable to control character direction.
7. Even more alive. Add player states and show different sprites depending on player state.
8. Refactor. Move player animation to own function.
9. Refactor. Wrap player in a table instead of indivudual variables.
10. Add separate walking animations and logic to handle different animations for different player states.
11. Add idle animation.
12. Refactor. Use player state to remove if logic in animation function.
13. Add frame rate to control interval of each individual animation.
14. Make player able to move diagonal.
