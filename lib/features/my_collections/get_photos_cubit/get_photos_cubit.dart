import 'package:ai_photo1/core/constants/app_test_constants.dart';
import 'package:ai_photo1/features/generate/model/generate_model.dart';
import 'package:ai_photo1/widgets/shared_pref_settings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_photos_cubit.freezed.dart';
part 'get_photos_state.dart';

class GetPhotosCubit extends Cubit<GetPhotosState> {
  GetPhotosCubit() : super(const GetPhotosState.loading());

  getMyPhotos() async {
    CollectionReference firestore =
        FirebaseFirestore.instance.collection('photo');
    final myIud = await SharedSettings.getString(AppTextConstants.id);

    if (myIud != null) {
      try {
        final photosFormFB = await firestore.get();
        List<PhotoModel> photos = [];

        for (var e in photosFormFB.docs) {
          photos.add(PhotoModel.fromQuerySnapshot(e));
        }
        photos.removeWhere((e) => e.uid != myIud);

        emit(GetPhotosState.success(photos));
      } catch (e) {
        emit(GetPhotosState.error(e.toString()));
      }
    } else {
      emit(const GetPhotosState.success([]));
    }
  }

  getAllPhotos() async {
    CollectionReference firestore =
        FirebaseFirestore.instance.collection('photo');
    try {
      final photosFormFB = await firestore.get();
      List<PhotoModel> photos = [];

      for (var e in photosFormFB.docs) {
        photos.add(PhotoModel.fromQuerySnapshot(e));
      }
      photos.removeWhere((e) => !e.isForAll);

      emit(GetPhotosState.success(photos));
    } catch (e) {
      emit(GetPhotosState.error(e.toString()));
    }
  }
}
