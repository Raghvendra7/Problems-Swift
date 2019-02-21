
Write a function to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "".



func commonPrefixWith( first :String,another: String) -> String {
        let a = Array(first)
        let b = Array(another)
        return String(
            a.enumerated()
                .filter { b.count > $0.offset && b[0...$0.offset] == a[0...$0.offset] }
                .map { $0.1 }
        )
    }

func longestCommonPrefix(strings: [String]) -> String {
    guard let first = strings.first else { return "" }
    return strings.dropFirst().reduce(first) {
        return commonPrefixWith(first: $0,another: $1)
        
    }
}
