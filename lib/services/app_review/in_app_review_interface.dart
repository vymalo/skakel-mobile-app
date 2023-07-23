/// Interface for InAppReviewService
abstract class InAppReviewService {
  /// Request a review from the user
  Future<void> requestReview();

  /// Check if the store listing is available
  Future<bool> isAvailable();

  /// Open the store listing
  Future<void> openStoreListing();
}
