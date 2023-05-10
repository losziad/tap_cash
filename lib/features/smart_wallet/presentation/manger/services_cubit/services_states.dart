abstract class RemoveFromWalletStates {}

class RemoveFromWalletInitialState extends RemoveFromWalletStates {}

class RemoveFromWalletSuccessfulState extends RemoveFromWalletStates {}

class RemoveFromWalletLoadingState extends RemoveFromWalletStates {}

class RemoveFromWalletErrorState extends RemoveFromWalletStates {
  String error;

  RemoveFromWalletErrorState(this.error);
}
