
//https://www.hackerrank.com/challenges/ctci-ransom-note/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=dictionaries-hashmaps



func checkMagazine(magazine: [String], note: [String]) -> Void {
    if magazine.count < note.count{
        print("No")
        return
    }
    var dict = [String:Int]()
    for data in magazine{
        let val = dict[data] ?? 0
        dict[data] = val + 1
    }
    for data in note{
        if let val = dict[data]{
            if val == 0{
                print("No")
                return
            }
            dict[data] = val - 1
        }else{
            print("No")
            return
        }
      
    }
        print("Yes")
}
