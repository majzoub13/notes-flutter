import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilities/dialogs/generic_dialog.dart';

Future<void> showPasswordResetSentDialog(BuildContext context) {
  return showGenericDialog(
    context: context,
    title: 'Password Reset.',
    content: 'We sent you a password reset email.',
    optionBuilder: () => {
      'OK': null,
    },
  );
}
