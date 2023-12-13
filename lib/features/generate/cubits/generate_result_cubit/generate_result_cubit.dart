import 'package:ai_photo1/core/constants/app_test_constants.dart';
import 'package:ai_photo1/core/functions/push_router_func.dart';
import 'package:ai_photo1/features/generate/model/generate_model.dart';
import 'package:ai_photo1/routes/mobile_auto_router.gr.dart';
import 'package:ai_photo1/widgets/shared_pref_settings.dart';
import 'package:ai_photo1/widgets/styled_toasts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_result_cubit.freezed.dart';
part 'generate_result_state.dart';

class GenerateResultCubit extends Cubit<GenerateResultState> {
  GenerateResultCubit() : super(const GenerateResultState.initial());

  Future<void> saveDataPhoto(String image, bool isForAll) async {
    emit(const GenerateResultState.loding());

    final name = await SharedSettings.getString(AppTextConstants.name);
    final avatar = await SharedSettings.getString(AppTextConstants.image);
    final uid = await SharedSettings.getString(AppTextConstants.id);
    final model = PhotoModel(
      name: name,
      image: image,
      uid: uid,
      avatar: avatar,
      isForAll: isForAll,
    );

    CollectionReference fireBase =
        FirebaseFirestore.instance.collection('photo');

    try {
      await fireBase.doc().set(model.toJson());
      AppRouting.pushAndPopUntilFunction(const BottomNavigatorRoute());
      emit(const GenerateResultState.success());
    } catch (e) {
      AppSnackBars.showErrorSnackBar(e.toString());
      emit(const GenerateResultState.error());
    }
  }
}
