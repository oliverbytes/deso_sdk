import 'api/api.dart' as api;
import 'api/deso_http_client.dart';

class Deso {
  // SINGLETON
  static final Deso _singleton = Deso._internal();

  // FACTORY
  factory Deso() => _singleton;

  // VARIABLES
  late DesoHttpClient client;

  // ADMIN
  late api.AdminFeedApi adminFeed;
  late api.AdminNodeApi adminNode;
  late api.AdminTransactionApi adminTransaction;
  late api.AdminUserApi adminUser;

  // NON-ADMIN
  late api.GeneralApi general;
  late api.MediaApi media;
  late api.MessageApi message;
  late api.MinerApi miner;
  late api.NftApi nft;
  late api.PostApi post;
  late api.TransactionApi transaction;
  late api.UserApi user;
  late api.VerifyApi verify;
  late api.WyreApi wyre;

  Deso._internal() {
    client = DesoHttpClient();

    // ADMIN
    adminFeed = api.AdminFeedApi();
    adminFeed.setClient(client);

    adminNode = api.AdminNodeApi();
    adminNode.setClient(client);

    adminTransaction = api.AdminTransactionApi();
    adminTransaction.setClient(client);

    adminUser = api.AdminUserApi();
    adminUser.setClient(client);

    // NON-ADMIN
    general = api.GeneralApi();
    general.setClient(client);

    media = api.MediaApi();
    media.setClient(client);

    message = api.MessageApi();
    message.setClient(client);

    miner = api.MinerApi();
    miner.setClient(client);

    nft = api.NftApi();
    nft.setClient(client);

    post = api.PostApi();
    post.setClient(client);

    transaction = api.TransactionApi();
    transaction.setClient(client);

    user = api.UserApi();
    user.setClient(client);

    verify = api.VerifyApi();
    verify.setClient(client);

    wyre = api.WyreApi();
    wyre.setClient(client);
  }
}
