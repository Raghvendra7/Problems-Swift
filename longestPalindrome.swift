func longestPalindrome(_ s: String) -> String {
    let sChars = Array(s)
    guard sChars.count > 1 else {
        return s
    }
    var maxLen = 1,start = 0,i = 0
    while i<sChars.count{
        guard s.count - i > maxLen / 2 else {
            break
        }
        var j = i
        var k = i
        while k < s.count - 1 && sChars[k+1] == sChars[k] {
            k += 1
        }
        i = k + 1
        while k < s.count - 1 && j > 0 && sChars[k+1] == sChars[j-1] {
            k += 1
            j -= 1
        }
        let newLen = k - j + 1
        if newLen > maxLen {
            start = j
            maxLen = newLen
        }
        
    }
    
    
    return String(sChars[start ..< (start + maxLen)])
}
