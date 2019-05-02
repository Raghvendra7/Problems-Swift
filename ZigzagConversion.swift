func convert(_ s: String, _ numRows: Int) -> String {
    var schar = Array(s)
    var newArray = Array<String>(repeating: String(), count: numRows),i = 0
    
    while i < schar.count {
        var index = 0
        while index < numRows && i < schar.count{
            newArray[index].append(schar[i])
            i += 1
            index += 1
        }
        index = numRows - 2
        while index > 0 && i < schar.count{
            newArray[index].append(schar[i])
            i += 1
            index -= 1
        }
        
    }
    print(newArray)
    return newArray.joined()
    
}
