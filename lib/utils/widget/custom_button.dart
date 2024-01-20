import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../constant/dimens.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key,required this.text,required this.onPressed,this.backgroundColor,this.textColor});
  final String? text;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              AppDimensions.buttonRadiusDimens),
        ),
        padding: const EdgeInsets.symmetric(vertical: AppDimensions.normalPadding,horizontal: AppDimensions.normalPadding1),
        backgroundColor: widget.backgroundColor??AppCustomColor.accentColor,
      ),
      child: Text(
        widget.text!,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
          fontSize: 15,
            color: widget.textColor?? Colors.white
        ),
        // style: TextStyle(color: widget.textColor?? Colors.white),
      ),
    );
  }
}
