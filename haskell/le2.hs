module Le2 where

double x = x + x
viermaal x = double (double x)

factorial n = product [1..n]
average ns = sum ns `div` length ns
