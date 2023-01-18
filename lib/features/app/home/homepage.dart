import 'package:chatgpt/features/app/home/widgets/open_ai_service_buttin.dart';
import 'package:chatgpt/features/image_generation/presentation/pages/text_completion_page.dart';
import 'package:flutter/material.dart';

import '../../image_generation/presentation/pages/text_completion_page.dart';
import '../app_const/page_constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Image.asset("assets/app_logo.png"),
              ],
            ),
            Column(
              children: [
                HomeButtonWidget(
                  textData: "Image Generation - OpenAI",
                  iconData: Icons.image_outlined,
                  onTap: () {
                    Navigator.pushNamed(context, PageConst.textCompletionPage);
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                HomeButtonWidget(
                  textData: "Text Completion - OpenAI",
                  iconData: Icons.text_fields_outlined,
                  onTap: () {
                    Navigator.pushNamed(context, PageConst.textCompletionPage);
                  },
                ),
              ],
            ),
            Text(
              "ChatGPT: Optimizing Language Models for Dialogue",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
