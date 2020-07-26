import UIKit

class ViewCodeController<ViewCode>: UIViewController where ViewCode: UIView {
    let viewCode: ViewCode
    
    required init(viewCode: ViewCode) {
        self.viewCode = viewCode
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Should not be used. ViewCode class.")
    }
    
    override func loadView() {
        view = viewCode
    }
    
    /// Produces a ViewCodeController with the assigned ViewCode generic already instantiated and injected on the ViewController.
    static func instantiate() -> Self {
        let viewCode = ViewCode()
        return Self.init(viewCode: viewCode)
    }
}
