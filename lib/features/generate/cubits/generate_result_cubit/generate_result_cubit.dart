import 'package:ai_photo1/core/constants/app_test_constants.dart';
import 'package:ai_photo1/features/generate/model/generateModel.dart';
import 'package:ai_photo1/widgets/shared_pref_settings.dart';
import 'package:ai_photo1/widgets/styled_toasts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_result_state.dart';
part 'generate_result_cubit.freezed.dart';

class GenerateResultCubit extends Cubit<GenerateResultState> {
  GenerateResultCubit() : super(const GenerateResultState.initial());

  // Future<void> saveDataPhoto() async {
  //   emit(const GenerateResultState.loding());

  //   await SharedSettings.setString(AppTextConstants.name, model.name);
  //   await SharedSettings.setString(AppTextConstants.email, model.avatar);
  //   await SharedSettings.setString(AppTextConstants.id, model.uid);
  //   await SharedSettings.setString(AppTextConstants.image, model.image);

  //   CollectionReference fireBase =
  //       FirebaseFirestore.instance.collection('photo');
  //   try {
  //     DocumentSnapshot photo = await fireBase.doc(model.uid).get();
  //     if (photo.data() == null) {
  //       await fireBase.doc(model.uid).set(model.toJson());
  //     }
  //   } catch (e) {
  //     AppSnackBars.showErrorSnackBar(e.toString());
  //   }
  // }
}
