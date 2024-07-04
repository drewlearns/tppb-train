import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/pages/walkthroughs/walkthrough_card/walkthrough_card_widget.dart';

// Focus widget keys for this walkthrough
final dropDownO0c54v1e = GlobalKey();
final tabFe5nlzod = GlobalKey();
final container6zod3qsn = GlobalKey();
final iconButtonKgzw3s9f = GlobalKey();
final iconButtonOdzbpvwc = GlobalKey();

/// BillsWalkthrough
///
/// Walkthrough of the Bills Page
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: dropDownO0c54v1e,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCardWidget(
              description: 'As usual, select a budget to begin.',
              header: 'Select Budget',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: tabFe5nlzod,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCardWidget(
              description:
                  'You can view Bills by Due, Paid, or Future due by selecting the applicable tab.',
              header: 'Tab Selection',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: container6zod3qsn,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCardWidget(
              description:
                  'Here you can see important details about the Bills. Click on it to view more details and to mark it as paid!',
              header: 'Bill Entry',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: iconButtonKgzw3s9f,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCardWidget(
              description:
                  'Here you can view and modify email notifications about a bill to your liking. Every time you create a new bill, an email notification is created to help remind you.',
              header: 'Notifications',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: iconButtonOdzbpvwc,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCardWidget(
              description: 'Click here to add new bills to your budgets.',
              header: 'Add Bill',
            ),
          ),
        ],
      ),
    ];
