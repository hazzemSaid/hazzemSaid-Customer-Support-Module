import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String? id;
  final String senderEmail;
  final String content;
  final DateTime timestamp;

  Message({
    this.id,
    required this.senderEmail,
    required this.content,
    required this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return {
      'senderEmail': senderEmail,
      'content': content,
      'timestamp': Timestamp.fromDate(timestamp),
    };
  }

  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(
      id: map['id'],
      senderEmail: map['senderEmail'] ?? '',
      content: map['content'] ?? '',
      timestamp: map['timestamp'] is Timestamp
          ? (map['timestamp'] as Timestamp).toDate()
          : DateTime.parse(map['timestamp'].toString()),
    );
  }

  factory Message.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return Message(
      id: snapshot.id,
      senderEmail: data['senderEmail'] ?? '',
      content: data['content'] ?? '',
      timestamp: (data['timestamp'] as Timestamp).toDate(),
    );
  }
}
