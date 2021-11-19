class TransactionResponse {
  TransactionResponse({
    this.tstampNanos,
    this.postHashHex,
    this.totalInputNanos,
    this.changeAmountNanos,
    this.feeNanos,
    this.transaction,
    this.transactionHex,
  });

  final double? tstampNanos;
  final String? postHashHex;
  final int? totalInputNanos;
  final int? changeAmountNanos;
  final int? feeNanos;
  final Transaction? transaction;
  final String? transactionHex;

  factory TransactionResponse.fromJson(Map<String, dynamic> json) =>
      TransactionResponse(
        tstampNanos: json["TstampNanos"],
        postHashHex: json["PostHashHex"],
        totalInputNanos: json["TotalInputNanos"],
        changeAmountNanos: json["ChangeAmountNanos"],
        feeNanos: json["FeeNanos"],
        transaction: Transaction.fromJson(json["Transaction"]),
        transactionHex: json["TransactionHex"],
      );

  Map<String, dynamic> toJson() => {
        "TstampNanos": tstampNanos,
        "PostHashHex": postHashHex,
        "TotalInputNanos": totalInputNanos,
        "ChangeAmountNanos": changeAmountNanos,
        "FeeNanos": feeNanos,
        "Transaction": transaction?.toJson(),
        "TransactionHex": transactionHex,
      };
}

class Transaction {
  Transaction({
    this.txInputs,
    this.txOutputs,
    this.txnMeta,
    this.publicKey,
    this.extraData,
    this.signature,
    this.txnTypeJson,
  });

  final List<TxInput>? txInputs;
  final List<TxOutput>? txOutputs;
  final Map<String, dynamic>? txnMeta;
  final String? publicKey;
  final dynamic extraData;
  final dynamic signature;
  final int? txnTypeJson;

  factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
        txInputs: json["TxInputs"] == null
            ? List.empty()
            : List<TxInput>.from(
                json["TxInputs"].map((x) => TxInput.fromJson(x))),
        txOutputs: json["TxOutputs"] == null
            ? List.empty()
            : List<TxOutput>.from(
                json["TxOutputs"].map((x) => TxOutput.fromJson(x))),
        txnMeta: json["TxnMeta"],
        publicKey: json["PublicKey"],
        extraData: json["ExtraData"],
        signature: json["Signature"],
        txnTypeJson: json["TxnTypeJSON"],
      );

  Map<String, dynamic> toJson() => {
        "TxInputs": List<dynamic>.from(txInputs!.map((x) => x.toJson())),
        "TxOutputs": List<dynamic>.from(txOutputs!.map((x) => x.toJson())),
        "TxnMeta": txnMeta,
        "PublicKey": publicKey,
        "ExtraData": extraData,
        "Signature": signature,
        "TxnTypeJSON": txnTypeJson,
      };
}

class TxInput {
  TxInput({
    this.txId,
    this.index,
  });

  final List<int>? txId;
  final int? index;

  factory TxInput.fromJson(Map<String, dynamic> json) => TxInput(
        txId: json["TxID"] == null
            ? List.empty()
            : List<int>.from(json["TxID"].map((x) => x)),
        index: json["Index"],
      );

  Map<String, dynamic> toJson() => {
        "TxID": List<dynamic>.from(txId!.map((x) => x)),
        "Index": index,
      };
}

class TxOutput {
  TxOutput({
    this.publicKey,
    this.amountNanos,
  });

  final String? publicKey;
  final int? amountNanos;

  factory TxOutput.fromJson(Map<String, dynamic> json) => TxOutput(
        publicKey: json["PublicKey"],
        amountNanos: json["AmountNanos"],
      );

  Map<String, dynamic> toJson() => {
        "PublicKey": publicKey,
        "AmountNanos": amountNanos,
      };
}
