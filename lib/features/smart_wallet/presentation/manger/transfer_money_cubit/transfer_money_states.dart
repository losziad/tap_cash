abstract class TransferMoneyStates {}

class InitialTransferMoneyState extends TransferMoneyStates {}

class TransferMoneySuccessState extends TransferMoneyStates {}

class TransferMoneyLoadingState extends TransferMoneyStates {}

class TransferMoneyErrorState extends TransferMoneyStates {}

class LowBalanceState extends TransferMoneyStates {}
