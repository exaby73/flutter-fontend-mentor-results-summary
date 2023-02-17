import 'package:flutter/material.dart';
import 'package:results_summary/common/colors.dart';
import 'package:results_summary/gen/fonts.gen.dart';
import 'package:results_summary/widgets/result_list.dart';
import 'package:results_summary/widgets/results_header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Results Summary',
      theme: ThemeData(
        fontFamily: FontFamily.hankenGrotesk,
      ),
      home: const ResultsSummaryPage(),
    );
  }
}

class ResultsSummaryPage extends StatelessWidget {
  const ResultsSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isDesktop = width >= 1440;

    if (isDesktop) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 200, horizontal: 400),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 900),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                  boxShadow: [
                    BoxShadow(
                      color: NeutralColors.paleBlue,
                      blurRadius: 16,
                      spreadRadius: -4,
                      offset: const Offset(10, 10),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(child: ResultsHeader(isDesktop: isDesktop)),
                    const Expanded(child: Results()),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          ResultsHeader(isDesktop: isDesktop),
          const Expanded(child: Results()),
        ],
      ),
    );
  }
}

class Results extends StatelessWidget {
  const Results({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Expanded(
            child: Column(
              children: [
                const Expanded(child: ResultList()),
                const SizedBox(height: 24),
                Row(
                  children: const [
                    Expanded(child: ContinueButton()),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class ContinueButton extends StatefulWidget {
  const ContinueButton({super.key});

  @override
  State<ContinueButton> createState() => _ContinueButtonState();
}

class _ContinueButtonState extends State<ContinueButton> {
  bool hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() {
        hovering = true;
      }),
      onExit: (_) => setState(() {
        hovering = false;
      }),
      child: Container(
        decoration: BoxDecoration(
          color: NeutralColors.darkGrayBlue,
          borderRadius: BorderRadius.circular(100),
        ),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: hovering
                ? LinearGradient(
                    begin: AlignmentDirectional.bottomCenter,
                    end: AlignmentDirectional.topCenter,
                    colors: [
                      GradientColors.lightRoyalBlue,
                      GradientColors.lightSlateBlue,
                    ],
                  )
                : null,
          ),
          child: const Center(
            child: Text(
              'Continue',
              style: TextStyle(
                color: Colors.white,
                fontFamily: FontFamily.hankenGrotesk,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
