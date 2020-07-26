import SwiftUI

struct ExampleViewCodeRepresentable: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> ExampleViewController {
        ExampleViewController.instantiate()
    }

    func updateUIViewController(_ uiViewController: ExampleViewController, context: Context) {
        
    }
}

struct MyPreview_Preview: PreviewProvider {
    static var previews: some View {
        ExampleViewCodeRepresentable()
            .previewDevice("iPhone 11")
    }
    
}
