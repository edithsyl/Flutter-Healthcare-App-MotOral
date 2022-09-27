import 'package:beta_version/logic/blocs/auth/auth_bloc.dart';
import 'package:beta_version/logic/cubits/login/login_cubit.dart';
import 'package:beta_version/widgets/snack_bars.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';

// FIXME: still couldn't log in

/// [LoginForm] renders the form in response to the [LoginState]
/// It invokes methods on the [LoginCubit] in response to user interactions
class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.status.isSubmissionSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            getSnackBarText('state.status.isSubmissionSuccess'),
          );
          context.goNamed('front');
        }
        if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            getSnackBarWidget(
              // state.errorMessage ??
              Text('state.status Submission Failure'),
            ),
          );
        }
        if (state.status.isSubmissionInProgress) {
          ScaffoldMessenger.of(context).showSnackBar(
            getSnackBarText('state.status Submission In Progress'),
          );
        }
        if (state.status.isSubmissionCanceled) {
          ScaffoldMessenger.of(context).showSnackBar(
            getSnackBarText('state.status Submission Canceled'),
          );
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
          const VerticalGap(num: 25),
          _GoogleLoginButton()
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
            ScaffoldMessenger.of(context).showSnackBar(
              getSnackBarText('clicked forget password'),
            );
            context.goNamed('signup');
          },
          child: Text('Forget Password?',
              style: AppTypographyData.primaryOrange().quicksandSmallButton),
        ),
      ],
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
          key: const Key('loginForm_emailInput_textField'),
          onChanged: (email) {
            context.read<LoginCubit>().emailChanged(email);
          },
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: "Email address",
            errorText: state.email.invalid ? 'invalid email' : null,
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          key: const Key('loginForm_passwordInput_textField'),
          keyboardType: TextInputType.visiblePassword,
          onChanged: (password) {
            context.read<LoginCubit>().passwordChanged(password);
          },
          decoration: InputDecoration(
            hintText: "Password",
            errorText: state.password.invalid ? 'invalid password' : null,
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
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : LongAppSolidButton(
                title: 'LOG IN',
                onPressed: () {
                  state.status.isValidated
                      ? context.read<LoginCubit>().logInWithCredentials()
                      : ScaffoldMessenger.of(context).showSnackBar(
                          getSnackBarText(
                              '${state.errorMessage}, no msg, login button'),
                        ); // null;
                },
              );
      },
    );
  }
}

class _GoogleLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const AppRadiusData.regular().asBorderRadius().allRegular,
      child: SignInButton(
        padding: const EdgeInsets.fromLTRB(55, 8, 15, 8),
        Buttons.Google,
        onPressed: () {
          context.read<LoginCubit>().logInWithGoogle();
        },
        elevation: 0,
      ),
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
