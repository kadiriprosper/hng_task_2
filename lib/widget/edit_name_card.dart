import 'package:flutter/material.dart';
import 'package:hng_task_2/widget/label_widget.dart';

class EditNameCard extends StatelessWidget {
  const EditNameCard({
    super.key,
    required this.label,
    required this.contentController,
    this.gradientColors,
    required this.hintText,
  });
  final String label;
  final TextEditingController contentController;
  final String hintText;
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
          const SizedBox(height: 10),
          TextField(
            controller: contentController,
            maxLines: null,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
