import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:customersupportmodule/data/models/massage_model.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late CollectionReference _messagesCollection;

  var messages = <Message>[].obs;
  var messageText = ''.obs;
  var isLoading = false.obs;
  var connectionStatus = 'Connecting...'.obs;

  final String senderEmail = "haazemsaidd@gmail.com";

  @override
  void onInit() {
    super.onInit();

    _messagesCollection = _firestore.collection('messages');

    listenForMessages();
  }

  void listenForMessages() {
    _messagesCollection
        .orderBy('timestamp', descending: false)
        .snapshots()
        .listen(
          (QuerySnapshot snapshot) {
            try {
              final loaded = <Message>[];

              for (var doc in snapshot.docs) {
                try {
                  final message = Message.fromMap({
                    ...doc.data() as Map<String, dynamic>,
                    'id': doc.id,
                  });
                  loaded.add(message);
                } catch (parseError) {}
              }

              messages.value = loaded;
              connectionStatus.value = 'Listening (${loaded.length} messages)';
            } catch (e) {
              connectionStatus.value = 'Processing Error: $e';
            }
          },
          onError: (error) {
            connectionStatus.value = 'Listener Error: $error';
          },
          onDone: () {
            connectionStatus.value = 'Listener Closed';
          },
        );
  }

  Future<void> sendMessage() async {
    if (messageText.value.trim().isEmpty) {
      return;
    }

    isLoading.value = true;

    try {
      final msg = Message(
        senderEmail: senderEmail,
        content: messageText.value.trim(),
        timestamp: DateTime.now(),
      );

      final docRef = await _messagesCollection.add(msg.toMap());
      messageText.value = '';
    } catch (error) {
      Get.snackbar("Error", "Failed to send message: $error");
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> refreshMessages() async {
    try {
      final snapshot = await _messagesCollection
          .orderBy('timestamp', descending: false)
          .get();

      final loaded = snapshot.docs.map((doc) {
        return Message.fromMap({
          ...doc.data() as Map<String, dynamic>,
          'id': doc.id,
        });
      }).toList();

      messages.value = loaded;
    } catch (error) {}
  }
}
