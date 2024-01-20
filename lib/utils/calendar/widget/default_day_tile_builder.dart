import 'package:flutter/material.dart';

import 'day_tile_builder.dart';
import 'default_day_tile.dart';

class DefaultDayTileBuilder extends DayTileBuilder {

  DefaultDayTileBuilder();
  @override
  Widget build(BuildContext context, DateTime date, void Function(DateTime datetime)? onTap) {
    return DefaultDayTile(
      date: date,
      onTap: onTap,
    );
  }
}