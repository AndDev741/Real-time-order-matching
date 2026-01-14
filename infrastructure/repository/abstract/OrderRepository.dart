import '../../../domain/entities/Order.dart';

abstract class OrderRepository {
  List<Order> getAllOrders();
  Order? getOrderById(int id);
  void addOrder(Order order);
  void updateOrder(Order order);
  void deleteOrder(int id);
}