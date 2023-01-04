import 'package:chatgpt/utils/app_colors.dart';
import 'package:chatgpt/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

import '../../../global/common/common.dart';

class OpenAiServiceButton extends StatelessWidget {
  const OpenAiServiceButton(
      {super.key, required this.textData, required this.iconData, this.onTap});
  final String textData;
  final IconData iconData;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 95,
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: glowBoxShadow),
        child: Row(children: [
          Icon(iconData, size: 40),
          UiHelper.horizontalSpacing(10),
          Text(
            textData,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          )
        ]),
      ),
    );
  }
}
