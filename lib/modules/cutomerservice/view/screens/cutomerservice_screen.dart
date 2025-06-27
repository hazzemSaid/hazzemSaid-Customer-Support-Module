import 'package:customersupportmodule/core/constanse/AppTextStyles.dart';
import 'package:customersupportmodule/modules/HelpAndFAQsView/view/screens/HelpAndFAQsView_screen.dart';
import 'package:customersupportmodule/modules/chatservices/view/screens/chatservise_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CutomerserviceScreen extends StatelessWidget {
  const CutomerserviceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Customer Service',
                  style: AppTextStyles.heading2.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Hello,I\' m here to assist you.',
                style: AppTextStyles.bodyMedium.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              Divider(
                color: Theme.of(context).colorScheme.primary,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(height: 20),
              Wrap(
                children: [
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pellentesque congue lorem, vel tincidunt tortor placerat a. Proin ac diam quam. Aenean in sagittis magna, ut feugiat diam.',
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(
                color: Theme.of(context).colorScheme.primary,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(height: 20),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          "How can I help you?",
                          style: AppTextStyles.bodyMedium.copyWith(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: 150,
                          child: Text(
                            textAlign: TextAlign.start,
                            "support",
                            style: AppTextStyles.bodyMedium.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Theme.of(
                                context,
                              ).colorScheme.onSurface.withAlpha(150),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        shape: const CircleBorder(
                          side: BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                      onPressed: () {
                        print("object");
                        Get.to(() => HelpAndFAQsView());
                      },
                      child: Icon(
                        FontAwesomeIcons.chevronRight,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 150,
                          child: Text(
                            "Help center",
                            style: AppTextStyles.bodyMedium.copyWith(
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: 150,
                          child: Text(
                            textAlign: TextAlign.start,
                            "General information",
                            style: AppTextStyles.bodyMedium.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Theme.of(
                                context,
                              ).colorScheme.onSurface.withAlpha(150),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        shape: const CircleBorder(
                          side: BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                      onPressed: () {
                        Get.to(() => ChatserviseScreen());
                      },
                      child: Icon(
                        FontAwesomeIcons.chevronRight,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
