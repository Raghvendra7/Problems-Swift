 func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
   let x = nums1.count
    let y = nums2.count
    if x > y{
        findMedianSortedArrays(nums2, nums1)
    }
    var left = 0
    var right = x
    
    while left <= right{
        let posx = (left+right)/2
        let posy = (x + y + 1)/2 - posx
        let leftx = posx == 0 ? Int.min : nums1[posx - 1]
        let lefty = posy == 0 ? Int.min :nums2[posy - 1]
        let rightx = posx == x ? Int.max : nums1[posx]
        let righty =  posy == y ? Int.max : nums2[posy]
        if (leftx <= righty && lefty <= rightx){
            if (x+y)%2 == 0 {
                return (Double(max(leftx, lefty)) +  Double(min(rightx,righty)))/2
            }else{
                return Double(max(leftx,lefty))
            }
        }
        if leftx > righty{
            right = posx - 1
        }else{
            left = posx + 1
        }
        
    }
    
    return 0.0
 }
