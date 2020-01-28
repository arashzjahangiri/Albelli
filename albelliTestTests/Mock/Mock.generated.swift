// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


// Generated with SwiftyMocky 3.4.0

import SwiftyMocky
#if !MockyCustom
import XCTest
#endif
@testable import albelliTest


// MARK: - MainInteractorProtocol
open class MainInteractorProtocolMock: MainInteractorProtocol, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }





    open func fetchPhotos() {
        addInvocation(.m_fetchPhotos)
		let perform = methodPerformValue(.m_fetchPhotos) as? () -> Void
		perform?()
    }

    open func viewDidLoad() {
        addInvocation(.m_viewDidLoad)
		let perform = methodPerformValue(.m_viewDidLoad) as? () -> Void
		perform?()
    }

    open func viewWillAppear(_ animated: Bool) {
        addInvocation(.m_viewWillAppear__animated(Parameter<Bool>.value(`animated`)))
		let perform = methodPerformValue(.m_viewWillAppear__animated(Parameter<Bool>.value(`animated`))) as? (Bool) -> Void
		perform?(`animated`)
    }

    open func viewDidAppear(_ animated: Bool) {
        addInvocation(.m_viewDidAppear__animated(Parameter<Bool>.value(`animated`)))
		let perform = methodPerformValue(.m_viewDidAppear__animated(Parameter<Bool>.value(`animated`))) as? (Bool) -> Void
		perform?(`animated`)
    }

    open func viewWillDisappear(_ animated: Bool) {
        addInvocation(.m_viewWillDisappear__animated(Parameter<Bool>.value(`animated`)))
		let perform = methodPerformValue(.m_viewWillDisappear__animated(Parameter<Bool>.value(`animated`))) as? (Bool) -> Void
		perform?(`animated`)
    }

    open func viewDidDisappear(_ animated: Bool) {
        addInvocation(.m_viewDidDisappear__animated(Parameter<Bool>.value(`animated`)))
		let perform = methodPerformValue(.m_viewDidDisappear__animated(Parameter<Bool>.value(`animated`))) as? (Bool) -> Void
		perform?(`animated`)
    }


    fileprivate enum MethodType {
        case m_fetchPhotos
        case m_viewDidLoad
        case m_viewWillAppear__animated(Parameter<Bool>)
        case m_viewDidAppear__animated(Parameter<Bool>)
        case m_viewWillDisappear__animated(Parameter<Bool>)
        case m_viewDidDisappear__animated(Parameter<Bool>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_fetchPhotos, .m_fetchPhotos):
                return true 
            case (.m_viewDidLoad, .m_viewDidLoad):
                return true 
            case (.m_viewWillAppear__animated(let lhsAnimated), .m_viewWillAppear__animated(let rhsAnimated)):
                guard Parameter.compare(lhs: lhsAnimated, rhs: rhsAnimated, with: matcher) else { return false } 
                return true 
            case (.m_viewDidAppear__animated(let lhsAnimated), .m_viewDidAppear__animated(let rhsAnimated)):
                guard Parameter.compare(lhs: lhsAnimated, rhs: rhsAnimated, with: matcher) else { return false } 
                return true 
            case (.m_viewWillDisappear__animated(let lhsAnimated), .m_viewWillDisappear__animated(let rhsAnimated)):
                guard Parameter.compare(lhs: lhsAnimated, rhs: rhsAnimated, with: matcher) else { return false } 
                return true 
            case (.m_viewDidDisappear__animated(let lhsAnimated), .m_viewDidDisappear__animated(let rhsAnimated)):
                guard Parameter.compare(lhs: lhsAnimated, rhs: rhsAnimated, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        func intValue() -> Int {
            switch self {
            case .m_fetchPhotos: return 0
            case .m_viewDidLoad: return 0
            case let .m_viewWillAppear__animated(p0): return p0.intValue
            case let .m_viewDidAppear__animated(p0): return p0.intValue
            case let .m_viewWillDisappear__animated(p0): return p0.intValue
            case let .m_viewDidDisappear__animated(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func fetchPhotos() -> Verify { return Verify(method: .m_fetchPhotos)}
        public static func viewDidLoad() -> Verify { return Verify(method: .m_viewDidLoad)}
        public static func viewWillAppear(_ animated: Parameter<Bool>) -> Verify { return Verify(method: .m_viewWillAppear__animated(`animated`))}
        public static func viewDidAppear(_ animated: Parameter<Bool>) -> Verify { return Verify(method: .m_viewDidAppear__animated(`animated`))}
        public static func viewWillDisappear(_ animated: Parameter<Bool>) -> Verify { return Verify(method: .m_viewWillDisappear__animated(`animated`))}
        public static func viewDidDisappear(_ animated: Parameter<Bool>) -> Verify { return Verify(method: .m_viewDidDisappear__animated(`animated`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func fetchPhotos(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_fetchPhotos, performs: perform)
        }
        public static func viewDidLoad(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_viewDidLoad, performs: perform)
        }
        public static func viewWillAppear(_ animated: Parameter<Bool>, perform: @escaping (Bool) -> Void) -> Perform {
            return Perform(method: .m_viewWillAppear__animated(`animated`), performs: perform)
        }
        public static func viewDidAppear(_ animated: Parameter<Bool>, perform: @escaping (Bool) -> Void) -> Perform {
            return Perform(method: .m_viewDidAppear__animated(`animated`), performs: perform)
        }
        public static func viewWillDisappear(_ animated: Parameter<Bool>, perform: @escaping (Bool) -> Void) -> Perform {
            return Perform(method: .m_viewWillDisappear__animated(`animated`), performs: perform)
        }
        public static func viewDidDisappear(_ animated: Parameter<Bool>, perform: @escaping (Bool) -> Void) -> Perform {
            return Perform(method: .m_viewDidDisappear__animated(`animated`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let invocations = matchingCalls(method.method)
        MockyAssert(count.matches(invocations.count), "Expected: \(count) invocations of `\(method.method)`, but was: \(invocations.count)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        invocations.append(call)
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType) -> [MethodType] {
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher) }
    }
    private func matchingCalls(_ method: Verify) -> Int {
        return matchingCalls(method.method).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        #if Mocky
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleMissingStubError(message: message, file: file, line: line)
        #endif
    }
}

// MARK: - MainPresenterProtocol
open class MainPresenterProtocolMock: MainPresenterProtocol, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }





    open func present(photos: [PhotoItem]) {
        addInvocation(.m_present__photos_photos(Parameter<[PhotoItem]>.value(`photos`)))
		let perform = methodPerformValue(.m_present__photos_photos(Parameter<[PhotoItem]>.value(`photos`))) as? ([PhotoItem]) -> Void
		perform?(`photos`)
    }

    open func hideActivityIndicator() {
        addInvocation(.m_hideActivityIndicator)
		let perform = methodPerformValue(.m_hideActivityIndicator) as? () -> Void
		perform?()
    }

    open func present(error: MediaError) {
        addInvocation(.m_present__error_error(Parameter<MediaError>.value(`error`)))
		let perform = methodPerformValue(.m_present__error_error(Parameter<MediaError>.value(`error`))) as? (MediaError) -> Void
		perform?(`error`)
    }

    open func handle(error: Error?, dismiss: (() -> Void)?) {
        addInvocation(.m_handle__error_errordismiss_dismiss(Parameter<Error?>.value(`error`), Parameter<(() -> Void)?>.value(`dismiss`)))
		let perform = methodPerformValue(.m_handle__error_errordismiss_dismiss(Parameter<Error?>.value(`error`), Parameter<(() -> Void)?>.value(`dismiss`))) as? (Error?, (() -> Void)?) -> Void
		perform?(`error`, `dismiss`)
    }


    fileprivate enum MethodType {
        case m_present__photos_photos(Parameter<[PhotoItem]>)
        case m_hideActivityIndicator
        case m_present__error_error(Parameter<MediaError>)
        case m_handle__error_errordismiss_dismiss(Parameter<Error?>, Parameter<(() -> Void)?>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_present__photos_photos(let lhsPhotos), .m_present__photos_photos(let rhsPhotos)):
                guard Parameter.compare(lhs: lhsPhotos, rhs: rhsPhotos, with: matcher) else { return false } 
                return true 
            case (.m_hideActivityIndicator, .m_hideActivityIndicator):
                return true 
            case (.m_present__error_error(let lhsError), .m_present__error_error(let rhsError)):
                guard Parameter.compare(lhs: lhsError, rhs: rhsError, with: matcher) else { return false } 
                return true 
            case (.m_handle__error_errordismiss_dismiss(let lhsError, let lhsDismiss), .m_handle__error_errordismiss_dismiss(let rhsError, let rhsDismiss)):
                guard Parameter.compare(lhs: lhsError, rhs: rhsError, with: matcher) else { return false } 
                guard Parameter.compare(lhs: lhsDismiss, rhs: rhsDismiss, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_present__photos_photos(p0): return p0.intValue
            case .m_hideActivityIndicator: return 0
            case let .m_present__error_error(p0): return p0.intValue
            case let .m_handle__error_errordismiss_dismiss(p0, p1): return p0.intValue + p1.intValue
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func present(photos: Parameter<[PhotoItem]>) -> Verify { return Verify(method: .m_present__photos_photos(`photos`))}
        public static func hideActivityIndicator() -> Verify { return Verify(method: .m_hideActivityIndicator)}
        public static func present(error: Parameter<MediaError>) -> Verify { return Verify(method: .m_present__error_error(`error`))}
        public static func handle(error: Parameter<Error?>, dismiss: Parameter<(() -> Void)?>) -> Verify { return Verify(method: .m_handle__error_errordismiss_dismiss(`error`, `dismiss`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func present(photos: Parameter<[PhotoItem]>, perform: @escaping ([PhotoItem]) -> Void) -> Perform {
            return Perform(method: .m_present__photos_photos(`photos`), performs: perform)
        }
        public static func hideActivityIndicator(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_hideActivityIndicator, performs: perform)
        }
        public static func present(error: Parameter<MediaError>, perform: @escaping (MediaError) -> Void) -> Perform {
            return Perform(method: .m_present__error_error(`error`), performs: perform)
        }
        public static func handle(error: Parameter<Error?>, dismiss: Parameter<(() -> Void)?>, perform: @escaping (Error?, (() -> Void)?) -> Void) -> Perform {
            return Perform(method: .m_handle__error_errordismiss_dismiss(`error`, `dismiss`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let invocations = matchingCalls(method.method)
        MockyAssert(count.matches(invocations.count), "Expected: \(count) invocations of `\(method.method)`, but was: \(invocations.count)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        invocations.append(call)
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType) -> [MethodType] {
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher) }
    }
    private func matchingCalls(_ method: Verify) -> Int {
        return matchingCalls(method.method).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        #if Mocky
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleMissingStubError(message: message, file: file, line: line)
        #endif
    }
}

// MARK: - MainViewControllerProtocol
open class MainViewControllerProtocolMock: MainViewControllerProtocol, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }

    public var viewController: UIViewController! {
		get {	invocations.append(.p_viewController_get); return __p_viewController ?? optionalGivenGetterValue(.p_viewController_get, "MainViewControllerProtocolMock - stub value for viewController was not defined") }
		@available(*, deprecated, message: "Using setters on readonly variables is deprecated, and will be removed in 3.1. Use Given to define stubbed property return value.")
		set {	__p_viewController = newValue }
	}
	private var __p_viewController: (UIViewController)?





    open func show(photos: [PhotoItem]) {
        addInvocation(.m_show__photos_photos(Parameter<[PhotoItem]>.value(`photos`)))
		let perform = methodPerformValue(.m_show__photos_photos(Parameter<[PhotoItem]>.value(`photos`))) as? ([PhotoItem]) -> Void
		perform?(`photos`)
    }

    open func hideActivityIndicator() {
        addInvocation(.m_hideActivityIndicator)
		let perform = methodPerformValue(.m_hideActivityIndicator) as? () -> Void
		perform?()
    }

    open func show(error: String) {
        addInvocation(.m_show__error_error(Parameter<String>.value(`error`)))
		let perform = methodPerformValue(.m_show__error_error(Parameter<String>.value(`error`))) as? (String) -> Void
		perform?(`error`)
    }


    fileprivate enum MethodType {
        case m_show__photos_photos(Parameter<[PhotoItem]>)
        case m_hideActivityIndicator
        case m_show__error_error(Parameter<String>)
        case p_viewController_get

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_show__photos_photos(let lhsPhotos), .m_show__photos_photos(let rhsPhotos)):
                guard Parameter.compare(lhs: lhsPhotos, rhs: rhsPhotos, with: matcher) else { return false } 
                return true 
            case (.m_hideActivityIndicator, .m_hideActivityIndicator):
                return true 
            case (.m_show__error_error(let lhsError), .m_show__error_error(let rhsError)):
                guard Parameter.compare(lhs: lhsError, rhs: rhsError, with: matcher) else { return false } 
                return true 
            case (.p_viewController_get,.p_viewController_get): return true
            default: return false
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_show__photos_photos(p0): return p0.intValue
            case .m_hideActivityIndicator: return 0
            case let .m_show__error_error(p0): return p0.intValue
            case .p_viewController_get: return 0
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func viewController(getter defaultValue: UIViewController?...) -> PropertyStub {
            return Given(method: .p_viewController_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func show(photos: Parameter<[PhotoItem]>) -> Verify { return Verify(method: .m_show__photos_photos(`photos`))}
        public static func hideActivityIndicator() -> Verify { return Verify(method: .m_hideActivityIndicator)}
        public static func show(error: Parameter<String>) -> Verify { return Verify(method: .m_show__error_error(`error`))}
        public static var viewController: Verify { return Verify(method: .p_viewController_get) }
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func show(photos: Parameter<[PhotoItem]>, perform: @escaping ([PhotoItem]) -> Void) -> Perform {
            return Perform(method: .m_show__photos_photos(`photos`), performs: perform)
        }
        public static func hideActivityIndicator(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_hideActivityIndicator, performs: perform)
        }
        public static func show(error: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_show__error_error(`error`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let invocations = matchingCalls(method.method)
        MockyAssert(count.matches(invocations.count), "Expected: \(count) invocations of `\(method.method)`, but was: \(invocations.count)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        invocations.append(call)
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType) -> [MethodType] {
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher) }
    }
    private func matchingCalls(_ method: Verify) -> Int {
        return matchingCalls(method.method).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        #if Mocky
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleMissingStubError(message: message, file: file, line: line)
        #endif
    }
}

// MARK: - PHPhotoLibraryManagerProtocol
open class PHPhotoLibraryManagerProtocolMock: PHPhotoLibraryManagerProtocol, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }





    open func grantPermission(completion: @escaping GrantPermissionCompletionHandler) {
        addInvocation(.m_grantPermission__completion_completion(Parameter<GrantPermissionCompletionHandler>.any))
		let perform = methodPerformValue(.m_grantPermission__completion_completion(Parameter<GrantPermissionCompletionHandler>.any)) as? (@escaping GrantPermissionCompletionHandler) -> Void
		perform?(`completion`)
    }

    open func fetchPhotos(completion: @escaping PhotosCompletionHandler) {
        addInvocation(.m_fetchPhotos__completion_completion(Parameter<PhotosCompletionHandler>.any))
		let perform = methodPerformValue(.m_fetchPhotos__completion_completion(Parameter<PhotosCompletionHandler>.any)) as? (@escaping PhotosCompletionHandler) -> Void
		perform?(`completion`)
    }


    fileprivate enum MethodType {
        case m_grantPermission__completion_completion(Parameter<GrantPermissionCompletionHandler>)
        case m_fetchPhotos__completion_completion(Parameter<PhotosCompletionHandler>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_grantPermission__completion_completion(let lhsCompletion), .m_grantPermission__completion_completion(let rhsCompletion)):
                guard Parameter.compare(lhs: lhsCompletion, rhs: rhsCompletion, with: matcher) else { return false } 
                return true 
            case (.m_fetchPhotos__completion_completion(let lhsCompletion), .m_fetchPhotos__completion_completion(let rhsCompletion)):
                guard Parameter.compare(lhs: lhsCompletion, rhs: rhsCompletion, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_grantPermission__completion_completion(p0): return p0.intValue
            case let .m_fetchPhotos__completion_completion(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func grantPermission(completion: Parameter<GrantPermissionCompletionHandler>) -> Verify { return Verify(method: .m_grantPermission__completion_completion(`completion`))}
        public static func fetchPhotos(completion: Parameter<PhotosCompletionHandler>) -> Verify { return Verify(method: .m_fetchPhotos__completion_completion(`completion`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func grantPermission(completion: Parameter<GrantPermissionCompletionHandler>, perform: @escaping (@escaping GrantPermissionCompletionHandler) -> Void) -> Perform {
            return Perform(method: .m_grantPermission__completion_completion(`completion`), performs: perform)
        }
        public static func fetchPhotos(completion: Parameter<PhotosCompletionHandler>, perform: @escaping (@escaping PhotosCompletionHandler) -> Void) -> Perform {
            return Perform(method: .m_fetchPhotos__completion_completion(`completion`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let invocations = matchingCalls(method.method)
        MockyAssert(count.matches(invocations.count), "Expected: \(count) invocations of `\(method.method)`, but was: \(invocations.count)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        invocations.append(call)
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType) -> [MethodType] {
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher) }
    }
    private func matchingCalls(_ method: Verify) -> Int {
        return matchingCalls(method.method).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        #if Mocky
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleMissingStubError(message: message, file: file, line: line)
        #endif
    }
}

// MARK: - ViewControllerProtocol
open class ViewControllerProtocolMock: ViewControllerProtocol, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }

    public var viewController: UIViewController! {
		get {	invocations.append(.p_viewController_get); return __p_viewController ?? optionalGivenGetterValue(.p_viewController_get, "ViewControllerProtocolMock - stub value for viewController was not defined") }
		@available(*, deprecated, message: "Using setters on readonly variables is deprecated, and will be removed in 3.1. Use Given to define stubbed property return value.")
		set {	__p_viewController = newValue }
	}
	private var __p_viewController: (UIViewController)?






    fileprivate enum MethodType {
        case p_viewController_get

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.p_viewController_get,.p_viewController_get): return true
            }
        }

        func intValue() -> Int {
            switch self {
            case .p_viewController_get: return 0
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func viewController(getter defaultValue: UIViewController?...) -> PropertyStub {
            return Given(method: .p_viewController_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

    }

    public struct Verify {
        fileprivate var method: MethodType

        public static var viewController: Verify { return Verify(method: .p_viewController_get) }
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let invocations = matchingCalls(method.method)
        MockyAssert(count.matches(invocations.count), "Expected: \(count) invocations of `\(method.method)`, but was: \(invocations.count)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        invocations.append(call)
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType) -> [MethodType] {
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher) }
    }
    private func matchingCalls(_ method: Verify) -> Int {
        return matchingCalls(method.method).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        #if Mocky
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleMissingStubError(message: message, file: file, line: line)
        #endif
    }
}

