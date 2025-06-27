import 'package:customersupportmodule/modules/HelpAndFAQsView/view/widgets/FAQWidget.dart';
import 'package:customersupportmodule/modules/HelpAndFAQsView/view/widgets/contactUs.dart';
import 'package:flutter/material.dart';

class HelpAndFAQsView extends StatefulWidget {
  const HelpAndFAQsView({super.key});

  @override
  State<HelpAndFAQsView> createState() => _HelpAndFAQsViewState();
}

class _HelpAndFAQsViewState extends State<HelpAndFAQsView> {
  int selectedIndex = 0;

  final List<String> tabs = ["FAQ", "Contact Us"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 16),
                  Text(
                    'Help & FAQs',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'How can we can help you?',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Divider(
                    color: Theme.of(context).colorScheme.primary,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  const SizedBox(height: 20),

                  Wrap(
                    spacing: 40,
                    runSpacing: 18,
                    children: List.generate(tabs.length, (index) {
                      final bool isSelected = selectedIndex == index;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? const Color(0xFFF4B5A4)
                                : const Color(0xFFFAE8E2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            tabs[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: isSelected
                                  ? const Color(0xFF363130)
                                  : const Color(0xFFC2A9A0),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),

                  const SizedBox(height: 10),

                  selectedIndex == 0 ? const FAQWidget() : const contactUs(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
