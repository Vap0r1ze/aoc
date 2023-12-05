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

    [Symbol.for('nodejs.util.inspect.custom')]() {
        return `[${this.min}, ${this.max})`
    }
}

export class Mapping {
    constructor(public source: Range, public dest: Range) { }

    map(n: number): number | null {
        if (!this.source.contains(n)) return null
        return n - this.source.min + this.dest.min
    }

    mapRange(range: Range): [before: Range, mapped: Range, after: Range] {
        const before = range.min < this.source.min
            ? new Range(range.min, this.source.min - range.min)
            : new Range(range.min, 0)
        const after = range.max > this.source.max
            ? new Range(Math.max(this.source.max, range.min), Math.min(range.max - this.source.max, range.length))
            : new Range(range.max, 0)
        const toMap = new Range(
            Math.max(range.min, this.source.min),
            Math.max(0, Math.min(range.max, this.source.max) - Math.max(range.min, this.source.min))
        )
        const mapped = toMap.isEmpty()
            ? toMap
            : new Range(this.dest.min + toMap.min - this.source.min, toMap.length)
        return [before, mapped, after]
    }

    [Symbol.for('nodejs.util.inspect.custom')](depth, options, inspect) {
        return `${inspect(this.source)} -> ${inspect(this.dest)}`
    }
}
export class Stage {
    constructor(public mappings: Mapping[]) {
        this.mappings.sort((a, b) => a.source.min - b.source.min)
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
            // console.log(mapping, {unmapped, before, mapped, after})
            unmapped = after
            if (!before.isEmpty()) result.push(before)
            if (!mapped.isEmpty()) result.push(mapped)
            if (after.isEmpty()) break
        }
        if (!unmapped.isEmpty()) result.push(unmapped)
        return result
    }
}
