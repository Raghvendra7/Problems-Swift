https://leetcode.com/problems/letter-combinations-of-a-phone-number/


func letterCombinations(_ digits: String) -> [String] {
    
    let dict = ["2":"abc","3":"def","4":"ghi","5":"jkl","6":"mno","7":"pqrs","8":"tuv","9":"wxyz"]
     var output:[String] = []
    if (digits.count == 0) {
        output = []
        return output
    }
    if (digits.count == 1) {
        
        output = dict[digits]!.map(String.init)
        return output;
    }
    output = dict[digits.map(String.init)[0]]!.map(String.init) // ['a', 'b', 'c']

    for i in 1..<digits.count{
        var subset = [String]();
        output.forEach { (start) in
            let currSet :[String] = dict[digits.map(String.init)[i]]!.map(String.init)
                //Array(dict[Array(digits)[i]]!)
            currSet.forEach{ (digit) in
                subset.append(start + digit)
            }
        }
        output = subset;
    }
    
    return output;
    
}
