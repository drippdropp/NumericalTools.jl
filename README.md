# NumericalTools

A collection of number theory tools used for investigating scalars, vectors, and matrices. 

Since this is for my personal use, I may not update help docs aggressively, but will try to keep things as up-to-date as possible.

## Examples

Looking for patterns of digital roots with primes.

````julia
using NumericalTools

for k in 2:1000000
    dr = digitalroot(k)    
    dr in [2,4,5,7,8] && isprime(k) && println(k, " Digital Root: ", dr)
end
````

[![Build Status](https://github.com/drippdropp/NumericalTools.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/drippdropp/NumericalTools.jl/actions/workflows/CI.yml?query=branch%3Amain)
