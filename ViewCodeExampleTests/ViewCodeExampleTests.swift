import XCTest
@testable import ViewCodeExample

final class ViewCodeControllerTests: XCTestCase {
    var sut: BaseViewCodeController<MockViewCode>!
    var mockViewCode: MockViewCode!
    
    func testViewCodeIsInitializedProperly() {
        mockViewCode = MockViewCode()
        sut = BaseViewCodeController<MockViewCode>.init(viewCode: mockViewCode)
        XCTAssertEqual(mockViewCode, sut.viewCode)
        XCTAssertEqual(mockViewCode, sut.view)
    }
    
    func testViewCodeIsInstantiatedProperly() {
        sut = BaseViewCodeController<MockViewCode>.instantiate()
        XCTAssertNotNil(sut.viewCode)
        XCTAssertEqual(sut.viewCode, sut.view)
    }
}

final class MockViewCode: ViewCode {
    func viewCodeInitialConfiguration() { }
    func viewCodeConstraints() { }
    func viewCodeAdditionalConfigurations() { }
}
