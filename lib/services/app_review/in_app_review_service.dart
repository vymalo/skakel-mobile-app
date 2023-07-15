import 'package:skakel_mobile/services/app_review/in_app_review_interface.dart';

import 'in_app_review_service_stub.dart'
    if (dart.library.html) 'in_app_review_service_web.dart'
    if (dart.library.io) 'in_app_review_service_io.dart';

InAppReviewService getAppReviewService() => appRevService();
