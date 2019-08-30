//https://www.hackerrank.com/challenges/two-strings/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=dictionaries-hashmaps


func twoStrings(s1: String, s2: String) -> String {
    if Set(s1).intersection(Set(s2)).isEmpty {
         return "NO"
    }else{
         return "YES"
    } 
}
