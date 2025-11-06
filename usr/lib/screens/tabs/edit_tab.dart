import 'package:flutter/material.dart';

class EditTab extends StatelessWidget {
  const EditTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton.icon(
            onPressed: () {
              // TODO: Implement image picking
            },
            icon: const Icon(Icons.photo_library),
            label: const Text('Pilih Foto dari Galeri'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
            ),
          ),
          const SizedBox(height: 24),
          const Divider(),
          const Text('Fitur Editing', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          ListTile(
            leading: const Icon(Icons.flip_to_back),
            title: const Text('Hapus & Ganti Background'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.aspect_ratio),
            title: const Text('Ubah Ukuran (Pas Foto)'),
            subtitle: const Text('2x3, 3x4, 4x6'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Ganti Pakaian (Jas, Kemeja)'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.face),
            title: const Text('Gaya Rambut & Aksesori'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
