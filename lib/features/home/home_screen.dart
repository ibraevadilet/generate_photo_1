import 'package:ai_photo1/core/purchase/premium.dart';
import 'package:ai_photo1/features/home/widgets/image_widget.dart';
import 'package:ai_photo1/features/my_collections/get_photos_cubit/get_photos_cubit.dart';
import 'package:ai_photo1/theme/app_colors.dart';
import 'package:ai_photo1/theme/app_text_styles.dart';
import 'package:ai_photo1/widgets/app_error_text.dart';
import 'package:ai_photo1/widgets/app_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetPhotosCubit()..getAllPhotos(),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            children: [
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Feed', style: AppTextStyles.s24W700()),
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: const LinearGradient(
                        colors: [
                          AppColors.purpleA106F4,
                          AppColors.purpleE707FA,
                        ],
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star_half_sharp,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 5),
                          FutureBuilder(
                            future: CheckPremium.getSubscrp(),
                            builder: (BuildContext context, snapshot) {
                              if (snapshot.hasData) {
                                if (snapshot.data!) {
                                  return Text(
                                    'PRO',
                                    style: AppTextStyles.s14W700(),
                                  );
                                } else {
                                  return Text(
                                    'FREE',
                                    style: AppTextStyles.s14W700(),
                                  );
                                }
                              } else {
                                return Text(
                                  'FREE',
                                  style: AppTextStyles.s14W700(),
                                );
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Expanded(
                child: BlocBuilder<GetPhotosCubit, GetPhotosState>(
                  builder: (context, state) {
                    return state.when(
                      loading: () => const AppIndicator(),
                      error: (error) => AppErrorText(error: error),
                      success: (model) => model.isEmpty
                          ? const AppErrorText(error: 'Фотографии отсутствуют')
                          : MasonryGridView.count(
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              itemCount: model.length,
                              crossAxisCount: 2,
                              itemBuilder: (context, index) => ImageWidget(
                                model: model[index],
                              ),
                            ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
