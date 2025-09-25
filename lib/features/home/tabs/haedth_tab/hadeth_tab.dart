import 'package:flutter/material.dart';
import 'package:isalamic_app/core/widget/base_tob_body.dart';
import 'package:isalamic_app/features/home/tabs/haedth_tab/hadeth_card.dart';


class HadethTab extends StatelessWidget {
  const HadethTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseTabBody(child: HadethCard());
  }
}
