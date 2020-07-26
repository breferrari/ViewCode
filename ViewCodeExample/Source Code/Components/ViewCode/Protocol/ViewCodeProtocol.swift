protocol ViewCodeProtocol {
    /// 1st step in ViewCode configuration. This step can be used to override or prepare things in the `UIView` class. Runs during `init()`.
    func viewCodeInitialConfiguration()
    
    /// 2nd step in ViewCode configuration. This step configures constraints of a given `View` and its `Subviews`. Runs during `init()`.
    ///
    ///     func viewCodeConstraints() {
    ///       view.translatesAutoresizingMaskIntoConstraints = false
    ///       self.addSubview(view)
    ///
    ///       NSLayoutConstraint.activate([
    ///           view.centerXAnchor.constraint(equalTo: self.centerXAnchor),
    ///           view.centerYAnchor.constraint(equalTo: self.centerYAnchor)
    ///       ])
    ///     }
    func viewCodeConstraints()
    
    /// 3rd step in ViewCode configuration. Can set values based on frame and bounds sizes. Runs during `init()` and `layoutSubviews()`.
    ///
    ///     func viewCodeAdditionalConfigurations() {
    ///       button.layer.cornerRadius = button.frame.height / 2
    ///       button.layer.masksToBounds = value
    ///       button.clipsToBounds = value
    ///     }
    func viewCodeAdditionalConfigurations()
    
    // MARK: - Template Method
    
    /// Calls all ViewCodeProtocol methods in the default order.
    func setupViewCode()
}

// MARK: - Template Method Implementation

extension ViewCodeProtocol {
    func setupViewCode() {
        viewCodeInitialConfiguration()
        viewCodeConstraints()
        viewCodeAdditionalConfigurations()
    }
}
