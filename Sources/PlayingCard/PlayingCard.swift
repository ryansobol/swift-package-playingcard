public struct PlayingCard {
  let rank: Rank
  let suit: Suit

  public init(rank: Rank, suit: Suit) {
    self.rank = rank
    self.suit = suit
  }
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

extension PlayingCard: Hashable {
  public var hashValue: Int {
    return description.hashValue
  }
}
