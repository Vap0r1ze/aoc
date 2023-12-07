import { inspect, InspectOptionsStylized } from 'util'

/** [min, max) */
export class Range {
    max: number
    constructor(public min: number, public length: number) {
        this.max = min + length
    }
    contains(n: number) {
        return n >= this.min && n < this.max
    }
    isEmpty() {
        return this.length === 0
    }

    intersection(other: Range): Range {
        return new Range(
            Math.max(other.min, this.min),
            Math.max(0, Math.min(other.max, this.max) - Math.max(other.min, this.min))
        )
    }
    before(other: Range): Range {
        return new Range(other.min, Math.max(0, this.min - other.min))
    }
    after(other: Range): Range {
        return other.max > this.max
            ? new Range(Math.max(this.max, other.min), Math.min(other.max - this.max, other.length))
            : new Range(other.max, 0)
    }
    overlap(other: Range): [before: Range, intersection: Range, after: Range] {
        return [this.before(other), this.intersection(other), this.after(other)]
    }

    [inspect.custom](depth: number, options: InspectOptionsStylized) {
        return options.stylize(`${this.min}..${this.max}`, "number")
    }
}

export class Mapping {
    constructor(public source: Range, public dest: Range) { }

    map(n: number): number | null {
        if (!this.source.contains(n)) return null
        return n - this.source.min + this.dest.min
    }
    mapRange(range: Range): [before: Range, mapped: Range, after: Range] {
        const [before, intersection, after] = this.source.overlap(range)
        const mapped = intersection.isEmpty()
            ? intersection
            : new Range(this.dest.min + intersection.min - this.source.min, intersection.length)
        return [before, mapped, after]
    }

    [inspect.custom](depth: number, options: InspectOptionsStylized) {
        return options.stylize(`[Mapping ${inspect(this.source)} => ${inspect(this.dest)}]`, "special")
    }
}
export class Stage {
    constructor(public mappings: Mapping[]) {
        // This lets me just use Mapping::mapRange's `after` as the unmapped accumulator
        mappings.sort((a, b) => a.source.min - b.source.min)
    }

    map(n: number): number {
        for (const mapping of this.mappings) {
            const mapped = mapping.map(n)
            if (mapped != null) return mapped
        }
        return n
    }

    mapRange(range: Range): Range[] {
        const result: Range[] = []
        let unmapped = range
        for (const mapping of this.mappings) {
            const [before, mapped, after] = mapping.mapRange(unmapped)
            unmapped = after
            if (!before.isEmpty()) result.push(before)
            if (!mapped.isEmpty()) result.push(mapped)
            if (after.isEmpty()) break
        }
        if (!unmapped.isEmpty()) result.push(unmapped)
        return result
    }
}
