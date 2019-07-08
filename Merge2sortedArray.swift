 func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var index = m + n - 1;
        var i = m - 1, j = n - 1;
        while(i >= 0 && j >= 0){
            if (nums1[i] > nums2[j]) {
              nums1[index] =   nums1[i]
                i -= 1 
            }else{
                nums1[index] =   nums2[j]
                j -= 1
            }
            index -= 1
        }
                
        while(j >= 0){
            nums1[index] = nums2[j];
            index -= 1
            j -= 1
        }
    }
