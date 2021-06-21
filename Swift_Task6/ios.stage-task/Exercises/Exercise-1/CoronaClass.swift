import Foundation

class CoronaClass {
 
     var seats = [Int]()
     let n: Int
        
     init(n: Int) {
        self.n = n
     }
     
     func seat() -> Int {
        var resultSeat = 0
        var gap = 0
        
        if !seats.contains(n - 1) {
            resultSeat = n - 1
        }
        if seats.contains(0) {
            var i = 0
            repeat{
                let buff = abs(seats[i + 1] - seats[i]) / 2
                if buff > gap {
                    gap = buff
                    resultSeat = seats[i] + buff
                }
                i += 1
            } while i < seats.count - 1
            
        }
        seats.append(resultSeat)
        seats.sort()
        return resultSeat
     }
     
     func leave(_ p: Int) {
        if seats.contains(p) {
            seats.remove(at: seats.firstIndex(of: p)!)
        }
     }
}
