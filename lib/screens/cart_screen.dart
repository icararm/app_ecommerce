import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems = [
    {'name': 'Produto 1', 'price': 29.99, 'quantity': 1},
    {'name': 'Produto 2', 'price': 49.99, 'quantity': 2},
    {'name': 'Produto 3', 'price': 19.99, 'quantity': 1},
  ];

  double get totalPrice {
    return cartItems.fold(0, (sum, item) => sum + (item['price'] * item['quantity']));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrinho de Compras'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartItems[index];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      title: Text(item['name']),
                      subtitle: Text('Quantidade: ${item['quantity']}'),
                      trailing: Text('R\$ ${(item['price'] * item['quantity']).toStringAsFixed(2)}'),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Total: R\$ ${totalPrice.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implementar a lógica de checkout aqui
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Compra realizada com sucesso!')),
                );
              },
              child: Text('Finalizar Compra'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50), backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
