part of 'get_photos_cubit.dart';

@freezed
class GetPhotosState with _$GetPhotosState {
  const factory GetPhotosState.loading() = _Loading;
  const factory GetPhotosState.error(String error) = _Error;
  const factory GetPhotosState.success(List<PhotoModel> photos) = _Success;
}
