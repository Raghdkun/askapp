class ContentModel {
  String? name;
  String? content;
  int? time;

  ContentModel({this.name, this.content, this.time});

  ContentModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    content = json['content'];
    time = json['time'];
    
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['content'] = content;
    data['time'] = time;
    return data;
  }
}
