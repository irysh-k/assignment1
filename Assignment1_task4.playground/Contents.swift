import Foundation

//#4
func printAddress (address: String) {
    //Is "passUnretained" for the reference types?
    print("\"\(address)\" memory address: \(Unmanaged.passUnretained(address as AnyObject).toOpaque())")
    //unsafeAddressOf doesn't work
    //print(" str value \(address) has address: \(unsafeAddressOf(address))")
}

var greeting = "Hello"
var second_greeting = greeting
var third_greeting = greeting
var fourth_greeting = greeting

printAddress(address: greeting)
printAddress(address: second_greeting)
printAddress(address: third_greeting)
printAddress(address: fourth_greeting)

//result: all 4 addresses are the same

second_greeting = "Hey!"

printAddress(address: second_greeting)

//result: second adddress is different

