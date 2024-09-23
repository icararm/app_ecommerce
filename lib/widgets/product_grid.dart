import 'package:flutter/material.dart';
import '../screens/product_detail_screen.dart';

// Classe Produto
class Produto {
  final String nome;
  final String imagemUrl;

  Produto({
    required this.nome,
    required this.imagemUrl,
  });
}

class ProductGrid extends StatelessWidget {

  // Lista de produtos com URLs de imagens
  final List<Produto> produtos = [
    Produto(nome: 'Produto 1', imagemUrl: 'https://via.placeholder.com/150'),
    Produto(nome: 'Produto 2', imagemUrl: 'https://via.placeholder.com/150'),
    Produto(nome: 'Produto 3', imagemUrl: 'https://via.placeholder.com/150'),
    Produto(nome: 'Produto 4', imagemUrl: 'https://via.placeholder.com/150'),
    Produto(nome: 'Produto 5', imagemUrl: 'https://via.placeholder.com/150'),
    Produto(nome: 'Produto 6', imagemUrl: 'https://via.placeholder.com/150'),
    Produto(nome: 'Produto 7', imagemUrl: 'https://via.placeholder.com/150'),
    Produto(nome: 'Produto 8', imagemUrl: 'https://via.placeholder.com/150'),
    Produto(nome: 'Produto 9', imagemUrl: 'https://via.placeholder.com/150'),
    Produto(nome: 'Produto 10', imagemUrl: 'https://via.placeholder.com/150'),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: 10,
      itemBuilder: (ctx, i) => GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductDetailScreen()),
          );
        },
        child: Card(
          elevation: 5,
          child: Column(
            children: [
              Expanded(
                child: Image.network(
                  'https://via.placeholder.com/150',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Produto ${i + 1}'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
