import 'package:flutter/material.dart';

abstract class DayTileBuilder {
  Widget build(BuildContext context, DateTime date,
      void Function(DateTime datetime)? onTap);

}