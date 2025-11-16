import 'package:flutter/material.dart';
import '../Models/buku.dart';
import '../Pages/detail_page.dart';

Widget buildGridView() {
  return GridView.builder(
    padding: const EdgeInsets.all(10),
    itemCount: dataBuku.length,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, // jumlah kolom
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 0.7, // tinggi-lebar card
    ),
    itemBuilder: (context, index) {
      final buku = dataBuku[index];
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(buku: buku),
            ),
          );
        },
        child: Card(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(10)),
                child: Image.network(
                  buku.gambar,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  buku.judul,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}