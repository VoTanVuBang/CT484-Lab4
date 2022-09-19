import 'package:flutter/material.dart';
import 'order_item_card.dart';
import 'order_manager.dart';
import '../shared/app_drawer.dart';

class OrdersScreeen extends StatelessWidget {
  static const routeName = '/orders';
  const OrdersScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('building orders');
    final ordersManager = OrdersManager();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Orders'),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: ordersManager.orderCount,
        itemBuilder: (ctx,i) => OrderItemCard(ordersManager.orders[i]),
      ),
    );
  }
}