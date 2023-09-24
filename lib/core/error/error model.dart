class ErrorModel {
  final bool success;
  final String statusMessage;
  final int statusCode;

  const ErrorModel({
    required this.success,
    required this.statusCode,
    required this.statusMessage,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      success: json['success'],
      statusCode: json['status_code'],
      statusMessage: json['status_message'],
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ErrorModel &&
          success == other.success &&
          statusMessage == other.statusMessage &&
          statusCode == other.statusCode;

  @override
  int get hashCode =>
      success.hashCode ^ statusCode.hashCode ^ statusMessage.hashCode;
}
