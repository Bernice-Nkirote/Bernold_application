import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:bernold_application/models/product_model.dart';
import '../../models/wishlist_model.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistLoading()) {
    on<StartWishlist>(_onStartWishlist);
    on<AddWishlistProduct>(_onAddWishlistProduct);
    on<RemoveWishlistProduct>(_onRemoveWishlistProduct);
  }

  Future<void> _onStartWishlist(
      StartWishlist event, Emitter<WishlistState> emit) async {
    emit(WishlistLoading());
    try {
      await Future<void>.delayed(Duration(seconds: 1));
      emit(WishlistLoaded(wishlist: Wishlist(products: [])));
    } catch (e) {
      emit(WishlistError());
      print("Error in _onStartWishlist: $e");
    }
  }

  void _onAddWishlistProduct(
      AddWishlistProduct event, Emitter<WishlistState> emit) {
    final state = this.state;
    if (state is WishlistLoaded) {
      try {
        emit(WishlistLoaded(
          wishlist: Wishlist(
            products: List.from(state.wishlist.products)..add(event.product),
          ),
        ));
      } catch (e) {
        emit(WishlistError());
        print("Error in _onAddWishlistProduct: $e");
      }
    }
  }

  void _onRemoveWishlistProduct(
      RemoveWishlistProduct event, Emitter<WishlistState> emit) {
    final state = this.state;
    if (state is WishlistLoaded) {
      try {
        emit(WishlistLoaded(
          wishlist: Wishlist(
            products: List.from(state.wishlist.products)..remove(event.product),
          ),
        ));
      } catch (e) {
        emit(WishlistError());
        print("Error in _onRemoveWishlistProduct: $e");
      }
    }
  }
}
