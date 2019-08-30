//https://www.hackerrank.com/challenges/minimum-swaps-2/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays


func minimumSwaps(arr: [Int]) -> Int {
    var counter = 0
    var vistedArray = Array(repeating: false, count: arr.count)

    for i in 0..<arr.count{
        var j = i,cycle = 0
        while(!vistedArray[j]){
            vistedArray[j] = true
            j = arr[j] - 1
            cycle = cycle + 1
        }
        if cycle != 0 {
            counter = counter + cycle - 1
        }

    }
    return counter

}
