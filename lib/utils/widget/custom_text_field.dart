import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant/color.dart';
import '../../constant/dimens.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key,
      this.readOnly,
      this.asset,
      this.hint,
      this.onTap,
      required this.controller,this.validator});

  final bool? readOnly;
  final String? asset;
  final String? hint;
  final GestureTapCallback? onTap;
  final TextEditingController controller;
  final String? Function(dynamic value)? validator;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator??null,
      onTap: widget.onTap ?? () {},
      readOnly: widget.readOnly ?? false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppCustomColor.borderColor),
          borderRadius:
              BorderRadius.all(Radius.circular(AppDimensions.radiusDimens)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppCustomColor.accentColor),
          borderRadius:
              BorderRadius.all(Radius.circular(AppDimensions.radiusDimens)),
        ),
          errorMaxLines: 1,
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppCustomColor.redSliderBackgroundColor),
          borderRadius:
          BorderRadius.all(Radius.circular(AppDimensions.radiusDimens)),
        ),
        prefixIconConstraints: const BoxConstraints(
            minHeight: AppDimensions.iconSize,
            minWidth: AppDimensions.iconSize),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SvgPicture.asset(
            widget.asset!,
          ),
        ),
        hintText: widget.hint,
      ),

    );
  }
}

class CustomDropDownTextField extends StatefulWidget {
  const CustomDropDownTextField(
      {super.key,
      this.readOnly,
      this.asset,
      this.hint,
      this.onTap,
      required this.controller,required this.validator});

  final bool? readOnly;
  final String? asset;
  final String? hint;
  final TextEditingController controller;
  final GestureTapCallback? onTap;
  final String? Function(dynamic value) validator;

  @override
  State<CustomDropDownTextField> createState() =>
      _CustomDropDownTextFieldState();
}

class _CustomDropDownTextFieldState extends State<CustomDropDownTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      onTap: widget.onTap ?? () {},
      readOnly: widget.readOnly ?? false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppCustomColor.borderColor),
          borderRadius:
              BorderRadius.all(Radius.circular(AppDimensions.radiusDimens)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppCustomColor.accentColor),
          borderRadius:
              BorderRadius.all(Radius.circular(AppDimensions.radiusDimens)),
        ),
        errorMaxLines: 1,
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppCustomColor.redSliderBackgroundColor),
          borderRadius:
          BorderRadius.all(Radius.circular(AppDimensions.radiusDimens)),
        ),
        prefixIconConstraints: const BoxConstraints(
            minHeight: AppDimensions.iconSize,
            minWidth: AppDimensions.iconSize),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SvgPicture.asset(
            widget.asset!,
          ),
        ),
        suffixIcon: const Icon(
          Icons.arrow_drop_down,
          size: 30,
          color: AppCustomColor.accentColor,
        ),
        hintText: widget.hint,
      ),
    );
  }
}
