import UIKit

typealias ViewCodeController<ViewCode> = BaseViewCodeController<ViewCode> & ViewCodeControllerProtocol where ViewCode: UIView

class BaseViewCodeController<ViewCode>: UIViewController where ViewCode: UIView {
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
        
        guard let self = self as? ViewCodeController<ViewCode> else {
            return
        }
        
        self.viewCodeConfiguration()
    }
    
    /// Produces a ViewCodeController with the assigned ViewCode generic already instantiated and injected on the ViewController.
    static func instantiate() -> Self {
        let viewCode = ViewCode()
        return Self.init(viewCode: viewCode)
    }
}
