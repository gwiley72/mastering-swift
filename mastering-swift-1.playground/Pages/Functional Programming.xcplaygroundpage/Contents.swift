/*:
 ### Functional Programming
 Lesson 1 - Swift Review
 */

import Foundation

let deposits = [
    ["app" : 212.0, "check" : 700.0, "ebay" : 0.0, "Other" : 5.00],
    ["check" : 700.0, "Other" : 33.00, "app" : 50.0, "ebay" : 95.0],
    ["Other" : 15.00, "ebay" : 20.0, "check" : 700.0, "app" : 122.2],
    ["check" : 700.0, "app" : 162.0, "Other" : 105.00, "ebay" : 15.0]
]

let withdrawals = [
    ["food" : 80.0, "app" : 15.0, "travel" : 20.0],
    ["app" : 0.0, "food" : 80.0, "travel" : 20.0],
    ["food" : 80.0, "app" : 21.0, "travel" : 20.0],
    ["travel" : 20.0, "food" : 80.0, "app" : 1.0]
]

let partners = [
    "designer"  : 0.10,
    "developer" : 0.20,
    "marketer"  : 0.05
]

// get deposits related to new iOS app
func appTransactions(transactionType:[[String:Double]]) -> Double {
    return transactionType.flatMap { $0["app"] }.reduce(0, combine: +)
}

func payPartners(total:Double) -> Double {
    return partners.flatMap { (_, v) in total * v }.reduce(0, combine: +)
}

func findNetIncome(payPartners: Double -> Double) -> Double {
    let gain = appTransactions(deposits)
    let loss = appTransactions(withdrawals)
    let net = gain - loss
    
    return (net - payPartners(net))
}

let income = findNetIncome() { total in
    return payPartners(total)
}

print ("income is $\(income)")
