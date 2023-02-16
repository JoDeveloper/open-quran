import 'package:fabrikod_quran/constants/constants.dart';
import 'package:fabrikod_quran/providers/home_provider.dart';
import 'package:fabrikod_quran/providers/search_provider.dart';
import 'package:fabrikod_quran/screens/search_result_page.dart';
import 'package:fabrikod_quran/widgets/buttons/juz_surah_search_toggle_button.dart';
import 'package:fabrikod_quran/widgets/cards/grid_card.dart';
import 'package:fabrikod_quran/widgets/lists/juz_list.dart';
import 'package:fabrikod_quran/widgets/lists/surah_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/animation/fade_indexed_stack.dart';
import '../widgets/app_bars/primary_app_bar.dart';

class NewHomeScreen extends StatefulWidget {
  const NewHomeScreen({Key? key}) : super(key: key);

  @override
  State<NewHomeScreen> createState() => _NewHomeScreenState();
}

class _NewHomeScreenState extends State<NewHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Utils.unFocus,
      child: Scaffold(
        appBar: PrimaryAppBar(
          title: context.translate.theOpenQuran,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              JuzSurahSearchToggleButton(
                toggleSearchButtonIndex: context.read<SearchProvider>().toggleSearchOptions.index,
                onChanged:
                    context.watch<HomeProvider>().changeJuzOrSurahToggleOptionType,
                onTapSearchButton: context
                    .read<SearchProvider>()
                    .changeToggleSearchOptions,
                toggleListType:
                    context.watch<HomeProvider>().juzSurahToggleOptionType,
              ),
              FadeIndexedStack(
                index: context.watch<SearchProvider>().toggleSearchOptions.index,
                children: [
                  buildToggleSearchPages(context),
                  const SearchResultPage(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Juz/Translation and Search pages
  FadeIndexedStack buildToggleSearchPages(BuildContext context) {
    return FadeIndexedStack(
      index: context.watch<HomeProvider>().juzSurahToggleOptionType.index,
      children: [
        buildRecentAndJuzCategoryList(),
        SurahList(onTap: context.read<HomeProvider>().onTapSurahCard),
      ],
    );
  }

  /// Recent visited Surah, Juz or Page
  Widget buildRecentAndJuzCategoryList() {
    return Column(
      children: [
        buildRecent(),
        JuzList(
          changeListType: context.read<HomeProvider>().changeJuzListType,
          juzListType: context.watch<HomeProvider>().juzListType ,
          onTapJuzCard: context.read<HomeProvider>().onTapJuzCard,
          onTapSurahCard: context.read<HomeProvider>().onTapSurahCard,
        )
      ],
    );
  }

  /// Build Resent
  Widget buildRecent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kSizeL),
          child: Text(
            context.translate.recent,
            style: context.theme.textTheme.displayLarge
                ?.copyWith(letterSpacing: 0.04),
          ),
        ),
        const SizedBox(height: kSizeL),
        SizedBox(
          height: 90,
          child: GridView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: kSizeM),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: kSizeS,
            ),
            itemBuilder: (context, index) {
              return GridCard(
                text: index.toString(),
                onTap: () {},
              );
            },
          ),
        ),
        const SizedBox(height: kSizeXL),
      ],
    );
  }
}
