import 'package:dg_master/logic/connection_websocket_status.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketProvider extends ChangeNotifier {
  WebSocketChannel? _channel;

  WebSocketChannel? get channel => _channel;

  void connectWebSocket(String clientId) {
    // _channel = IOWebSocketChannel.connect(Uri.parse("ws://localhost:8000/ws/$clientId"));
    _channel = IOWebSocketChannel.connect(Uri.parse("ws://IP:PORT/ws/$clientId"));
    ConnectionWebsocketStatus().onConnectionWebsocketStatus(_channel!, clientId);
  }
  
  void closeWebSocket() {
    _channel?.sink.close();
    _channel = null;
  }
}
