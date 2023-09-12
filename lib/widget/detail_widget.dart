import 'package:flutter/material.dart';

class DetailWidget extends StatelessWidget {
  const DetailWidget({
    super.key,
    required this.detail,
  });
  final String detail;

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      detail,
      style: Theme.of(context).textTheme.displayMedium?.copyWith(
            fontSize: 16,
          ),
    );
  }
}
