import 'package:flutter/material.dart';
import 'package:results_summary/gen/assets.gen.dart';
import 'package:results_summary/gen/fonts.gen.dart';

class ResultItem extends StatelessWidget {
  const ResultItem({
    super.key,
    required this.color,
    required this.text,
    required this.image,
    required this.result,
  });

  final Color color;
  final String text;
  final SvgGenImage image;
  final int result;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              image.svg(),
              const SizedBox(width: 8),
              Text(
                text,
                style: TextStyle(
                  color: color,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          RichText(
            text: TextSpan(
              text: '$result',
              style: const TextStyle(
                color: Colors.black,
                fontFamily: FontFamily.hankenGrotesk,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              children: const [
                TextSpan(
                  text: ' / 100',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
