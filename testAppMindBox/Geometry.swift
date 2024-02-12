//
//  Geometry.swift
//  testAppMindBox
//
//  Created by Islam Baigaziev on 12/2/24.
//

import Foundation

// Протокол для фигур, которые имеют площадь
protocol AreaCalculable {
    var area: Double { get }
}

// Структура для круга
struct Circle: AreaCalculable {
    var radius: Double

    var area: Double {
        return Double.pi * radius * radius
    }
}

// Структура для треугольника
struct Triangle: AreaCalculable {
    var sideA: Double
    var sideB: Double
    var sideC: Double

    var area: Double {
        let s = (sideA + sideB + sideC) / 2
        return sqrt(s * (s - sideA) * (s - sideB) * (s - sideC))
    }

    // Проверка на прямоугольность треугольника
    var isRightAngled: Bool {
        let sides = [sideA, sideB, sideC].sorted()
        return sides[0] * sides[0] + sides[1] * sides[1] == sides[2] * sides[2]
    }
}

// Добавление других фигур
// Пример добавления квадрата
struct Square: AreaCalculable {
    var side: Double

    var area: Double {
        return side * side
    }
}
