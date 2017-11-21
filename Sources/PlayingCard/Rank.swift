public enum Rank: Int {
  case two = 2
  case three, four, five, six, seven, eight, nine, ten
  case jack, queen, king, ace
}

extension Rank: CustomStringConvertible {
  public var description: String {
    switch self {
    case .ace: return "A"
    case .king: return "K"
    case .queen: return "Q"
    case .jack: return "J"
    default:
      return String(rawValue)
    }
  }
}

extension Rank: Comparable {
  public static func <(lhs: Rank, rhs: Rank) -> Bool {
    return lhs.rawValue < rhs.rawValue
  }
}
