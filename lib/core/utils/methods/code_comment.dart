//HomeViewModel() {
//    dniController.addListener(() {
//      isViewSearch = dniController.text.isEmpty;
//      print(isViewSearch);
//      notifyListeners();
//    });
//  }
//  TextEditingController dniController = TextEditingController();
//  bool isVisibleDropDown = false;
//  String _selectedCountry = '';
//  String get selectedCountry => _selectedCountry;
//  set selectedCountry(String value) {
//    _selectedCountry = value;
//    notifyListeners();
//  }//

//  bool _isViewSearch = false;
//  bool get isViewSearch => _isViewSearch;
//  set isViewSearch(bool value) {
//    _isViewSearch = value;
//    notifyListeners();
//  }

//DropDownCustom(
// onChanged: (value, isOpen) {
//   viewModel.dniController.text = value!;
//   viewModel.isVisibleDropDown = isOpen!;
// },
// controller: viewModel.dniController,
// isSearchDropDown: viewModel.isViewSearch,
// items: const [
//   '12',
//   '12',
//   '13',
//   '14',
// ],
// 
