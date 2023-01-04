import 'package:chatgpt/error_screen.dart';
import 'package:chatgpt/features/app/app_const/page_constant.dart';
import 'package:chatgpt/features/image_generation/presentation/pages/text_completion_page.dart';
import 'package:chatgpt/features/text_completion/presentation/pages/text_completion_page.dart';
import 'package:flutter/material.dart';

class OnGenerateRoute {
  static Route<dynamic> route(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        {
          return materialBuilder(widget: const ErrorScreen());
        }
      case PageConst.textCompletionPage:
        {
          return materialBuilder(widget: const TextCompletionPage());
        }
      case PageConst.imageGenerationPage:
        {
          return materialBuilder(widget: const ImageGenerationPage());
        }
      default:
        {
          return materialBuilder(widget: const ErrorScreen());
        }
    }
  }
}

MaterialPageRoute materialBuilder({required Widget widget}) {
  return MaterialPageRoute(builder: (_) => widget);
}
