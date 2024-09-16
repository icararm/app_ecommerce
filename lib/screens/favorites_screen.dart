import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favoritos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: 10, // Número de itens favoritos, ajuste conforme necessário
          itemBuilder: (ctx, i) => Card(
            elevation: 5,
            margin: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: Image.network(
                'https://via.placeholder.com/100',
                fit: BoxFit.cover,
              ),
              title: Text('Produto Favorito ${i + 1}'),
              subtitle: Text('Descrição do Produto ${i + 1}'),
              trailing: IconButton(
                icon: Icon(Icons.remove_circle),
                onPressed: () {
                  // Ação para remover o item dos favoritos
                },
              ),
              onTap: () {
                // Navegar para detalhes do produto
              },
            ),
          ),
        ),
      ),
    );
  }
}
