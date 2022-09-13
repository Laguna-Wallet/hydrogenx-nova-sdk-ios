import Foundation

struct PriceData: Codable, Equatable {
    let price: String
    let usdDayChange: Decimal?
}

extension PriceData {
    static var zero: PriceData {
        PriceData(price: "0", usdDayChange: nil)
    }
    
    var usdDayChangeInDollars: String {
        "\(((Decimal(string: price) ?? 0.0) / 100 * (usdDayChange ?? 0.0)).rounded(2, .plain))"
    }
}
