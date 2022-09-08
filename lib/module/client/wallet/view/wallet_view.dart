import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controller/wallet_controller.dart';

class WalletView extends ConsumerWidget {
  const WalletView({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    WalletController controller = ref.watch(walletController);
    controller.view = this;
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Wallet'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              //body
            ],
          ),
        ),
      ),
    );
  }
}