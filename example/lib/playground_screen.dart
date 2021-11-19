import 'package:deso_sdk/deso_sdk.dart';
import 'package:flutter/material.dart';

class PlaygroundScreen extends StatefulWidget {
  const PlaygroundScreen({Key? key}) : super(key: key);

  @override
  State<PlaygroundScreen> createState() => _PlaygroundScreenState();
}

class _PlaygroundScreenState extends State<PlaygroundScreen> {
  // Instantiate DeSo SDK Object
  final deso = Deso();

  // Result TextEditingController
  final resultAreaController = TextEditingController();

  // Generic API call function
  void call(Future function) async {
    debugPrint('requesting...');
    resultAreaController.text = 'requesting...';

    final result = await function;

    result.fold(
      (apiError) {
        final text = apiError.toJson().toString();
        resultAreaController.text = text;
        debugPrint(text);
      },
      (object) {
        final text = object.toJson().toString();
        resultAreaController.text = text;
        debugPrint(text);
      },
    );

    debugPrint('request done');
  }

  @override
  void initState() {
    super.initState();

    // Optional - Set DeSo Node host
    deso.client.init(
      host: 'diamondapp.com',
      apiVersion: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DeSo SDK Playground",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: TextField(
        controller: resultAreaController,
        minLines: 2,
        maxLines: 5,
        decoration: const InputDecoration(
          hintText: 'Result Area',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text('App State'),
                onPressed: () => call(deso.general.appState()),
              ),
              const Divider(),
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text('Exchange Rate'),
                onPressed: () => call(deso.general.exchangeRate()),
              ),
              const Divider(),
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text('Profiles'),
                onPressed: () => call(deso.general.appState()),
              ),
              const Divider(),
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text('Single Profile'),
                onPressed: () => call(deso.general.appState()),
              ),
              const Divider(),
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text('Diamonds for Public Key'),
                onPressed: () => call(deso.general.appState()),
              ),
              const Divider(),
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text('Posts for Public Key'),
                onPressed: () => call(deso.general.appState()),
              ),
              const Divider(),
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text('Holders for Public Key'),
                onPressed: () => call(deso.general.appState()),
              ),
              const Divider(),
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text('Single Post'),
                onPressed: () => call(deso.general.appState()),
              ),
              const Divider(),
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text('Posts'),
                onPressed: () => call(deso.general.appState()),
              ),
              const Divider(),
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text('Likes for Post'),
                onPressed: () => call(deso.general.appState()),
              ),
              const Divider(),
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text('Diamonds for Post'),
                onPressed: () => call(deso.general.appState()),
              ),
              const Divider(),
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text('Reposts for Post'),
                onPressed: () => call(deso.general.appState()),
              ),
              const Divider(),
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text('Quote Reposts for Post'),
                onPressed: () => call(deso.general.appState()),
              ),
              const Divider(),
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text('Followers'),
                onPressed: () => call(deso.general.appState()),
              ),
              const Divider(),
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text('Followings'),
                onPressed: () => call(deso.general.appState()),
              ),
              const Divider(),
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text('Users'),
                onPressed: () => call(deso.general.appState()),
              ),
              const Divider(),
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text('User Global Metadata'),
                onPressed: () => call(deso.general.appState()),
              ),
              const Divider(),
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text('Like Post'),
                onPressed: () => call(deso.general.appState()),
              ),
              const Divider(),
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text('Follow User'),
                onPressed: () => call(deso.general.appState()),
              ),
              const Divider(),
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text('Submit Transaction'),
                onPressed: () => call(deso.general.appState()),
              ),
              const Divider(),
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text('NFT entries for Post'),
                onPressed: () => call(deso.general.appState()),
              ),
              const Divider(),
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text('NFT bids for Post'),
                onPressed: () => call(deso.general.appState()),
              ),
              const Divider(),
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: const Text('NFTs for User'),
                onPressed: () => call(deso.general.appState()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
