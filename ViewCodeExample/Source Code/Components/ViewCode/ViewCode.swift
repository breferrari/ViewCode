import UIKit

typealias ViewCode = BaseViewCode & ViewCodeProtocol

class BaseViewCode: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        guard let self = self as? ViewCode else {
            return
        }
        
        self.setupViewCode()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        guard let self = self as? ViewCode else {
            return
        }
        
        self.viewCodeAdditionalConfigurations()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Should not be used. ViewCode class.")
    }
}
