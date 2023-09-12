import 'package:flutter/material.dart';
import 'package:hng_task_2/widget/detail_widget.dart';
import 'package:hng_task_2/widget/label_widget.dart';

class NameCard extends StatelessWidget {
  const NameCard({
    super.key,
    required this.label,
    required this.detail,
    this.gradientColors,
  });
  final String label;
  final String detail;
  final List<Color>? gradientColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors ??
              [
                Colors.purple,
                Colors.deepPurple,
                Colors.blue.shade900,
              ],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LabelWidget(label: label),
          DetailWidget(detail: detail),
        ],
      ),
    );
  }
}
