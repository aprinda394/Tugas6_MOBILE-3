import 'package:flutter/material.dart';
import '../Models/buku.dart';
import '../Pages/detail_page.dart';

Widget buildListView() {
  return ListView.builder(
    itemCount: dataBuku.length,
    itemBuilder: (context, index) {
      final buku = dataBuku[index];
      return Card(
        margin: const EdgeInsets.all(8),
        elevation: 4,
        child: ListTile(
          leading: Image.network(buku.gambar, width: 60, fit: BoxFit.cover),
          title: Text(buku.judul),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(buku: buku),
              ),
            );
          },
        ),
      );
    },
  );
}