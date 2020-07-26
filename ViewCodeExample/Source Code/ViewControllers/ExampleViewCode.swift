import UIKit

class ExampleViewCode: ViewCode {
    lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Test", for: .normal)
        button.tintColor = .red
        return button
    }()
    
    init() {
        super.init(frame: .zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Should not be used. ViewCode class.")
    }
}

// MARK: - ViewCodeProtocol

extension ExampleViewCode {
    func viewCodeInitialConfiguration() {
        backgroundColor = .white
    }
    
    func viewCodeConstraints() {
        setupButtonConstraints()
    }
    
    func viewCodeAdditionalConfigurations() {
        
    }
}

extension ExampleViewCode {
    func setupButtonConstraints() {
        addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: centerXAnchor),
            button.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0)
        ])
    }
}
