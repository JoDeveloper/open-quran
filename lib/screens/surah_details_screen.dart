import 'package:fabrikod_quran/constants/extensions.dart';
import 'package:fabrikod_quran/providers/quran_provider.dart';
import 'package:fabrikod_quran/widgets/app_bars/custom_app_bar.dart';
import 'package:fabrikod_quran/widgets/buttons/more_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/buttons/custom_toggle_buttons.dart';
import '../widgets/scroll_body.dart';

class SurahDetailsScreen extends StatefulWidget {
  const SurahDetailsScreen({Key? key}) : super(key: key);

  @override
  SurahDetailsScreenState createState() => SurahDetailsScreenState();
}

class SurahDetailsScreenState extends State<SurahDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Al-Fatiha",
        actions: [MoreButton(onTap: () {})],
      ),
      body: ScrollBody(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 25),
          CustomToggleButtons(
            buttonTitles: [
              context.translate.translation,
              context.translate.reading,
            ],
            selectedIndex: context.watch<QuranProvider>().readingSettings.readingType.index,
            onTap: context.watch<QuranProvider>().changeReadingType,
          ),
        ],
      )),
    );
  }
}
