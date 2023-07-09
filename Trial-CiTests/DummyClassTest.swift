//
//  DummyClassTest.swift
//  Trial-CiTests
//
//  Created by Icung on 09/07/23.
//

import XCTest
@testable import Trial_Ci

final class DummyClassTest: XCTestCase {
  var sut: DummyClass!
  
  override func setUp() {
    super.setUp()
      sut = DummyClass()
  }
  
  override func tearDown() {
      sut = nil
    super.tearDown()
  }
  
  func testSub() {
    let result = sut.sub(a: 1, b: 2)
    XCTAssertEqual(result, 3, "Should return 3 for sut.sub(a: 1, b: 2)")
  }
}
