import 'package:oauth2_client/access_token_response.dart';

extension CurrentUserWithToken on AccessTokenResponse {
  String get username {
    return respMap['username'];
  }

  String get sub {
    return respMap['sub'];
  }

  String get email {
    return respMap['email'];
  }
}
