// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/auth/bloc/auth_bloc.dart';
import 'package:flutter_application_1/services/auth/bloc/auth_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Email'),
      ),
      body: Column(
        children: [
          const Text(
              'We sent a verification email. PLease open it to verfiy your account.'),
          const Text("If you didn't recieve verification email press button."),
          TextButton(
              onPressed: () {
                context.read<AuthBloc>().add(
                      const AuthEventSendEmailVerification(),
                    );
              },
              child: const Text('Send email verification')),
          TextButton(
            onPressed: () async {
              context.read<AuthBloc>().add(
                    const AuthEventLogout(),
                  );
            },
            child: const Text("Restart"),
          )
        ],
      ),
    );
  }
}
