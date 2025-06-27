import 'package:customersupportmodule/modules/chatservices/view/screens/chatservise_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class contactUs extends StatefulWidget {
  const contactUs({super.key});

  @override
  State<contactUs> createState() => _contactUsState();
}

class _contactUsState extends State<contactUs> {
  @override
  int selectedQuestionIndex = -1;
  final List<String> faqs = [
    "customer service",
    "website",
    "facebook",
    "whatsapp",
    "instagram",
  ];
  final List<IconData> icons = [
    FontAwesomeIcons.headset,
    FontAwesomeIcons.globe,
    FontAwesomeIcons.facebook,
    FontAwesomeIcons.whatsapp,
    FontAwesomeIcons.instagram,
  ];
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        final isExpanded = selectedQuestionIndex == index;

        return ExpansionTile(
          initiallyExpanded: isExpanded,
          onExpansionChanged: (expanded) {
            setState(() {
              selectedQuestionIndex = expanded ? index : -1;
            });
          },
          leading: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: !isExpanded ? Color(0xFFF4B5A4) : Color(0xFFFAE8E2),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
              icons[index],
              color: isExpanded
                  ? Color(0xFF363130)
                  : Color.fromARGB(255, 0, 0, 0),
            ),
          ),
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
              child: selectedQuestionIndex == 0
                  ? ElevatedButton(
                      onPressed: () {
                        Get.to(() => ChatScreen());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text(
                        'Contact Customer Service',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pellentesque congue lorem, vel tincidunt tortor placerat a. Proin ac diam quam. Aenean in sagittis magna, ut feugiat diam.',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        height: 1.5,
                      ),
                    ),
            ),
          ],
        );
      },
    );
  }
}
