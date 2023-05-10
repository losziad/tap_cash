abstract class ButtonNavigationStates{}


class ButtonNavigationInitialStates extends ButtonNavigationStates{}


class ChangeHomeScreenState extends ButtonNavigationStates{}

class AppInitialState extends ButtonNavigationStates{}
class AppGetProfileSuccessffulState extends ButtonNavigationStates{}
class AppGetProfileLoadingState extends ButtonNavigationStates{}
class AppGetProfileErrorState extends ButtonNavigationStates{
  String error;

  AppGetProfileErrorState(this.error);
}
