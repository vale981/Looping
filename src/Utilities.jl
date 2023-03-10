module Utilities

export periodic_distance
export restrict_to_range

"""
    periodic_distance(m, n, N)

Calculate the distance `(m-n)`, but assuming periodic boundary
conditions for a chain of length `N`.

# Examples
```jldoctest
julia> periodic_difference(1,4,5)
2
julia> periodic_difference(1,3,5)
-2
```
"""
function periodic_distance(m::Integer, n::Integer, N::Integer)
    diff = m - n
    adiff = abs(diff)
    if abs(diff + N) < adiff
        diff + N
    elseif abs(diff - N) < adiff
        diff - N
    else
        diff
    end
end

"""
    restrict_to_range(x, border)

Returns the value `x` restricted to the range `[-border, border]`.
"""
function restrict_to_range(x::Real, border::Real)
    sign = x ≥ border ? -1 : 1

    while abs(x) > border
        x += sign * border * 2
    end

    x
end

end
