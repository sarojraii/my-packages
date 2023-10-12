library ad_package;

import 'package:flutter/material.dart';

import 'ad_package.dart';

export 'src/render.dart';
export 'src/movie_ad.dart';
export 'src/fullPage_ad.dart';

enum AdType { movieAd, fullPageAd }

class Ads extends StatelessWidget {
  final AdType adType;
  final Function() okButtonpressed;
  const Ads({
    super.key,
    required this.adType,
    required this.okButtonpressed,
  });

  @override
  Widget build(BuildContext context) {
    return adType == AdType.movieAd
        ? MovieAd(okButtonpressed: okButtonpressed)
        : const FullPageAd(
            picture: '',
          );
  }
}
