protocol ViewCodeControllerProtocol {
    /// This step can be used to setup targets to the ViewCode layer. Runs during `loadView()`.
    ///
    ///     func viewCodeConfiguration() {
    ///       viewCode.button.addTarget(self, action: #selector(action(_:)), for: .touchUpInside)
    ///     }
    func viewCodeConfiguration()
}
