class ProductModel {
  String? Id;
  String? productName;
  String? productCode;
  String? img;
  String? unitPrice;
  String? quantity;
  String? total;


  ProductModel.fromJson(Map<String, dynamic> json) {
    Id = json['_id'];
    productName = json['ProductName'];
    productCode = json['ProductCode'];
    img = json['Img'];
    unitPrice = json['UnitPrice'];
    quantity = json['Qty'];
    total = json['TotalPrice'];
  }

}
