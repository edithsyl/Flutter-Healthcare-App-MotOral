import 'package:beta_version/logic/blocs/auth/auth_bloc.dart';
import 'package:beta_version/logic/cubits/login/login_cubit.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.status == LoginStatus.error) {
          // TODO: error handling
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _EmailInput(),
          const VerticalGap(num: 40),
          _PasswordInput(),
          const VerticalGap(num: 25),
          _ForgetPassword(),
          const VerticalGap(num: 80),
          LoginButton(),
        ],
      ),
    );
  }
}

class _ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {
            context.goNamed('signup');
            //Navigator.pushNamed(context, '/signup');
          },
          child: Text('Forget Password?',
              style: AppTypographyData.primaryOrange().quicksandSmallButton),
        ),
      ],
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
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
            context.read<LoginCubit>().passwordChanged(email);
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
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextField(
          onChanged: (email) {
            context.read<LoginCubit>().emailChanged(email);
          },
          decoration: const InputDecoration(
            hintText: "Email address",
          ),
        );
      },
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return state.status == LoginStatus.submitting
            ? const CircularProgressIndicator()
            : LongAppSolidButton(
                title: 'LOG IN',
                onPressed: () {
                  context.read<LoginCubit>().logInWithCredentials();
                },
              );
      },
    );
  }
}

class LogoutButton extends StatelessWidget {
  const LogoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LongAppSolidButton(
      title: 'LOG OUT',
      onPressed: () {
        context.read<AuthBloc>().add(AuthLogoutRequested());
      },
    );
  }
}
