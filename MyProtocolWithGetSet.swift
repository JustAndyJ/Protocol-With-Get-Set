// es obligatorio crear los metodos de un protocoles para confromar de el

 
protocol MyProtocol {
  var mustBeSettable: Int { get set }
  var doesNotNeedToBeSettable: Int { get }
  
}

struct SomeStruct: MyProtocol {
  var doesNotNeedToBeSettable: Int
  var mustBeSettable: Int
}

var comeStruct: MyProtocol = SomeStruct(doesNotNeedToBeSettable: 1, mustBeSettable: 2)
print(comeStruct.mustBeSettable)
print(comeStruct.mustBeSettable = 5)
print(comeStruct.mustBeSettable)
print(comeStruct.doesNotNeedToBeSettable)
 
class SomeClass: MyProtocol {
  var doesNotNeedToBeSettable = 0
  var mustBeSettable = 0
}



protocol SomeOtherProtocol {
  static var someTypeProperty: Int { get set }
}

protocol Shippeable {
  var street : String { get }
  var city: String { get }
  var zip: String { get }
}

struct Product: Shippeable {
  var id: String
  var name: String
  var street: String
  var city: String
  var zip: String
}


protocol Calculable {
  func calculate() -> String
}

struct Calculator: Calculable {
  func calculate() -> String {
    return ""
  }
}
 

protocol Initializable {
  init(parameterOne: String, parameterTwo: String)
  init(parameterOne: String)
}

struct User: Initializable {
  init(parameterOne: String) {
    
  }
  init(parameterOne: String, parameterTwo: String) {
    
  }
}

protocol Animatable {
  func animate()
}

extension Animatable {
  func animate() {
    print("Start animation...")
  }
}

class MyCustomView: Animatable {
  
}

let myView = MyCustomView()
myView.animate()

