import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skakel_mobile/db/repositories/shared.dart';

@RoutePage()
class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final chatsStream = ref.watch(chatRepoProvider).streamAll();
    final chats = useStream(chatsStream);
    final chatList = chats.data ?? [];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(chatList[index].name ?? 'Some chat'),
            );
          },
          itemCount: chatList.length,
        ),
      ),
    );
  }
}
