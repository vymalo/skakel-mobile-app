abstract class InAppReviewService {
  Future<void> requestReview();

  Future<bool> isAvailable();

  Future<void> openStoreListing();
}
