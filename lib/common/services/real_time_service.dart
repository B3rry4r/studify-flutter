import 'package:socket_io_client/socket_io_client.dart' as IO;

class RealTimeService {
  late IO.Socket socket;

  void initialize() {
    // Connect to the server
    socket = IO.io('http://your-server-url', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });

    socket.connect();

    // Listen for user registration events
    socket.on('userRegistered', (data) {
      print('User registered: $data');
      // Handle the user registration event, update your UI accordingly
    });

    // Listen for user update events
    socket.on('userUpdated', (data) {
      print('User updated: $data');
      // Handle the user update event, update your UI accordingly
    });

    // Listen for notification creation events
    socket.on('notificationCreated', (data) {
      print('Notification created: $data');
      // Handle the notification event, update your UI accordingly
    });
  }

  void dispose() {
    socket.dispose();
  }
}
