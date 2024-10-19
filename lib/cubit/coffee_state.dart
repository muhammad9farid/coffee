import '../OOP/drinks.dart';

abstract class CoffeeState {}

class CoffeeInitial extends CoffeeState {}

class HomePageState extends CoffeeState {}

class FavoritePageState extends CoffeeState {}

class BagPageState extends CoffeeState {}

class NotifPageState extends CoffeeState {}

class CoffeeInitialState extends CoffeeState {}

class MainPageState extends CoffeeState {}

class DetailsPageState extends CoffeeState {}

class ControlPageState extends CoffeeState {}

class cat1State extends CoffeeState {}

class cat2State extends CoffeeState {}

class cat3State extends CoffeeState {}

class cat4State extends CoffeeState {}

class pADDState extends CoffeeState {}

class CartUpdated extends CoffeeState {
  final List<Map<String, dynamic>> cart;

  CartUpdated(this.cart);
}

class CounterInitial extends CoffeeState {
  final int count;
  CounterInitial(this.count);
}

class CounterUpdated extends CoffeeState {
}

/*
class DBLoading extends CoffeeState {}

class DBOpened extends CoffeeState {}

class DBError extends CoffeeState {
  final String message;
  DBError(this.message);
}

class DBDataInserted extends CoffeeState {
  final String message;
  DBDataInserted(this.message);
}

class DBDataFetched extends CoffeeState {
  final List<Map<String, dynamic>> products;
  DBDataFetched(this.products);
}*/