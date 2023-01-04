import 'package:chatgpt/features/app/app_const/page_constant.dart';
import 'package:chatgpt/features/app/home/widgets/open_ai_service_buttin.dart';
import 'package:chatgpt/utils/app_images.dart';
import 'package:chatgpt/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  UiHelper.verticalSpacing(40),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Image.asset(AppImages.appLogoIcon))
                ],
              ),
              Column(
                children: [
                  OpenAiServiceButton(
                      textData: "Image Generation - OpenAi",
                      iconData: Icons.image_outlined,
                      onTap: () {
                        Navigator.pushNamed(
                            context, PageConst.imageGenerationPage);
                      }),
                  UiHelper.verticalSpacing(30),
                  OpenAiServiceButton(
                      textData: "Text Completion - OpenAi",
                      iconData: Icons.text_fields_outlined,
                      onTap: () {
                        Navigator.pushNamed(
                            context, PageConst.imageGenerationPage);
                      }),
                ],
              ),
              const Text("ChatGPT: Optimizing Language Models for Dialog")
            ]),
      ),
    );
  }
}
