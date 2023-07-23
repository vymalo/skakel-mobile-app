import 'package:skakel_mobile/services/app_review/in_app_review_interface.dart';

/// Returns an [InAppReviewService] instance for the current platform.
InAppReviewService appRevService() {
  throw UnsupportedError(
    'Cannot create an app review service without the package `in_app_review`.',
  );
}
