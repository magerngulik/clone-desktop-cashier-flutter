import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controller/promos_controller.dart';

class PromosView extends ConsumerWidget {
  const PromosView({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    PromosController controller = ref.watch(promosController);
    controller.view = this;
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Promos'),
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