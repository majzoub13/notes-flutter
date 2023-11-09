// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_application_1/extensions/buildcontext/loc.dart';
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
        title: Text(context.loc.verify_email),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(context.loc.verify_email_view_prompt),
              TextButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(
                          const AuthEventSendEmailVerification(),
                        );
                  },
                  child:
                      Text(context.loc.verify_email_send_email_verification)),
              TextButton(
                onPressed: () async {
                  context.read<AuthBloc>().add(
                        const AuthEventLogout(),
                      );
                },
                child: Text(context.loc.restart),
              )
            ],
          ),
        ),
      ),
    );
  }
}
