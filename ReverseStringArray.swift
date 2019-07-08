func reverseString(_ s: inout [Character]) {
        var i = 0 ,j = s.count - 1
        while(i<j){
            (s[i],s[j]) = (s[j],s[i])
            i += 1
            j -= 1
        }
    }
