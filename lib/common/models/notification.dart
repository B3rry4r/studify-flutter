class NotificationModel {
  final String sender;
  final String title;
  final String message;
  final String updatedAt;

  NotificationModel({
    required this.sender,
    required this.title,
    required this.message,
    required this.updatedAt,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      sender: json['sender']['role'] as String,
      title: json['title'] as String,
      message: json['message'] as String,
      updatedAt: json['updatedAt'] as String,
    );
  }
}
