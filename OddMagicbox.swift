func oddMagicBox(n: Int) {
        if (n > 1000) {
            print("Please read about maximum array size in a language")
            return
        }
    var array : [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
        var iter1 = 0
        var iter2 = n / 2
        var num = 1
        while (num <= n * n) {
            if (array[iter1][iter2] != 0) {
                iter1 = (iter1 + 2) % n
                iter2 = ((iter2 - 1) + n) % n
            }
            array[iter1][iter2] = num
            iter1 = ((iter1 - 1) + n) % n
            iter2 = (iter2 + 1) % n
            num += 1
        }
    print(array.map { row in row.map{ String($0) }.joined(separator: " ") }
        .joined(separator: "\n") + "\n")
    print("Sum of each row : \( array[0].reduce(0, +))")
    }

oddMagicBox(n:4)
