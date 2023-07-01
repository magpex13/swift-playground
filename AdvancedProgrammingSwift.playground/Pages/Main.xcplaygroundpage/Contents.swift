
import Foundation

enum Table {
  case Indoors
  case Outdoors
  var description: String {
    switch self {
    case .Indoors:
      return "Use circular tables"
    case .Outdoors:
      return "Use rectangular tables"
    }
  }
}

let table = Table.Indoors
print(table.description)

var conejos = Set<String>()
conejos.insert("cone1")
conejos.insert("cone2")
conejos.insert("cone3")
conejos.insert("cone4")
print(conejos.insert("cone4"))

enum Conejo: Int {
    case cone1=2
    case cone2
    case cone3
}

print(Conejo.cone2.rawValue)
