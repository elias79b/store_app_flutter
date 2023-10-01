class createOrderResult {
  final int orderId;
  final String bankGatwayUrl;

  createOrderResult(this.orderId, this.bankGatwayUrl);

  createOrderResult.fromJson(Map<String, dynamic> json)
      : orderId = json['order_id'],
        bankGatwayUrl = json['bank_gatway_url'];
}


class CreateOrderParams{
final String name;
final String phoneNumber;
final String postalCode;
final String addresss;
final int payablePrice;
final int shippingCost;
final int totalPrice;

  CreateOrderParams(this.name, this.phoneNumber, this.postalCode, this.addresss, this.payablePrice, this.shippingCost, this.totalPrice);
}
// enum PaymetMethode{
//
// }