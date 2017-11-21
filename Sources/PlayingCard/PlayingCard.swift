public struct PlayingCard {
  let rank: Rank
  let suit: Suit
}

extension PlayingCard: CustomStringConvertible {
  public var description: String {
    return "\(rank)\(suit)"
  }
}

extension PlayingCard: Equatable {
  public static func ==(lhs: PlayingCard, rhs: PlayingCard) -> Bool {
    return lhs.rank == rhs.rank && lhs.suit == rhs.suit
  }
}

extension PlayingCard: Comparable {
  public static func <(lhs: PlayingCard, rhs: PlayingCard) -> Bool {
    return lhs.rank == rhs.rank ? lhs.suit < rhs.suit : lhs.rank < rhs.rank
  }
}
