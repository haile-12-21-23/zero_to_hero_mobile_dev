import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zero_to_hero_mobile_dev/state_management_phase/day_27_provider_and_riverpod/providers/counter_provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Provider Counter",
          style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Text(
          '${counterProvider.counter}',
          style: GoogleFonts.abyssinicaSil(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              counterProvider.increment();
            },
            child: Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              counterProvider.decrement();
            },
            child: Icon(Icons.remove),
          ),
          const SizedBox(height: 10),

          FloatingActionButton(
            onPressed: () {
              counterProvider.reset();
            },
            child: Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
