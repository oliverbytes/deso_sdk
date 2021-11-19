//  class MessagesStateless {
//     MessagesStateless({
//         this.publicKeyToProfileEntry,
//         this.orderedContactsWithMessages,
//         this.unreadStateByContact,
//         this.numberOfUnreadThreads,
//     });

//     final Map<String, PublicKeyToProfileEntry> publicKeyToProfileEntry;
//     final List<OrderedContactsWithMessage> orderedContactsWithMessages;
//     final Map<String, bool> unreadStateByContact;
//     final int numberOfUnreadThreads;

//     factory MessagesStateless.fromJson(Map<String, dynamic> json) => MessagesStateless(
//         publicKeyToProfileEntry: Map.from(json["PublicKeyToProfileEntry"]).map((k, v) => MapEntry<String, PublicKeyToProfileEntry>(k, PublicKeyToProfileEntry.fromJson(v))),
//         orderedContactsWithMessages: List<OrderedContactsWithMessage>.from(json["OrderedContactsWithMessages"].map((x) => OrderedContactsWithMessage.fromJson(x))),
//         unreadStateByContact: Map.from(json["UnreadStateByContact"]).map((k, v) => MapEntry<String, bool>(k, v)),
//         numberOfUnreadThreads: json["NumberOfUnreadThreads"],
//     );

//     Map<String, dynamic> toJson() => {
//         "PublicKeyToProfileEntry": Map.from(publicKeyToProfileEntry).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
//         "OrderedContactsWithMessages": List<dynamic>.from(orderedContactsWithMessages.map((x) => x.toJson())),
//         "UnreadStateByContact": Map.from(unreadStateByContact).map((k, v) => MapEntry<String, dynamic>(k, v)),
//         "NumberOfUnreadThreads": numberOfUnreadThreads,
//     };
// }

// class OrderedContactsWithMessage {
//     OrderedContactsWithMessage({
//         this.publicKeyBase58Check,
//         this.messages,
//         this.profileEntryResponse,
//         this.numMessagesRead,
//     });

//     final String publicKeyBase58Check;
//     final List<Message> messages;
//     final PublicKeyToProfileEntry profileEntryResponse;
//     final int numMessagesRead;

//     factory OrderedContactsWithMessage.fromJson(Map<String, dynamic> json) => OrderedContactsWithMessage(
//         publicKeyBase58Check: json["PublicKeyBase58Check"],
//         messages: List<Message>.from(json["Messages"].map((x) => Message.fromJson(x))),
//         profileEntryResponse: PublicKeyToProfileEntry.fromJson(json["ProfileEntryResponse"]),
//         numMessagesRead: json["NumMessagesRead"],
//     );

//     Map<String, dynamic> toJson() => {
//         "PublicKeyBase58Check": publicKeyBase58Check,
//         "Messages": List<dynamic>.from(messages.map((x) => x.toJson())),
//         "ProfileEntryResponse": profileEntryResponse.toJson(),
//         "NumMessagesRead": numMessagesRead,
//     };
// }

// class Message {
//     Message({
//         this.senderPublicKeyBase58Check,
//         this.recipientPublicKeyBase58Check,
//         this.encryptedText,
//         this.tstampNanos,
//         this.isSender,
//         this.v2,
//     });

//     final SenderPublicKeyBase58Check senderPublicKeyBase58Check;
//     final String recipientPublicKeyBase58Check;
//     final String encryptedText;
//     final double tstampNanos;
//     final bool isSender;
//     final bool v2;

//     factory Message.fromJson(Map<String, dynamic> json) => Message(
//         senderPublicKeyBase58Check: senderPublicKeyBase58CheckValues.map[json["SenderPublicKeyBase58Check"]],
//         recipientPublicKeyBase58Check: json["RecipientPublicKeyBase58Check"],
//         encryptedText: json["EncryptedText"],
//         tstampNanos: json["TstampNanos"].toDouble(),
//         isSender: json["IsSender"],
//         v2: json["V2"],
//     );

//     Map<String, dynamic> toJson() => {
//         "SenderPublicKeyBase58Check": senderPublicKeyBase58CheckValues.reverse[senderPublicKeyBase58Check],
//         "RecipientPublicKeyBase58Check": recipientPublicKeyBase58Check,
//         "EncryptedText": encryptedText,
//         "TstampNanos": tstampNanos,
//         "IsSender": isSender,
//         "V2": v2,
//     };
// }
