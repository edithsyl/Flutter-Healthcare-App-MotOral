import 'package:beta_version/cubits/signup/signup_cubit.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state.status == SignupStatus.error) {
          // TODO: error handling
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _EmailInput(),
          const VerticalGap(num: 25),
          _PasswordInput(),
          const VerticalGap(num: 120),
          _SignupButton(),
        ],
      ),
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupCubit, SignupState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextField(
          keyboardType: TextInputType.visiblePassword,
          // validator: (value) {
          //   RegExp regex = new RegExp(r'^.{6,}$');
          //   if (value!.isEmpty) {
          //     return ("Please enter your password");
          //   }
          //   if (!regex.hasMatch(value)) {
          //     return ("Please enter valid password(Minimum 6 Characters)");
          //   }
          //   return null;
          // },
          onChanged: (email) {
            context.read<SignupCubit>().passwordChanged(email);
          },
          decoration: const InputDecoration(
            hintText: "Password",
          ),
        );
      },
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupCubit, SignupState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextField(
          onChanged: (email) {
            context.read<SignupCubit>().emailChanged(email);
          },
          decoration: const InputDecoration(
            hintText: "Email address",
          ),
        );
      },
    );
  }
}

class _SignupButton extends StatelessWidget {
  const _SignupButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupCubit, SignupState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return state.status == SignupStatus.submitting
            ? const CircularProgressIndicator()
            : LongAppSolidButton(
                title: 'SIGN UP',
                onPressed: () {
                  context.read<SignupCubit>().SignupFormSubmitted();
                },
              );
      },
    );
  }
}
