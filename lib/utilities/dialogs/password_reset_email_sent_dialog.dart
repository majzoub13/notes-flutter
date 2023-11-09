import 'package:flutter/material.dart';
import 'package:flutter_application_1/extensions/buildcontext/loc.dart';
import 'package:flutter_application_1/utilities/dialogs/generic_dialog.dart';

Future<void> showPasswordResetSentDialog(BuildContext context) {
  return showGenericDialog(
    context: context,
    title: context.loc.password_reset,
    content: context.loc.password_reset_dialog_prompt,
    optionBuilder: () => {
      context.loc.ok: null,
    },
  );
}
