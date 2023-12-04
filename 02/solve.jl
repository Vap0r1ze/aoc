using BenchmarkTools
re = r"(\d+) (.)"

# UNFINISHED?

function game_value_sum(map_value)
    io = open("input_large.txt", "r")
    sum = 0
    game = 0
    for line in eachline(io)
        game += 1

        draws = map(x -> begin
                return (parse(Int64, x.captures[1]), x.captures[2])
            end, collect(eachmatch(re, line)))

        maxes = Dict("r" => 0, "g" => 0, "b" => 0)
        for (n, color) in draws
            maxes[color] = max(maxes[color], n)
        end

        sum += map_value(maxes, game)
    end

    return sum
end

function part1()
    return game_value_sum((m, game) -> begin
        return game * (m["r"] <= 12 && m["g"] <= 13 && m["b"] <= 14)
    end)
end

@info part1()
# @btime reduce(+, get_games(m -> m["r"] <= 12 && m["g"] <= 13 && m["b"] <= 14))
# @btime reduce(+, [1, 2, 3])
