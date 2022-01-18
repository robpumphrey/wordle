# wordle

A bash script to assist in solving wordle puzzles https://www.powerlanguage.co.uk/wordle/

## Arguments
 1. letters not in word - optional, lists all 5 letter words if not specified
 1. letters in word - optional
 1. matching pattern - optional, use when you know the letter position, eg. ..r.t  for r at position 3, t at position 5

## Examples
```
  ./wordle.sh | less
  ./wordle.sh esit
  ./wordle.sh esit r
  ./wordle.sh esit '' ..r..
  ./wordle.sh '' '' .rt..
```
