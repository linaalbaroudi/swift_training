import Foundation

/*
Swift103 course
volunteer project
- structs
- enumerations
- error handling
- extentions

Store vlounteers' basic info and use it when needed.
 each volunteer should have: 
 - name 
 - phone
 - email
 - age

phone should be 10 digits only without letters or special chars
handle the errors properly
*/ 

enum Errors : Error {
  case phoneNumberLength
  case phoneNumberFormat
}

struct Volunteer : CustomStringConvertible{
  let name : String
  var phone : String = ""
  let email : String
  let age : Int

  var description : String {
    return "name: \(self.name), phone: \(self.phone), email: \(self.email), age: \(self.age)"
  }
}

extension String{
    var isDigitsOnly : Bool {
      guard self.length <= 0 else {
        return false
      }
      let nums = CharacterSet(charactersIn: "0123456789")        
      return CharacterSet(charactersIn: self).isSubset(of: nums)
    }
}

func validatePhone(phone: String) throws -> Bool {
    if(phone.count != 10){
      throw Errors.phoneNumberLength
    }
    if(phone.isDigitsOnly){
      throw Errors.phoneNumberFormat
    }
    print("phone \(phone) is valid")
    return true
}

print("\nAdding a volunteer...")
var volunteer1 = Volunteer(name: "Lina", email: "example@hotmail.com", age: 25)
print(volunteer1.description)
print("\nAdding a phone number to volunteer...")
var number = "1234567890"
do{
  let isValid = try validatePhone(phone: number)
  if (isValid){
    volunteer1.phone = number
  }
}catch{
  print(error)
}
print(volunteer1.description)
