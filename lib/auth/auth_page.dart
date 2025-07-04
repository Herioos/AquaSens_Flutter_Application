import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/main_content.dart';
import 'package:flutter_application_2/user_repository.dart'; // importa tu clase

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  static String routeName = '/auth';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('AquaSens'),
          bottom: const TabBar(
            tabs: [Tab(text: 'Iniciar sesión'), Tab(text: 'Registrarse')],
          ),
        ),
        body: const TabBarView(children: [_LoginForm(), _RegisterForm()]),
      ),
    );
  }
}

class _LoginForm extends StatefulWidget {
  const _LoginForm();

  @override
  State<_LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _repo = UserRepository();

  void _login() {
    final email = _emailController.text;
    final password = _passwordController.text;

    if (_repo.login(email, password)) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => MainContent()));
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Credenciales incorrectas")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(labelText: 'Correo electrónico'),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(labelText: 'Contraseña'),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: _login,
            child: const Text('Iniciar sesión'),
          ),
        ],
      ),
    );
  }
}

class _RegisterForm extends StatefulWidget {
  const _RegisterForm();

  @override
  State<_RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<_RegisterForm> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _repo = UserRepository();

  void _register() {
    final name = _nameController.text;
    final email = _emailController.text;
    final password = _passwordController.text;

    if (_repo.register(name, email, password)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Usuario registrado correctamente")),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("El correo ya está registrado")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(labelText: 'Nombre completo'),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(labelText: 'Correo electrónico'),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(labelText: 'Contraseña'),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: _register,
            child: const Text('Registrarse'),
          ),
        ],
      ),
    );
  }
}
