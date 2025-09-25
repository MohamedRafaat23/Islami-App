import 'package:flutter/material.dart';
import 'package:isalamic_app/core/theme/app_colors.dart';
import 'package:isalamic_app/core/theme/textstyle.dart';
import 'package:isalamic_app/core/widget/base_tob_body.dart';
import 'package:isalamic_app/features/home/tabs/time_tab/widgets/azkar_card.dart';
import 'package:isalamic_app/features/home/tabs/time_tab/widgets/header_card_time.dart';
import 'package:isalamic_app/features/home/tabs/time_tab/widgets/next_pray_text.dart';
import 'package:isalamic_app/features/home/tabs/time_tab/widgets/view_card_time.dart';

class TimeTab extends StatelessWidget {
  const TimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseTabBody(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 280,
                decoration: BoxDecoration(
                  color: AppColors.gold,
                  borderRadius: BorderRadius.circular(40),
                ),
                // card time
                child: Column(
                  children: [
                    HeaderCardTime(),
                    const SizedBox(height: 20),
                    ViewCardTime(),
                    const SizedBox(height: 20),
                    NextPrayText(),
                  ],
                ),
              ),
              // Azkar
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                child: Text(
                  "Azkar",
                  style: TextStylesHelper.smallLabelTextStyle(
                    textColor: AppColors.white,
                  ),
                ),
              ),
              AzkarCardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
