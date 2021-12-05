# knights-travails
Calculate the shortest path for a knight to move from one square to another on a chess board.

I was able to solve this faster than I expected.  The biggest challenge was accidentally modifying things due to objects being references and not copies.  In the past it might have taken me a week to figure it out, but by using pry-byebug I was able to fix it in 15 minutes.

The assignment says to create a game board, but I was able to solve it without a board.  I just put a restriction on coordinate values to be between 0 and 7, representing an 8x8 chess board.
