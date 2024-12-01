import Foundation
//#5
enum PasswordError: Error {
    case empty
}

func credentialsValidation (username: String, password: String?) throws -> String {
    var usernameValid = false
    var validationResult = ""
    let range = NSRange(location: 0, length: username.utf16.count)
    
    let regex = try! NSRegularExpression(pattern: "^\\S+@\\S+\\.\\S+$")
    if regex.firstMatch(in: username, options: [], range: range) == nil {
        validationResult += "Username email is not valid. "
    }
    
    if password != nil {
        let capitalLetterRegEx  = ".*[A-Z]+.*"
        
        var texttest = NSPredicate(format:"SELF MATCHES %@", capitalLetterRegEx)
        if !texttest.evaluate(with: password) {
            validationResult += "No capital letters in the password. "
        }
        
        let lowercaseLetterRegEx  = ".*[a-z]+.*"
        var texttest1 = NSPredicate(format:"SELF MATCHES %@", lowercaseLetterRegEx)

        if !texttest1.evaluate(with: password) {
            validationResult += "No lowercase letters in the password. "
        }
        
        let specialCharacterRegEx  = ".*[!&^%$#@()/]+.*"
        var texttest2 = NSPredicate(format:"SELF MATCHES %@", specialCharacterRegEx)

        if !texttest2.evaluate(with: password) {
            validationResult += "No special characters in the password. "
        }
        
        if password!.count < 8 {
            validationResult += "Password is shorter than 8 symbols. "
        }
    } else {
        throw PasswordError.empty
    }
    
    return validationResult
}

let userName = "iryna.kravchenko1@gmail"
let password = "HELLO12"

do {
    let result = try credentialsValidation(username: userName, password: password)
    print(result)
} catch {
    print("Password is empty")
}

