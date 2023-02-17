import 'package:flutter/material.dart';
import 'package:results_summary/common/colors.dart';
import 'package:results_summary/gen/assets.gen.dart';
import 'package:results_summary/widgets/results_item.dart';

class ResultList extends StatelessWidget {
  const ResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Summary',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        const SizedBox(height: 24),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              ResultItem(
                color: PrimaryColors.lightRed,
                text: 'Reaction',
                image: Assets.images.iconReaction,
                result: 80,
              ),
              const SizedBox(height: 20),
              ResultItem(
                color: PrimaryColors.orangeyYellow,
                text: 'Memort',
                image: Assets.images.iconMemory,
                result: 92,
              ),
              const SizedBox(height: 20),
              ResultItem(
                color: PrimaryColors.greenTeal,
                text: 'Verbal',
                image: Assets.images.iconVerbal,
                result: 61,
              ),
              const SizedBox(height: 20),
              ResultItem(
                color: PrimaryColors.cobaltBlue,
                text: 'Visual',
                image: Assets.images.iconVisual,
                result: 72,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
