import UIKit

class ExampleViewCode: ViewCode {
    lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Test", for: .normal)
        button.tintColor = .red
        return button
    }()
    
    lazy var roundView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.alpha = 0
        return view
    }()
    
    init() {
        super.init(frame: .zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Should not be used. ViewCode class.")
    }
}

// MARK: - ViewCode Protocol

extension ExampleViewCode {
    func viewCodeInitialConfiguration() {
        backgroundColor = .white
    }
    
    func viewCodeConstraints() {
        setupButtonConstraints()
        setupRoundViewConstraints()
    }
    
    func viewCodeAdditionalConfigurations() {
        roundView.layer.cornerRadius = roundView.frame.height / 2
        roundView.layer.masksToBounds = true
        roundView.clipsToBounds = true
    }
}

// MARK: - View Constraints

private extension ExampleViewCode {
    func setupButtonConstraints() {
        addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: centerXAnchor),
            button.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0)
        ])
    }
    
    func setupRoundViewConstraints() {
        addSubview(roundView)
        roundView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            roundView.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 100),
            roundView.centerXAnchor.constraint(equalTo: button.centerXAnchor),
            roundView.widthAnchor.constraint(equalToConstant: 100),
            roundView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}
