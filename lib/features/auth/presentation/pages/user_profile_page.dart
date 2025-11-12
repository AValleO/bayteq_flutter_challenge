import 'package:bayteq_flutter_challenge/features/auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          initial: (loginForm) {
            // Navegar al login cuando el usuario cierra sesión
            context.go('/');
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Mi Perfil'),
            actions: [
              IconButton(
                icon: const Icon(Icons.logout),
                tooltip: 'Cerrar sesión',
                onPressed: () => _showLogoutDialog(context),
              ),
            ],
          ),
          body: state.maybeWhen(
            authenticated: (user) => SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Card de Información Básica
                Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(user.image),
                          backgroundColor: Colors.grey[200],
                        ),
                        const SizedBox(height: 16),
                        Text(
                          '${user.firstName} ${user.lastName}',
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '@${user.username}',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: Colors.grey[600],
                              ),
                        ),
                        if (user.role.isNotEmpty) ...[
                          const SizedBox(height: 8),
                          Chip(
                            label: Text(user.role),
                            backgroundColor: Theme.of(context).primaryColor.withValues(alpha: 0.1),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Card de Información de Contacto
                Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Información de Contacto',
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(height: 16),
                        _buildInfoRow(Icons.email, 'Email', user.email),
                        if (user.phone.isNotEmpty) ...[
                          const SizedBox(height: 12),
                          _buildInfoRow(Icons.phone, 'Teléfono', user.phone),
                        ],
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Card de Información Personal
                Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Información Personal',
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(height: 16),
                        if (user.age > 0) _buildInfoRow(Icons.cake, 'Edad', '${user.age} años'),
                        if (user.gender.isNotEmpty) ...[
                          const SizedBox(height: 12),
                          _buildInfoRow(Icons.person, 'Género', user.gender == 'female' ? 'Femenino' : 'Masculino'),
                        ],
                        if (user.birthDate.isNotEmpty) ...[
                          const SizedBox(height: 12),
                          _buildInfoRow(Icons.calendar_today, 'Fecha de Nacimiento', user.birthDate),
                        ],
                        if (user.bloodGroup.isNotEmpty) ...[
                          const SizedBox(height: 12),
                          _buildInfoRow(Icons.bloodtype, 'Grupo Sanguíneo', user.bloodGroup),
                        ],
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Card de Información de la Empresa
                if (user.company.name.isNotEmpty)
                  Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Información de la Empresa',
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(height: 16),
                          _buildInfoRow(Icons.business, 'Empresa', user.company.name),
                          if (user.company.title.isNotEmpty) ...[
                            const SizedBox(height: 12),
                            _buildInfoRow(Icons.work, 'Título', user.company.title),
                          ],
                          if (user.company.department.isNotEmpty) ...[
                            const SizedBox(height: 12),
                            _buildInfoRow(Icons.group, 'Departamento', user.company.department),
                          ],
                        ],
                      ),
                    ),
                  ),
                const SizedBox(height: 16),

                // Tarjeta de Dirección
                if (user.address.city.isNotEmpty || user.address.address.isNotEmpty)
                  Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dirección',
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(height: 16),
                          if (user.address.address.isNotEmpty)
                            _buildInfoRow(Icons.location_on, 'Calle', user.address.address),
                          if (user.address.city.isNotEmpty) ...[
                            const SizedBox(height: 12),
                            _buildInfoRow(Icons.location_city, 'Ciudad', user.address.city),
                          ],
                          if (user.address.state.isNotEmpty) ...[
                            const SizedBox(height: 12),
                            _buildInfoRow(Icons.map, 'Estado', user.address.state),
                          ],
                          if (user.address.postalCode.isNotEmpty) ...[
                            const SizedBox(height: 12),
                            _buildInfoRow(Icons.local_post_office, 'Código Postal', user.address.postalCode),
                          ],
                          if (user.address.country.isNotEmpty) ...[
                            const SizedBox(height: 12),
                            _buildInfoRow(Icons.flag, 'País', user.address.country),
                          ],
                        ],
                      ),
                    ),
                  ),
              ],
            ),
            ),
            orElse: () => const Center(child: Text('Usuario no autenticado')),
          ),
        );
      },
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Cerrar Sesión'),
        content: const Text('¿Estás seguro de que deseas cerrar sesión?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(dialogContext).pop();
              context.read<AuthBloc>().add(const AuthEvent.loggedOut());
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.red,
            ),
            child: const Text('Cerrar Sesión'),
          ),
        ],
      ),
    );
  }

  // Widget para construir una fila de información con ícono, etiqueta y un valor
  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 20, color: Colors.grey[600]),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
