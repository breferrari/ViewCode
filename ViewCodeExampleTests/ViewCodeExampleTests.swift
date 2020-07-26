import XCTest
@testable import ViewCodeExample

final class ViewCodeControllerTests: XCTestCase {
    var sut: ViewCodeController<MockViewCode>!
    var mockViewCode: MockViewCode!
    
    func testViewCodeIsInitializedProperly() {
        mockViewCode = MockViewCode()
        sut = ViewCodeController<MockViewCode>(viewCode: mockViewCode)
        XCTAssertEqual(mockViewCode, sut.viewCode)
        XCTAssertEqual(mockViewCode, sut.view)
    }
    
    func testViewCodeIsInstantiatedProperly() {
        sut = ViewCodeController<MockViewCode>.instantiate()
        XCTAssertNotNil(sut.viewCode)
        XCTAssertEqual(sut.viewCode, sut.view)
    }
}

final class MockViewCode: ViewCode {
    func viewCodeInitialConfiguration() { }
    func viewCodeConstraints() { }
    func viewCodeAdditionalConfigurations() { }
}
