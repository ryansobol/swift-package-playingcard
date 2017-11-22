import XCTest
@testable import PlayingCard

class PlayingCardTests: XCTestCase {
  func testPlayingCardStringEquality() {
    let card1 = PlayingCard(rank: .jack, suit: .clubs)
    let card2 = PlayingCard(rank: .two, suit: .hearts)
    let card3 = PlayingCard(rank: .queen, suit: .diamonds)

    XCTAssertEqual(String(describing: card1), "J♣︎")
    XCTAssertEqual(String(describing: card2), "2♡")
    XCTAssertEqual(String(describing: card3), "Q♢")
  }

  func testPlayingCardEquality() {
    let card1 = PlayingCard(rank: .queen, suit: .diamonds)
    let card2 = PlayingCard(rank: .queen, suit: .diamonds)

    XCTAssertEqual(card1, card2)
  }

  func testPlayingCardComparable() {
    let card1 = PlayingCard(rank: .queen, suit: .diamonds)
    let card2 = PlayingCard(rank: .king, suit: .diamonds)
    let card3 = PlayingCard(rank: .ace, suit: .clubs)
    let card4 = PlayingCard(rank: .queen, suit: .diamonds)
    let card5 = PlayingCard(rank: .queen, suit: .clubs)

    XCTAssertGreaterThan(card2, card1)
    XCTAssertGreaterThan(card3, card2)
    XCTAssertGreaterThan(card4, card5)
  }
}
