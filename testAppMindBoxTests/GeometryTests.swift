//
//  GeometryTests.swift
//  testAppMindBoxTests
//
//  Created by Islam Baigaziev on 12/2/24.
//

import XCTest
@testable import testAppMindBox

// Юнит-тесты с использованием XCTest
class GeometryTests: XCTestCase {
    func testCircleArea() {
        let circle = Circle(radius: 5)
        XCTAssertEqual(circle.area, 78.54, accuracy: 0.01, "Неверная площадь круга")
    }

    func testTriangleArea() {
        let triangle = Triangle(sideA: 3, sideB: 4, sideC: 5)
        XCTAssertEqual(triangle.area, 6, accuracy: 0.01, "Неверная площадь треугольника")
        XCTAssertTrue(triangle.isRightAngled, "Треугольник должен быть прямоугольным")
    }

    func testSquareArea() {
        let square = Square(side: 4)
        XCTAssertEqual(square.area, 16, accuracy: 0.01, "Неверная площадь квадрата")
    }
}
