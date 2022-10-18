import 'package:fabrikod_quran/constants/extensions.dart';
import 'package:fabrikod_quran/constants/padding.dart';
import 'package:flutter/material.dart';

class HelpGuideCard extends StatefulWidget {
  final String text;
  final String description;

  const HelpGuideCard({Key? key, required this.text, required this.description})
      : super(key: key);

  @override
  State<HelpGuideCard> createState() => _HelpGuideCardState();
}

class _HelpGuideCardState extends State<HelpGuideCard> {
  bool isExpanded = false;

  void changeExpanded(bool value) {
    setState(() => isExpanded = value);
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: context.theme.copyWith(dividerColor: Colors.transparent),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(kPaddingDefault),
        child: ExpansionTile(
          title: Row(
            children: [
              Text(
                widget.text,
                style: context.theme.textTheme.headlineSmall,
              ),
            ],
          ),
          trailing: Icon(
            isExpanded
                ? Icons.arrow_drop_up_rounded
                : Icons.arrow_drop_down_rounded,
            size: 40,
            color: context.theme.iconTheme.color,
          ),
          onExpansionChanged: changeExpanded,
          backgroundColor: context.theme.cardTheme.color?.withOpacity(0.1),
          collapsedBackgroundColor:
              context.theme.cardTheme.color?.withOpacity(0.1),
          childrenPadding: const EdgeInsets.only(bottom: kPaddingDefault),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 0, horizontal: kPaddingHorizontal),
              child: Text(
                widget.description,
                style: context.theme.textTheme.bodySmall,
                textAlign: TextAlign.left,
              ),
            )
          ],
        ),
      ),
    );
  }
}
