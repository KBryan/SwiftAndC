import UIKit
import Foundation

class ViewController: UIViewController {
    
    var numbers = [2,4,56,67,23,43,12,45,27]
    var myStrings = ["HELLO", "hello", "WORLD", "world"]

    override func viewDidLoad() {
        super.viewDidLoad()
        quickSortGeneric(numbers)
    }

    func quickSortGeneric<A:Comparable>(var input:[A]) -> ([A]) {
        qsort_b(&input, input.count, sizeof(A)) { (lhs, rhs) -> Int32 in
            let left:A = UnsafePointer(lhs).memory
            let right:A = UnsafePointer(rhs).memory
            if left < right { return -1}
            if left == right { return 1}
            return 1
        }
        print(input)
        return input
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

