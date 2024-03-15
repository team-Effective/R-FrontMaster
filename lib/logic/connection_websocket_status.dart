import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';


class ConnectionWebsocketStatus {
  WebSocketChannel? channel;
  String? _client_id;

  //websocketの接続状態を監視するための関数
  void onConnectionWebsocketStatus(WebSocketChannel channel, String _client_id) {
    // WebSocketの状態を監視し、接続が切れた場合に再接続を試みる
    this.channel = channel;
    this._client_id = _client_id;
    channel.stream.listen(
      (message) {
        // メッセージを受信したときの処理
        print('WebSocket message: $message');
      },
      onDone: () {
        // 接続が切れたときの処理
        print('再接続を試みます。');
        _reconnect();
      },
      onError: (error) {
        // エラーが発生したときの処理
        print('WebSocket error: $error');
        _reconnect();
      },
    );
  }
  // WebSocketの再接続を試みる関数
  void _reconnect() {
    IOWebSocketChannel.connect(Uri.parse("ws://IP:PORT/ws/$_client_id"));
  }
}