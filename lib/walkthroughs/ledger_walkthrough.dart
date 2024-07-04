import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/pages/walkthroughs/walkthrough_card/walkthrough_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';

// Focus widget keys for this walkthrough
final columnV9edxhj6 = GlobalKey();
final textUxtutexg = GlobalKey();
final rowWqe60v8q = GlobalKey();
final containerLgd8iryk = GlobalKey();
final iconButtonFsbhy4pj = GlobalKey();
final container87f6towi = GlobalKey();
final iconButton3pzo3nty = GlobalKey();
final iconButtonKb97emkm = GlobalKey();
final toggleIconBkq4fego = GlobalKey();
final iconButtonJtxu4a25 = GlobalKey();

/// LedgerWalkthrough
///
/// Walkthrough of Ledger Page
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: columnV9edxhj6,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughCardWidget(
              description: FFLocalizations.of(context).getText(
                'll25ixvt' /* You will select a Budget on ev... */,
              ),
              header: 'Budget Selection',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textUxtutexg,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCardWidget(
              description:
                  'Here you will find out how much you have spent this month up to today\'s date',
              header: 'Total Spent this Month',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: rowWqe60v8q,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughCardWidget(
              description: FFLocalizations.of(context).getText(
                'ixjs6qh2' /* This is your safe to spend amo... */,
              ),
              header: 'Safe To Spend',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: containerLgd8iryk,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCardWidget(
              description:
                  'This is a ledger Entry. It will tell you important details about the ledger entry.  You can click it for more details.',
              header: 'Ledger Entry',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: iconButtonFsbhy4pj,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCardWidget(
              description:
                  'You can toggle the status of the entry as paid or unpaid by clicking the check mark.',
              header: 'Status',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: container87f6towi,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const WalkthroughCardWidget(
              description:
                  'When an entry is paid (check box toggled), it will make a \"KA-CHING\" sound and will be outlined in purple - this is how you will know whats been paid or not.  Also note, that when ever you are below a default threshold of \$500.00, it will be highlighted in red.',
              header: 'Below threshold Entry that is paid.',
            ),
          ),
        ],
      ),

      /// Step 7
      TargetFocus(
        keyTarget: iconButton3pzo3nty,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCardWidget(
              description:
                  'Click here to view category details. You will see spending trends for the month and year to date.',
              header: 'Categories',
            ),
          ),
        ],
      ),

      /// Step 8
      TargetFocus(
        keyTarget: iconButtonKb97emkm,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCardWidget(
              description:
                  'Click here to search for a transaction from any Budget.',
              header: 'Search',
            ),
          ),
        ],
      ),

      /// Step 9
      TargetFocus(
        keyTarget: toggleIconBkq4fego,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCardWidget(
              description:
                  'Clicking here will present a list of options you can filter the results with. Click again to hide the filter options.',
              header: 'Filters',
            ),
          ),
        ],
      ),

      /// Step 10
      TargetFocus(
        keyTarget: iconButtonJtxu4a25,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCardWidget(
              description:
                  'For one off (non-bill and non-income) expenses such as parking or eating out, go here.',
              header: 'Add Transaction',
            ),
          ),
        ],
      ),
    ];
