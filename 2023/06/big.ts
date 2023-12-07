import { readFileSync } from "fs"

const [times, distances] = readFileSync("input_large.txt", "utf-8")
    .split("\n")
    .map(line => line.split(/ +/).slice(1))

function getWins(time: number, distance: number): number {
    return time - 2*Math.floor((time - Math.sqrt(time**2 - 4*distance))/2) - 1
}
function sqrt(n: bigint): bigint {
    if (n < 0n) throw new Error("sqrt of negative number")
    if (n < 2n) return n

    const bitsize = n.toString(2).length
    let x = bitsize & 1
        ? 4n*10n**BigInt((bitsize/2)|0)
        : 10n**BigInt(bitsize/2)
    let y = 0n

    do {
        y = x
        x = (x + n/x) >> 1n
    } while (x !== y && y !== x - 1n)

    return y
}
function getWinsBig(time: bigint, distance: bigint): bigint {
    return time - 2n*((time - sqrt(time**2n - 4n*distance))/2n) - 1n
}

let margin = 1n
for (let i = 0; i < times.length; i++) {
    margin *= BigInt(getWins(+times[i], +distances[i]))
}
console.log(margin)
console.log(getWinsBig(BigInt(times.join("")), BigInt(distances.join(""))))
// FIXME: Part 2 is off by 2, something is wrong with the newton method or smth
