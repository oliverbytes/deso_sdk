class AppState {
  AppState({
    this.amplitudeKey,
    this.amplitudeDomain,
    this.minSatoshisBurnedForProfileCreation,
    this.blockHeight,
    this.isTestnet,
    this.supportEmail,
    this.showProcessingSpinners,
    this.hasStarterDeSoSeed,
    this.hasTwilioApiKey,
    this.createProfileFeeNanos,
    this.compProfileCreation,
    this.diamondLevelMap,
    this.hasWyreIntegration,
    this.hasJumioIntegration,
    this.buyWithEth,
    this.usdCentsPerDeSoExchangeRate,
    this.jumioDeSoNanos,
    this.transactionFeeMap,
    this.usdCentsPerBitCloutExchangeRate,
    this.jumioBitCloutNanos,
  });

  final String? amplitudeKey;
  final String? amplitudeDomain;
  final int? minSatoshisBurnedForProfileCreation;
  final int? blockHeight;
  final bool? isTestnet;
  final String? supportEmail;
  final bool? showProcessingSpinners;
  final bool? hasStarterDeSoSeed;
  final bool? hasTwilioApiKey;
  final int? createProfileFeeNanos;
  final bool? compProfileCreation;
  final Map<String, int>? diamondLevelMap;
  final bool? hasWyreIntegration;
  final bool? hasJumioIntegration;
  final bool? buyWithEth;
  final int? usdCentsPerDeSoExchangeRate;
  final int? jumioDeSoNanos;
  final TransactionFeeMap? transactionFeeMap;
  final int? usdCentsPerBitCloutExchangeRate;
  final int? jumioBitCloutNanos;

  factory AppState.fromJson(Map<String, dynamic> json) => AppState(
        amplitudeKey: json["AmplitudeKey"],
        amplitudeDomain: json["AmplitudeDomain"],
        minSatoshisBurnedForProfileCreation:
            json["MinSatoshisBurnedForProfileCreation"],
        blockHeight: json["BlockHeight"],
        isTestnet: json["IsTestnet"],
        supportEmail: json["SupportEmail"],
        showProcessingSpinners: json["ShowProcessingSpinners"],
        hasStarterDeSoSeed: json["HasStarterDeSoSeed"],
        hasTwilioApiKey: json["HasTwilioAPIKey"],
        createProfileFeeNanos: json["CreateProfileFeeNanos"],
        compProfileCreation: json["CompProfileCreation"],
        diamondLevelMap: Map.from(json["DiamondLevelMap"])
            .map((k, v) => MapEntry<String, int>(k, v)),
        hasWyreIntegration: json["HasWyreIntegration"],
        hasJumioIntegration: json["HasJumioIntegration"],
        buyWithEth: json["BuyWithETH"],
        usdCentsPerDeSoExchangeRate: json["USDCentsPerDeSoExchangeRate"],
        jumioDeSoNanos: json["JumioDeSoNanos"],
        transactionFeeMap:
            TransactionFeeMap.fromJson(json["TransactionFeeMap"]),
        usdCentsPerBitCloutExchangeRate:
            json["USDCentsPerBitCloutExchangeRate"],
        jumioBitCloutNanos: json["JumioBitCloutNanos"],
      );

  Map<String, dynamic> toJson() => {
        "AmplitudeKey": amplitudeKey,
        "AmplitudeDomain": amplitudeDomain,
        "MinSatoshisBurnedForProfileCreation":
            minSatoshisBurnedForProfileCreation,
        "BlockHeight": blockHeight,
        "IsTestnet": isTestnet,
        "SupportEmail": supportEmail,
        "ShowProcessingSpinners": showProcessingSpinners,
        "HasStarterDeSoSeed": hasStarterDeSoSeed,
        "HasTwilioAPIKey": hasTwilioApiKey,
        "CreateProfileFeeNanos": createProfileFeeNanos,
        "CompProfileCreation": compProfileCreation,
        "DiamondLevelMap": Map.from(diamondLevelMap!)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "HasWyreIntegration": hasWyreIntegration,
        "HasJumioIntegration": hasJumioIntegration,
        "BuyWithETH": buyWithEth,
        "USDCentsPerDeSoExchangeRate": usdCentsPerDeSoExchangeRate,
        "JumioDeSoNanos": jumioDeSoNanos,
        "TransactionFeeMap": transactionFeeMap?.toJson(),
        "USDCentsPerBitCloutExchangeRate": usdCentsPerBitCloutExchangeRate,
        "JumioBitCloutNanos": jumioBitCloutNanos,
      };
}

