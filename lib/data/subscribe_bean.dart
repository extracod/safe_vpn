class SubscribeBean {
  int? price;
  int? time;
  String? desc;

  SubscribeBean({this.price, this.time, this.desc});

  SubscribeBean.fromJson(Map<String, dynamic> json) {
    price = json['price'];
    time = json['time'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['price'] = price;
    data['time'] = time;
    data['desc'] = desc;
    return data;
  }
}
