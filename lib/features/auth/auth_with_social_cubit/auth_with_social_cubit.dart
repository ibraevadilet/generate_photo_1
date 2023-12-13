import 'package:ai_photo1/core/constants/app_test_constants.dart';
import 'package:ai_photo1/core/functions/push_router_func.dart';
import 'package:ai_photo1/features/auth/models/user_model.dart';
import 'package:ai_photo1/routes/mobile_auto_router.gr.dart';
import 'package:ai_photo1/widgets/shared_pref_settings.dart';
import 'package:ai_photo1/widgets/styled_toasts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
        final userModel = UserModel(
          email: googleUser.email,
          name: googleUser.displayName ?? '',
          image: googleUser.photoUrl ?? '',
          uid: googleUser.id,
        );

        await saveData(userModel);

        AppRouting.pushAndPopUntilFunction(
            GenerateAndOnBoardingRoute(isFromAuth: true));
        emit(const AuthWithSocialState.success());
      } catch (e) {
        AppSnackBars.showErrorSnackBar(e.toString());
        emit(const AuthWithSocialState.error());
      }
    }
  }
}

Future<void> saveData(UserModel model) async {
  await SharedSettings.setString(AppTextConstants.name, model.name);
  await SharedSettings.setString(AppTextConstants.email, model.email);
  await SharedSettings.setString(AppTextConstants.id, model.uid);
  await SharedSettings.setString(AppTextConstants.image, model.image);

  CollectionReference fireBase = FirebaseFirestore.instance.collection('users');
  try {
    DocumentSnapshot user = await fireBase.doc(model.uid).get();
    if (user.data() == null) {
      await fireBase.doc(model.uid).set(model.toJson());
    }
  } catch (e) {
    AppSnackBars.showErrorSnackBar(e.toString());
  }
}
