import '../../entities/Trader.dart';

abstract class TraderRepository {
  List<Trader> getAllTraders();
  void addTrader(String name, double initialBalance);
  Trader? getTraderById(int id);
}