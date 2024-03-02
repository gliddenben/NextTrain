import Foundation
import SwiftUI

enum MTALine {
  case oneTwoThree
  case fourFiveSix
  case seven
  case ace
  case bdfm
  case g
  case jz
  case l
  case nqrw
  case s
}

func getColorForLine(line: MTALine) -> Color {
  switch line {
  case .oneTwoThree:
    return Color(UIColor(named: "MTAColors/123")!)
  case .fourFiveSix:
    return Color(UIColor(named: "MTAColors/456")!)
  case .seven:
    return Color(UIColor(named: "MTAColors/7")!)
  case .ace:
    return Color(UIColor(named: "MTAColors/ACE")!)
  case .bdfm:
    return Color(UIColor(named: "MTAColors/BDFM")!)
  case .g:
    return Color(UIColor(named: "MTAColors/G")!)
  case .jz:
    return Color(UIColor(named: "MTAColors/JZ")!)
  case .l:
    return Color(UIColor(named: "MTAColors/L")!)
  case .nqrw:
    return Color(UIColor(named: "MTAColors/NQRW")!)
  case .s:
    return Color(UIColor(named: "MTAColors/S")!)
  }
}

enum MTATrain {
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case a
    case c
    case e
    case b
    case d
    case f
    case m
    case g
    case j
    case z
    case l
    case n
    case q
    case r
    case w
    case s
}

func getLineForTrain(train: MTATrain) -> MTALine {
    switch train {
    case .a, .c, .e:
        return .ace
    case .one, .two, .three:
        return .oneTwoThree
    case .four, .five, .six:
        return .fourFiveSix
    case .seven:
        return MTALine.seven
    case .b, .d, .f, .m:
        return .bdfm
    case .g:
        return MTALine.g
    case .j, .z:
        return .jz
    case .l:
        return MTALine.l
    case .n, .q, .r, .w:
        return .nqrw
    case .s:
        return MTALine.s
    }
}

func getColorForTrain(train: MTATrain) -> Color {
    let line = getLineForTrain(train: train)
    return getColorForLine(line: line)
}
