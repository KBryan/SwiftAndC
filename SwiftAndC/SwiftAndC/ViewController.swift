import UIKit
import Foundation

class ViewController: UIViewController {
    
    var numbers = [2,4,56,67,23,43,12,45,27]
    var myStrings = ["HELLO", "hello", "WORLD", "world"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(quickSort(&numbers))
        print(quickSortString(&myStrings))
    }
    func quickSort(inout input:[Int]) -> ([Int]) {
        
        qsort(&input, input.count, sizeof(Int)) { (lhs, rhs) -> Int32 in
            // do our magic
            let left:Int = UnsafePointer(lhs).memory
            let right:Int = UnsafePointer(rhs).memory
            
            if left < right {
                return -1
            }
            if left == right {
                return 1
            }
            return 1
        }
        print(input)
        return input
    }
    func quickSortString(inout input:[String]) -> ([String]) {
        
        qsort(&input, input.count, sizeof(String)) { (lhs, rhs) -> Int32 in
            // do our magic
            let left:String = UnsafePointer(lhs).memory
            let right:String = UnsafePointer(rhs).memory
            
            if left < right {
                return -1
            }
            if left == right {
                return 1
            }
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

