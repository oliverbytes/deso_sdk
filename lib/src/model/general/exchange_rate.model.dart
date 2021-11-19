class ExchangeRate {
  ExchangeRate({
    this.satoshisPerDeSoExchangeRate,
    this.usdCentsPerBitcoinExchangeRate,
    this.nanosPerEthExchangeRate,
    this.usdCentsPerEthExchangeRate,
    this.nanosSold,
    this.usdCentsPerDeSoExchangeRate,
    this.usdCentsPerDeSoReserveExchangeRate,
    this.buyDeSoFeeBasisPoints,
    this.satoshisPerBitCloutExchangeRate,
    this.usdCentsPerBitCloutExchangeRate,
    this.usdCentsPerBitCloutReserveExchangeRate,
  });

  final int? satoshisPerDeSoExchangeRate;
  final int? usdCentsPerBitcoinExchangeRate;
  final int? nanosPerEthExchangeRate;
  final int? usdCentsPerEthExchangeRate;
  final int? nanosSold;
  final int? usdCentsPerDeSoExchangeRate;
  final int? usdCentsPerDeSoReserveExchangeRate;
  final int? buyDeSoFeeBasisPoints;
  final int? satoshisPerBitCloutExchangeRate;
  final int? usdCentsPerBitCloutExchangeRate;
  final int? usdCentsPerBitCloutReserveExchangeRate;

  factory ExchangeRate.fromJson(Map<String, dynamic> json) => ExchangeRate(
        satoshisPerDeSoExchangeRate: json["SatoshisPerDeSoExchangeRate"],
        usdCentsPerBitcoinExchangeRate: json["USDCentsPerBitcoinExchangeRate"],
        nanosPerEthExchangeRate: json["NanosPerETHExchangeRate"],
        usdCentsPerEthExchangeRate: json["USDCentsPerETHExchangeRate"],
        nanosSold: json["NanosSold"],
        usdCentsPerDeSoExchangeRate: json["USDCentsPerDeSoExchangeRate"],
        usdCentsPerDeSoReserveExchangeRate:
            json["USDCentsPerDeSoReserveExchangeRate"],
        buyDeSoFeeBasisPoints: json["BuyDeSoFeeBasisPoints"],
        satoshisPerBitCloutExchangeRate:
            json["SatoshisPerBitCloutExchangeRate"],
        usdCentsPerBitCloutExchangeRate:
            json["USDCentsPerBitCloutExchangeRate"],
        usdCentsPerBitCloutReserveExchangeRate:
            json["USDCentsPerBitCloutReserveExchangeRate"],
      );

  Map<String, dynamic> toJson() => {
        "SatoshisPerDeSoExchangeRate": satoshisPerDeSoExchangeRate,
        "USDCentsPerBitcoinExchangeRate": usdCentsPerBitcoinExchangeRate,
        "NanosPerETHExchangeRate": nanosPerEthExchangeRate,
        "USDCentsPerETHExchangeRate": usdCentsPerEthExchangeRate,
        "NanosSold": nanosSold,
        "USDCentsPerDeSoExchangeRate": usdCentsPerDeSoExchangeRate,
        "USDCentsPerDeSoReserveExchangeRate":
            usdCentsPerDeSoReserveExchangeRate,
        "BuyDeSoFeeBasisPoints": buyDeSoFeeBasisPoints,
        "SatoshisPerBitCloutExchangeRate": satoshisPerBitCloutExchangeRate,
        "USDCentsPerBitCloutExchangeRate": usdCentsPerBitCloutExchangeRate,
      };
}
