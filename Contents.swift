func strWithCounts(string: String) {
    
    var prev = String(string.prefix(1))
    var res = "" + String(string.prefix(1))
    var counter = 0
    
    for char in string {
        if String(char) == prev {
            counter += 1
        } else {
            res += String(counter)
            res += String(char)
            counter = 1
            prev = String(char)
        }
    }
    res += String(counter)

    if string.count <= res.count {
        print(string)
    } else {
        print(res)
    }
}


strWithCounts(string: "aabbbcc")
