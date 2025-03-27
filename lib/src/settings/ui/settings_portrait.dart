import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_pay/src/config/theme/app_theme_cubit.dart';

class SettingsPortrait extends StatelessWidget {
  const SettingsPortrait({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _SettingsLisTile(
          name: "Modo oscuro",
          description: "Establecer el modo oscuro de la aplicacion",
          onTap: () => context.read<AppThemeCubit>().toggleTheme(),
          icon:
              context.watch<AppThemeCubit>().state
                  ? Icons.dark_mode_rounded
                  : Icons.light_mode_rounded,
        ),
        Divider(),
        _SettingsLisTile(
          name: "Compartir",
          description: "Compartir enlace de descarga de la aplicacion",
          onTap: () {},
          icon: Icons.share_rounded,
        ),
        _SettingsLisTile(
          name: "Acerca de",
          description: "Conoce acerca de los desarrolladores",
          onTap: () {},
          icon: Icons.help_rounded,
        ),
      ],
    );
  }
}

class _SettingsLisTile extends StatelessWidget {
  final String name;
  final String description;
  final IconData icon;
  final VoidCallback onTap;
  const _SettingsLisTile({
    required this.name,
    required this.description,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Text(description),
      onTap: onTap,
      trailing: Icon(icon),
      style: ListTileStyle.list,
    );
  }
}
