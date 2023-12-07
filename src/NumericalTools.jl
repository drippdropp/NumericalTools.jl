using LinearAlgebra, RowEchelon, Primes

module NumericalTools

"""splitdigits
"""
function splitdigits(N::Int64; reversedigits=true)
    digits = Int64[]
    
    k = N
    while k > 0
        c = k % 10
        push!(digits, c)
        k = div(k, 10)
    end

    reversedigits && reverse!(digits)
    return digits
end

"""digitalroot
"""
function digitalroot(N::Int64)
    k = splitdigits(N) |> sum
    while k > 9
        k = splitdigits(k) |> sum
    end

    return k
end

"""oddevencount
"""
function oddevencount(N::Int64)
    digits = splitdigits(N)

    reporting = Dict("odd" => 0, "even" => 0)
    
    for k in digits
        if k & 1 == 0
            reporting["even"] += 1
        else
            reporting["odd"] += 1
        end
    end

    return reporting
end


end
