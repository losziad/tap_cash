abstract class AddToWalletStates {}

class AddToWalletInitialState extends AddToWalletStates{}
class AddToWalletSuccessfulState extends AddToWalletStates{}
class AddToWalletLoadingState extends AddToWalletStates{}
class AddToWalletErrorState extends AddToWalletStates{
  String error;

  AddToWalletErrorState(this.error);
}