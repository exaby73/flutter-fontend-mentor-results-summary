import 'package:flutter/material.dart';
import 'package:results_summary/common/colors.dart';

class ResultsHeader extends StatelessWidget {
  const ResultsHeader({super.key, required this.isDesktop});

  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: isDesktop
            ? const BorderRadius.horizontal(left: Radius.circular(32))
            : const BorderRadius.vertical(bottom: Radius.circular(32)),
        gradient: LinearGradient(
          begin: AlignmentDirectional.bottomCenter,
          end: AlignmentDirectional.topCenter,
          colors: [
            GradientColors.lightRoyalBlue,
            GradientColors.lightSlateBlue,
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Flexible(flex: 2, child: SizedBox()),
          Flexible(
            flex: 6,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 300),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Your Result',
                    style: TextStyle(color: Colors.white70, fontSize: 18),
                  ),
                  const SizedBox(height: 20),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: AlignmentDirectional.bottomCenter,
                        end: AlignmentDirectional.topCenter,
                        colors: [
                          GradientColors.persianBlue,
                          GradientColors.violetBlue,
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(40),
                      child: Column(
                        children: const [
                          Text(
                            '76',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 62,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'of 100',
                            style: TextStyle(color: Colors.white60),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Text(
                    'Great',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'You scored higher than 65% of the people who have taken these tests.',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
          const Flexible(flex: 2, child: SizedBox()),
        ],
      ),
    );
  }
}