class TransactionFeeMap {
  TransactionFeeMap({
    this.acceptNftBid,
    this.acceptNftTransfer,
    this.authorizeDerivedKey,
    this.basicTransfer,
    this.bitcoinExchange,
    this.blockReward,
    this.burnNft,
    this.createNft,
    this.creatorCoin,
    this.creatorCoinTransfer,
    this.follow,
    this.like,
    this.nftBid,
    this.nftTransfer,
    this.privateMessage,
    this.submitPost,
    this.swapIdentiy,
    this.unset,
    this.updateBitcoinUsdExchangeRate,
    this.updateGlobalParams,
    this.updateNft,
    this.updateProfile,
  });

  final dynamic acceptNftBid;
  final dynamic acceptNftTransfer;
  final dynamic authorizeDerivedKey;
  final dynamic basicTransfer;
  final dynamic bitcoinExchange;
  final dynamic blockReward;
  final dynamic burnNft;
  final dynamic createNft;
  final dynamic creatorCoin;
  final dynamic creatorCoinTransfer;
  final dynamic follow;
  final dynamic like;
  final dynamic nftBid;
  final dynamic nftTransfer;
  final dynamic privateMessage;
  final dynamic submitPost;
  final dynamic swapIdentiy;
  final dynamic unset;
  final dynamic updateBitcoinUsdExchangeRate;
  final dynamic updateGlobalParams;
  final dynamic updateNft;
  final dynamic updateProfile;

  factory TransactionFeeMap.fromJson(Map<String, dynamic> json) =>
      TransactionFeeMap(
        acceptNftBid: json["ACCEPT_NFT_BID"],
        acceptNftTransfer: json["ACCEPT_NFT_TRANSFER"],
        authorizeDerivedKey: json["AUTHORIZE_DERIVED_KEY"],
        basicTransfer: json["BASIC_TRANSFER"],
        bitcoinExchange: json["BITCOIN_EXCHANGE"],
        blockReward: json["BLOCK_REWARD"],
        burnNft: json["BURN_NFT"],
        createNft: json["CREATE_NFT"],
        creatorCoin: json["CREATOR_COIN"],
        creatorCoinTransfer: json["CREATOR_COIN_TRANSFER"],
        follow: json["FOLLOW"],
        like: json["LIKE"],
        nftBid: json["NFT_BID"],
        nftTransfer: json["NFT_TRANSFER"],
        privateMessage: json["PRIVATE_MESSAGE"],
        submitPost: json["SUBMIT_POST"],
        swapIdentiy: json["SWAP_IDENTIY"],
        unset: json["UNSET"],
        updateBitcoinUsdExchangeRate: json["UPDATE_BITCOIN_USD_EXCHANGE_RATE"],
        updateGlobalParams: json["UPDATE_GLOBAL_PARAMS"],
        updateNft: json["UPDATE_NFT"],
        updateProfile: json["UPDATE_PROFILE"],
      );

  Map<String, dynamic> toJson() => {
        "ACCEPT_NFT_BID": acceptNftBid,
        "ACCEPT_NFT_TRANSFER": acceptNftTransfer,
        "AUTHORIZE_DERIVED_KEY": authorizeDerivedKey,
        "BASIC_TRANSFER": basicTransfer,
        "BITCOIN_EXCHANGE": bitcoinExchange,
        "BLOCK_REWARD": blockReward,
        "BURN_NFT": burnNft,
        "CREATE_NFT": createNft,
        "CREATOR_COIN": creatorCoin,
        "CREATOR_COIN_TRANSFER": creatorCoinTransfer,
        "FOLLOW": follow,
        "LIKE": like,
        "NFT_BID": nftBid,
        "NFT_TRANSFER": nftTransfer,
        "PRIVATE_MESSAGE": privateMessage,
        "SUBMIT_POST": submitPost,
        "SWAP_IDENTIY": swapIdentiy,
        "UNSET": unset,
        "UPDATE_BITCOIN_USD_EXCHANGE_RATE": updateBitcoinUsdExchangeRate,
        "UPDATE_GLOBAL_PARAMS": updateGlobalParams,
        "UPDATE_NFT": updateNft,
        "UPDATE_PROFILE": updateProfile,
      };
}
