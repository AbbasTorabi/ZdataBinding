# ZdataBinding

[![CI Status](https://img.shields.io/travis/AbbasTorabi/ZdataBinding.svg?style=flat)](https://travis-ci.org/AbbasTorabi/ZdataBinding)
[![Version](https://img.shields.io/cocoapods/v/ZdataBinding.svg?style=flat)](https://cocoapods.org/pods/ZdataBinding)
[![License](https://img.shields.io/cocoapods/l/ZdataBinding.svg?style=flat)](https://cocoapods.org/pods/ZdataBinding)
[![Platform](https://img.shields.io/cocoapods/p/ZdataBinding.svg?style=flat)](https://cocoapods.org/pods/ZdataBinding)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

you must create Dynamic variable to bind textfiled value.
like this:
```swift
import ZdataBinding

class ViewControllerViewModel {

  var my_variable: Dynamic<String> = Dynamic("")

}
```
your viewController class & textfiled must like this:
```swift
import ZdataBinding

class ViewController: UIViewController {

    var viewModel : ViewControllerViewModel! {
        didSet {
        // bind from viewModel to view
        viewModel.my_variable.bind = { [unowned self] in self.myTextField.text = $0 }
        }
    @IBOutlet weak var myTextField: BindingTextField! {
        didSet {
        // bind from view to viewModel
            self.myTextField.bind { self.viewModel.my_variable.value = $0 }
        }
      }
        override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ViewControllerViewModel()
        }
   }
 ```
## Installation

ZdataBinding is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ZdataBinding'
```

## Author

AbbasTorabi

mail: abbas.programing@gmail.com

## License

ZdataBinding is available under the MIT license. See the LICENSE file for more info.
