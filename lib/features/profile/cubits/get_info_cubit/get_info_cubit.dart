import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_info_state.dart';
part 'get_info_cubit.freezed.dart';

class GetInfoCubit extends Cubit<GetInfoState> {
  GetInfoCubit() : super(const GetInfoState.initial());

  Future<void> getInfoGoogle() async {}
}
