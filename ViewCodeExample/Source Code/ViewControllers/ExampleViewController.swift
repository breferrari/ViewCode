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
        UIView.animate(withDuration: 0.25) {
            self.viewCode.roundView.alpha = self.viewCode.roundView.alpha == 1 ? 0 : 1
        }
    }
}
