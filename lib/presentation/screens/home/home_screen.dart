import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RiverApp'),
      ),
      body: const _HomeScreenView(),
    );
  }
}

class _HomeScreenView extends StatelessWidget {
  const _HomeScreenView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        _CustomListTitle(
          title: 'State Provider',
          subTitle: 'A simple state',
          location: '/state-provider',
        ),
        _CustomListTitle(
          title: 'Future Provider',
          subTitle: 'A simple future + Family',
          location: '/future-provider',
        ),
        _CustomListTitle(
          title: 'Stream Provider',
          subTitle: 'A stream provider',
          location: '/stream-provider',
        ),
        _CustomListTitle(
          title: 'State Notifier Provider',
          subTitle: 'A provider with custom state',
          location: '/state-notifier-provider',
        ),
      ],
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  final String title;
  final String subTitle;
  final String location;

  const _CustomListTitle({
    required this.title,
    required this.subTitle,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () => context.push(location),
    );
  }
}
