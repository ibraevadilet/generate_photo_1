import 'package:ai_photo1/features/my_collections/widgets/collection_iyem_widget.dart';
import 'package:ai_photo1/theme/app_colors.dart';
import 'package:ai_photo1/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MyCollectionsScreen extends StatelessWidget {
  const MyCollectionsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'My collection',
                  style: AppTextStyles.s24W700(),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: const LinearGradient(
                      colors: [
                        AppColors.purple5B575D,
                        AppColors.purple5B575D,
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
                        Text(
                          'PRO',
                          style: AppTextStyles.s14W700(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Expanded(
              child: MasonryGridView.count(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                itemCount: 20,
                crossAxisCount: 3,
                itemBuilder: (context, index) => const CollectionIyemWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
