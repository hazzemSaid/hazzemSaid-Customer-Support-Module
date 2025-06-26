import 'package:flutter/material.dart';

class contactUs extends StatelessWidget {
  const contactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Text(
        "Contact Us section will go here.",
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
