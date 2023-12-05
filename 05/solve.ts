import { readFileSync } from "node:fs";
import { Mapping, Range, Stage } from './utils'
const input = readFileSync("input.txt", "utf8");
const [seedsText, ...stagesText] = input.split("\n\n")
const rawSeeds = seedsText.split(" ").slice(1).map(Number)
const stages = stagesText.map(table => {
    const mappings = table.split("\n").slice(1).map(row => {
        const [dest, source, length] = row.split(" ").map(Number)
        return new Mapping(new Range(source, length), new Range(dest, length))
    })
    return new Stage(mappings)
})

// Part 1
console.time("Part 1")
const seeds = rawSeeds.slice()
for (const stage of stages) {
    for (let i = 0; i < seeds.length; i++) {
        seeds[i] = stage.map(seeds[i])
    }
}
console.log(seeds.sort((a, b) => a - b)[0])
console.timeEnd("Part 1")

// Part 2
console.time("Part 2")
let ranges: Range[] = []
for (let i = 0; i < rawSeeds.length; i += 2) {
    ranges.push(new Range(rawSeeds[i], rawSeeds[i + 1]))
}
ranges.sort((a, b) => a.min - b.min)

for (const stage of stages) {
    ranges = ranges.flatMap(r => stage.mapRange(r))
}
ranges.sort((a, b) => a.min - b.min)
console.log(ranges[0].min)
console.timeEnd("Part 2")
