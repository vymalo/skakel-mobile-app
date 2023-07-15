import 'package:in_app_review/in_app_review.dart';
import 'package:skakel_mobile/services/app_review/in_app_review_interface.dart';

class InAppReviewServiceIO implements InAppReviewService {
  final InAppReview inAppReview;

  InAppReviewServiceIO(): inAppReview = InAppReview.instance;

  @override
  Future<void> requestReview() async {
    if (await inAppReview.isAvailable()) {
      inAppReview.requestReview();
    }
  }

  @override
  Future<bool> isAvailable() async {
    return await inAppReview.isAvailable();
  }

  @override
  Future<void> openStoreListing() async {
    if (await inAppReview.isAvailable()) {
      inAppReview.openStoreListing();
    }
  }
}

InAppReviewService appRevService() => InAppReviewServiceIO();