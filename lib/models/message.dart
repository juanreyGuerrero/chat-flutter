class Message {
  final String text;
  final bool isMe;
  final DateTime timestamp;

  Message({
    required this.text,
    required this.isMe,
    required this.timestamp,
  });

  // Método para convertir a JSON (útil para persistencia)
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'isMe': isMe,
      'timestamp': timestamp.toIso8601String(),
    };
  }

  // Constructor desde JSON
  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      text: json['text'] as String,
      isMe: json['isMe'] as bool,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );
  }

  // Método para copiar un mensaje con modificaciones
  Message copyWith({
    String? text,
    bool? isMe,
    DateTime? timestamp,
  }) {
    return Message(
      text: text ?? this.text,
      isMe: isMe ?? this.isMe,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  @override
  String toString() {
    return 'Message(text: $text, isMe: $isMe, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Message &&
        other.text == text &&
        other.isMe == isMe &&
        other.timestamp == timestamp;
  }

  @override
  int get hashCode {
    return text.hashCode ^ isMe.hashCode ^ timestamp.hashCode;
  }
} 