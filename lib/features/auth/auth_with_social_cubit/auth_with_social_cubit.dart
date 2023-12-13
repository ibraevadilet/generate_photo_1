import 'package:ai_photo1/core/constants/app_test_constants.dart';
import 'package:ai_photo1/core/functions/push_router_func.dart';
import 'package:ai_photo1/routes/mobile_auto_router.gr.dart';
import 'package:ai_photo1/widgets/shared_pref_settings.dart';
import 'package:ai_photo1/widgets/styled_toasts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'auth_with_social_cubit.freezed.dart';
part 'auth_with_social_state.dart';

class AuthWithSocialCubit extends Cubit<AuthWithSocialState> {
  AuthWithSocialCubit() : super(const AuthWithSocialState.initial());

  Future<void> authWithGoogle() async {
    GoogleSignIn googleSignIn = GoogleSignIn();
    GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    if (googleUser != null) {
      emit(const AuthWithSocialState.googleLoading());
      try {
        final userName = googleUser.displayName ?? '';
        final userEmail = googleUser.email;
        final userImage = googleUser.photoUrl ?? '';
        final userId = googleUser.id;

        print('userName ----   ---- $userName');
        print('userId ----   ---- $userId');
        print('userEmail ----   ---- $userEmail');
        print('userImage ----   ---- $userImage');

        await SharedSettings.setString(AppTextConstants.name, userName);
        await SharedSettings.setString(AppTextConstants.email, userEmail);
        await SharedSettings.setString(AppTextConstants.image, userImage);

        AppRouting.pushAndPopUntilFunction(const GenerateAndOnBoardingRoute());
        emit(const AuthWithSocialState.success());
      } catch (e) {
        AppSnackBars.showErrorSnackBar(e.toString());
        emit(const AuthWithSocialState.error());
      }
    }
  }
}
