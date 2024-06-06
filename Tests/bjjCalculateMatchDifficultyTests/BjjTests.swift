//
//  BjjTests.swift
//  
//
//

import XCTest
@testable import bjjCalculateMatchDifficulty

final class BjjTests: XCTestCase {

  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }

  func testParsePractitioner() throws {
    let json = """
    {
      "belt": "white",
      "age": 42,
      "weightInPounds": 175,
      "heightInInches": 69
    }
    """
    let practitioner = try Bjj.parsePractitioner(json: json)
    XCTAssertEqual(practitioner.belt, "white")
    XCTAssertEqual(practitioner.age, 42)
    XCTAssertEqual(practitioner.weightInPounds, 175)
    XCTAssertEqual(practitioner.heightInInches, 69)
  }

  func testCalculateMatchDifficulty() throws {
    let practitioner1 = Bjj.Practitioner(belt: "white", age: 42, weightInPounds: 175, heightInInches: 69)
    let practitioner2 = Bjj.Practitioner(belt: "blue", age: 32, weightInPounds: 195, heightInInches: 75)
    let result = try Bjj.calculateMatchDifficulty(practitioner1: practitioner1, practitioner2: practitioner2)
    XCTAssertEqual(result, -4.0)
  }

  func testCalculateMatchDifficulty2() throws {
    let practitioner1 = Bjj.Practitioner(belt: "white", age: 42, weightInPounds: 175, heightInInches: 69)
    let practitioner2 = Bjj.Practitioner(belt: "blue", age: 25, weightInPounds: 160, heightInInches: 65)
    let result = try Bjj.calculateMatchDifficulty(practitioner1: practitioner1, practitioner2: practitioner2)
    XCTAssertEqual(result, -1.2833333)
  }
}
