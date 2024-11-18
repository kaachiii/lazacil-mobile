import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lazacil_mobile/screens/menu.dart';
import 'package:lazacil_mobile/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class ProductFormPage extends StatefulWidget {
  const ProductFormPage({super.key});

  @override
  State<ProductFormPage> createState() => _ProductFormPageState();
}

class _ProductFormPageState extends State<ProductFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _price = 0;
  int _quantity = 0;
  String _location = "";
  String _description = "";

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Form Tambah Produk',
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Masukkan nama produk",
                  labelText: "Nama Produk",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _name = value!;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Nama produk tidak boleh kosong!";
                  }
                  // Cek apakah mengandung karakter khusus yang tidak diizinkan
                  if (RegExp(r'[/\:*?"<>|]').hasMatch(value)) {
                    return "Nama produk tidak boleh mengandung karakter khusus!";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Masukkan harga produk",
                  labelText: "Harga Produk",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _price = int.tryParse(value!) ?? 0;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Harga produk tidak boleh kosong!";
                  }
                  final parsedValue = int.tryParse(value);
                  if (parsedValue == null) {
                    return "Harga produk harus berupa angka!";
                  }
                  if (parsedValue < 0) {
                    return "Harga produk tidak boleh negatif!";
                  }
                  if (parsedValue == 0) {
                    return "Harga produk tidak boleh nol!";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Masukkan deskripsi produk",
                  labelText: "Deskripsi Produk",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _description = value!;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Deskripsi produk tidak boleh kosong!";
                  }
                  if (value.length < 15) {
                    return "Deskripsi produk harus lebih dari 15 karakter!";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Masukkan lokasi produk",
                  labelText: "Lokasi Produk",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _location = value!;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Lokasi produk tidak boleh kosong!";
                  }
                  if (value.length > 20) {
                    return "Lokasi produk tidak boleh lebih dari 20 karakter!";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Masukkan jumlah produk",
                  labelText: "Jumlah Produk",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _quantity = int.tryParse(value!) ?? 0;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Jumlah produk tidak boleh kosong!";
                  }
                  final parsedValue = int.tryParse(value);
                  if (parsedValue == null) {
                    return "Jumlah produk harus berupa angka!";
                  }
                  if (parsedValue < 0) {
                    return "Jumlah produk tidak boleh negatif!";
                  }
                  if (parsedValue == 0) {
                    return "Jumlah produk tidak boleh nol!";
                  }
                  return null;
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                        Theme.of(context).colorScheme.primary),
                  ),
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      // Kirim ke Django dan tunggu respons
                      // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                      final response = await request.postJson(
                        "http://127.0.0.1:8000/create-flutter/",
                        jsonEncode(<String, String>{
                          'name': _name,
                          'price': _price.toString(),
                          'description': _description,
                          'location': _location,
                          'quantity': _quantity.toString()
                          // TODO: Sesuaikan field data sesuai dengan aplikasimu
                        }),
                      );
                      if (context.mounted) {
                        if (response['status'] == 'success') {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text("Produk baru berhasil disimpan!"),
                          ));
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()),
                          );
                        } else {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content:
                                Text("Terdapat kesalahan, silakan coba lagi."),
                          ));
                        }
                      }
                    }
                  },
                  child: const Text(
                    "Save",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
