import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_provider_counter/providers/counter_provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Example App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have pushed the button this many times: ${context.watch<Counter>().count}'),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: const Key('decrement_floatingActionButton'),
            onPressed: () => context
                .read<Counter>()
                .decrement(), // call the decrement method using the Counter provider
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            key: const Key('reset_floatingActionButton'),
            onPressed: () => context
                .read<Counter>()
                .reset(), // call the reset method using the Counter provider
            tooltip: 'Reset',
            child: const Icon(Icons.exposure_zero),
          ),
          const SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            key: const Key('increment_floatingActionButton'),
            onPressed: () => context
                .read<Counter>()
                .increment(), // call the increment method using the Counter provider
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
