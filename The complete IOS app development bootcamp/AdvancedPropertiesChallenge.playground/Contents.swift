import UIKit

var width: Float = 1.5
var height: Float = 2.3

var bucketsOfPaint: Int {
    
    get {
    let area = width * height
    let areaCoveredPerBucket: Float = 1.5
    let numberOfBuckets = area / areaCoveredPerBucket
    let roundedBuckets = ceilf(numberOfBuckets)
    return Int(roundedBuckets)
    }
    
    set {
        let areaCoveredPerBucket: Float = 1.5
        let totalArea = Float(newValue) * areaCoveredPerBucket
        print(totalArea)
    }
    
}

bucketsOfPaint = 4


