import 'package:skakel_mobile/services/app_review/in_app_review_interface.dart';

class InAppReviewServiceWeb implements InAppReviewService {
  @override
  Future<void> requestReview() async {}

  @override
  Future<bool> isAvailable() async {
    return false;
  }

  @override
  Future<void> openStoreListing() async {}
}

InAppReviewService appRevService() => InAppReviewServiceWeb();
