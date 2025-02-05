// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/arrays.dart';

ElegantNotification createNotification(
  BuildContext context,
  String type,
  String message,
) {
  final toastDuration = const Duration(seconds: 3);
  final double toastHeight = 50;
  final double toastWidth = 350;
  final double iconSize = 20;
  final double fontSize = 14;
  final double borderRadius = 5;

  IconData iconData;
  Color color;

  switch (type) {
    case 'success':
      iconData = Icons.check_circle;
      color = FlutterFlowTheme.of(context).success;
      break;
    case 'warning':
      iconData = Icons.report_problem;
      color = FlutterFlowTheme.of(context).warning;
      break;
    case 'error':
      iconData = Icons.error;
      color = FlutterFlowTheme.of(context).error;
      break;
    default:
      iconData = Icons.info;
      color = FlutterFlowTheme.of(context).primary;
      break;
  }

  return ElegantNotification(
    description: Text(
      message,
      style: TextStyle(
        fontSize: fontSize,
        color: FlutterFlowTheme.of(context).primaryText,
      ),
    ),
    toastDuration: toastDuration,
    progressIndicatorColor: color,
    showProgressIndicator: true,
    icon: Icon(iconData, color: color, size: iconSize),
    borderRadius: BorderRadius.circular(borderRadius),
    position: Alignment.bottomCenter,
    animation: AnimationType.fromBottom,
    background: FlutterFlowTheme.of(context).alternate,
    progressIndicatorBackground: FlutterFlowTheme.of(context).alternate,
    displayCloseButton: true,
    isDismissable: true,
    dismissDirection: DismissDirection.down,
    height: toastHeight,
    width: toastWidth,
  );
}

Future<void> showToastNotification(
  BuildContext context,
  String? notificationType,
  String message,
) async {
  ElegantNotification notification = createNotification(
    context,
    notificationType ?? 'info',
    message,
  );

  notification.show(context);
}
