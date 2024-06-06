import Foundation

class Bjj {
  enum JSONConversionError: Error {
    case invalidString
  }

  enum BeltRankError: Error {
    case invalidString
  }

  struct Practitioner: Codable {
    let belt: String
    let age: Int
    let weightInPounds: Int
    let heightInInches: Int
  }

  static func parsePractitioner(json: String) throws -> Practitioner {
    guard let jsonData = json.data(using: .utf8) else {
      throw JSONConversionError.invalidString
    }
    let decoder = JSONDecoder()
    let practitioner = try decoder.decode(Practitioner.self, from: jsonData)
    return practitioner
  }

  static func calculateMatchDifficulty(practitioner1: Practitioner, practitioner2: Practitioner) throws -> Float {
    let beltRanks: [String: Int] = ["white": 1, "blue": 2, "purple": 3, "brown": 4, "black": 5 ]
    guard let beltRankP1 = beltRanks[practitioner1.belt] else {
      throw BeltRankError.invalidString
    }
    guard let beltRankP2 = beltRanks[practitioner2.belt] else {
      throw BeltRankError.invalidString
    }

    let beltDifference = beltRankP2 - beltRankP1
    let ageDifference = Float(practitioner1.age - practitioner2.age) / 10.0
    let weightDifference = Float(practitioner2.weightInPounds - practitioner1.weightInPounds) / 20.0
    let heightDifference = Float(practitioner2.heightInInches - practitioner1.heightInInches) / 6.0
    print("beltDifference=", beltDifference, ", ageDifference=", ageDifference, ", weightDifference=", weightDifference, ", heightDifference=", heightDifference)

    let totalDifference = Float(beltDifference) + ageDifference + weightDifference + heightDifference

    return totalDifference * -1.0
  }
}
