import '../models/../transaction/transaction.model.dart';

class SubmitTransaction {
  SubmitTransaction({
    this.transaction,
    this.txnHashHex,
    this.postEntryResponse,
  });

  final Transaction? transaction;
  final String? txnHashHex;
  final dynamic postEntryResponse;

  factory SubmitTransaction.fromJson(Map<String, dynamic> json) =>
      SubmitTransaction(
        transaction: Transaction.fromJson(json["Transaction"]),
        txnHashHex: json["TxnHashHex"],
        postEntryResponse: json["PostEntryResponse"],
      );

  Map<String, dynamic> toJson() => {
        "Transaction": transaction?.toJson(),
        "TxnHashHex": txnHashHex,
        "PostEntryResponse": postEntryResponse,
      };
}
