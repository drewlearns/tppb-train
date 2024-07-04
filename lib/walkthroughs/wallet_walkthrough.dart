import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/pages/walkthroughs/walkthrough_card/walkthrough_card_widget.dart';

// Focus widget keys for this walkthrough
final rowAsmni7oq = GlobalKey();
final columnNxx023kx = GlobalKey();
final iconButtonNewug10l = GlobalKey();
final iconButton4acayd8r = GlobalKey();

/// Wallet Walkthrough
///
/// Walkthrough of Wallets Page
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: rowAsmni7oq,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCardWidget(
              description: 'As usual, select a budget.',
              header: 'Select Budget',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: columnNxx023kx,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCardWidget(
              description:
                  'Lots of our customers have more than one way to pay a bill. We provide you with the ability to see all your payment sources in one place, their running totals, and the ability to set a default payment source so that you can see your \"Safe To Spend\". ',
              header: 'Wallet Entry (Payment Source)',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: iconButtonNewug10l,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCardWidget(
              description:
                  'Click here to set your safe to spend payment source. This is how we calculate your \"Safe To Spend\". By default, when you create an account, a default payment source is made. You can also edit it\'s name here.',
              header: 'Set Safe To Spend Default Wallet',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: iconButton4acayd8r,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCardWidget(
              description: 'Click here to add new payment sources',
              header: 'Add Wallet (Payment Source)',
            ),
          ),
        ],
      ),
    ];
