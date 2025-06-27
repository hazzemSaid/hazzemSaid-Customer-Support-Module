import 'package:flutter/material.dart';

class FAQWidget extends StatefulWidget {
  const FAQWidget({super.key});

  @override
  State<FAQWidget> createState() => _FAQWidgetState();
}

class _FAQWidgetState extends State<FAQWidget> {
  final List<String> tabs = ["General", "Account", "Services"];
  int selectedTabIndex = 0;
  int selectedQuestionIndex = -1;

  final Map<String, List<String>> faqQuestions = {
    "General": List.generate(5, (i) => "What is your general policy?"),
    "Account": List.generate(5, (i) => "How to manage my account?"),
    "Services": List.generate(5, (i) => "What services do you offer?"),
  };

  @override
  Widget build(BuildContext context) {
    final selectedTab = tabs[selectedTabIndex];
    final faqs = faqQuestions[selectedTab]!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Wrap(
          children: List.generate(tabs.length, (index) {
            final isSelected = selectedTabIndex == index;

            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedTabIndex = index;
                  selectedQuestionIndex = -1;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: isSelected ? Color(0xFFF4B5A4) : Color(0xFFFAE8E2),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  tabs[index],
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: isSelected ? Color(0xFF363130) : Color(0xFFC2A9A0),
                  ),
                ),
              ),
            );
          }),
        ),

        SizedBox(height: 16),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search FAQs',
              suffixIcon: Icon(Icons.filter_list, color: Color(0xFFBDBDBD)),
              prefixIcon: Icon(Icons.search, color: Color(0xFFBDBDBD)),
              filled: true,
              fillColor: Theme.of(context).colorScheme.primary.withOpacity(0.3),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
            ),
            style: TextStyle(color: Color(0xFF363130)),
          ),
        ),

        SizedBox(height: 20),

        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: faqs.length,
          itemBuilder: (context, index) {
            final isExpanded = selectedQuestionIndex == index;

            return ExpansionTile(
              initiallyExpanded: isExpanded,
              onExpansionChanged: (expanded) {
                setState(() {
                  selectedQuestionIndex = expanded ? index : -1;
                });
              },
              title: Text(
                faqs[index],
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: isExpanded ? Color(0xFF363130) : Color(0xFFC2A9A0),
                ),
              ),
              iconColor: isExpanded ? Color(0xFF363130) : Color(0xFFC2A9A0),
              collapsedIconColor: Color(0xFFC2A9A0),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'This is the detailed answer to the question. You can provide more information about the topic here.',
                    style: TextStyle(fontSize: 14, color: Color(0xFF7A6A63)),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
