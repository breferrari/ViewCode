import UIKit

class ExampleViewController: ViewCodeController<ExampleViewCode> {
    
}

// MARK: - ViewCodeController Protocol

extension ExampleViewController {
    func viewCodeConfiguration() {
        viewCode.button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
    }
}

// MARK: - Actions

private extension ExampleViewController {
    @objc
    func didTapButton(_ sender: UIButton) {
        viewCode.toggleRoundView()
    }
}
