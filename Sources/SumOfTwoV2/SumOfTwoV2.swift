func sumOfTwo(_ array: [Int], _ target: Int) -> [Int] {
    guard array.count > 1 else { return [] }
    var leftPtr = 0, rightPtr = array.count - 1
    var diff = Int.max
    var iIndex = 0, jIndex = 0
    while rightPtr > leftPtr {
        if abs(array[leftPtr] + array[rightPtr] - target) < diff {
            iIndex = leftPtr
            jIndex = rightPtr
            diff = abs(array[leftPtr] + array[rightPtr] - target)
        }
        if array[leftPtr] + array[rightPtr] > target {
            rightPtr -= 1
        } else {
            leftPtr += 1
        }
    }
    return [array[iIndex], array[jIndex]]
}
