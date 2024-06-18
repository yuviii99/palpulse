import 'package:supabase/supabase.dart';

class MessageRepository {
  final SupabaseClient dbClient;

  const MessageRepository({required this.dbClient});

  Future<Map<String, dynamic>> createMessage(Map<String, dynamic> data) async {
    try {
      return await dbClient.from('messages').insert(data).select().single();
    } catch (err) {
      throw Exception(err);
    }
  }

  Future<List<Map<String, dynamic>>> fetchMessages(String chatRoomId) async {
    try {
      // Perform the select operation and handle the response
      final response = await dbClient
          .from('messages')
          .select()
          .eq('chat_room_id', chatRoomId);

      // Ensure the data is correctly formatted as a list of maps
      return response;
    } catch (err) {
      throw Exception('Failed to fetch messages: $err');
    }
  }
}
