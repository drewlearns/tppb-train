import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/pages/walkthroughs/walkthrough_card/walkthrough_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';

// Focus widget keys for this walkthrough
final dropDownSo6mxhwr = GlobalKey();
final columnZdrbjk0v = GlobalKey();
final rowV9ulecxu = GlobalKey();
final row2mygxa0h = GlobalKey();

/// IncomesWalkthrough
///
/// Walkthrough Incomes
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: dropDownSo6mxhwr,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCardWidget(
              description:
                  'Like most pages, you\'ll have to let us know which budget you are wanting to view since you can have unlimited budgets with a paid plan. This means you can budget for a vacation, investments, family, etc.',
              header: 'Select Budget',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: columnZdrbjk0v,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughCardWidget(
              description: 'Here will be a list of all incomes',
              header: FFLocalizations.of(context).getText(
                'gtouv6ul' /* Income Entries */,
              ),
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: rowV9ulecxu,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCardWidget(
              description:
                  'Here you will find your total income for the month.',
              header: 'Total Income',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: row2mygxa0h,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCardWidget(
              description:
                  'Here you will find out when your next scheduled pay day is! ',
              header: 'Pay Day',
            ),
          ),
        ],
      ),
    ];
