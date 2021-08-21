class ApiModel {
  late int userId;
  late int id;
  late String title;
  late bool completed;

  ApiModel(this.userId, this.id, this.title, this.completed);

  ApiModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'] ?? json['userId'];
    id = json['id'] ?? json['id'];
    title = json['title'] ?? json['title'];
    completed = json['completed'] ?? json['completed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['completed'] = this.completed;
    return data;
  }
}
