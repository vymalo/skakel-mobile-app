import 'package:test/test.dart';
import 'package:skakel_api/skakel_api.dart';


/// tests for PaymentApi
void main() {
  final instance = SkakelApi().getPaymentApi();

  group(PaymentApi, () {
    // Cancel a payment transaction by ID
    //
    //Future<PaymentTransaction> cancelPaymentTransaction(int id) async
    test('test cancelPaymentTransaction', () async {
      // TODO
    });

    // Confirm a payment transaction by ID
    //
    //Future<PaymentTransaction> confirmPaymentTransaction(int id) async
    test('test confirmPaymentTransaction', () async {
      // TODO
    });

    // Get a payment transaction by ID
    //
    //Future<PaymentTransaction> getPaymentTransactionById(int id) async
    test('test getPaymentTransactionById', () async {
      // TODO
    });

    // Initiate a new payment transaction
    //
    //Future<PaymentTransaction> initiatePaymentTransaction({ PaymentInfo paymentInfo }) async
    test('test initiatePaymentTransaction', () async {
      // TODO
    });

  });
}
