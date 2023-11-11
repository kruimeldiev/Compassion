// Generated using Sourcery 1.0.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT



// Generated with SwiftyMocky 4.0.4

import SwiftyMocky
import XCTest
import Firebase
import FirebaseAuth
import Foundation
import Swinject
import SwinjectAutoregistration
import SwinjectStoryboard
import UIKit
@testable import Compassion


// MARK: - CharityDetailInteractorProtocol

open class CharityDetailInteractorProtocolMock: CharityDetailInteractorProtocol, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
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





    open func handleCharityDetailDidLoad(request: CharityRequest) {
        addInvocation(.m_handleCharityDetailDidLoad__request_request(Parameter<CharityRequest>.value(`request`)))
		let perform = methodPerformValue(.m_handleCharityDetailDidLoad__request_request(Parameter<CharityRequest>.value(`request`))) as? (CharityRequest) -> Void
		perform?(`request`)
    }

    open func handleFavoriteButtonTapped(request: FavoriteRequest) {
        addInvocation(.m_handleFavoriteButtonTapped__request_request(Parameter<FavoriteRequest>.value(`request`)))
		let perform = methodPerformValue(.m_handleFavoriteButtonTapped__request_request(Parameter<FavoriteRequest>.value(`request`))) as? (FavoriteRequest) -> Void
		perform?(`request`)
    }


    fileprivate enum MethodType {
        case m_handleCharityDetailDidLoad__request_request(Parameter<CharityRequest>)
        case m_handleFavoriteButtonTapped__request_request(Parameter<FavoriteRequest>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_handleCharityDetailDidLoad__request_request(let lhsRequest), .m_handleCharityDetailDidLoad__request_request(let rhsRequest)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsRequest, rhs: rhsRequest, with: matcher), lhsRequest, rhsRequest, "request"))
				return Matcher.ComparisonResult(results)

            case (.m_handleFavoriteButtonTapped__request_request(let lhsRequest), .m_handleFavoriteButtonTapped__request_request(let rhsRequest)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsRequest, rhs: rhsRequest, with: matcher), lhsRequest, rhsRequest, "request"))
				return Matcher.ComparisonResult(results)
            default: return .none
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_handleCharityDetailDidLoad__request_request(p0): return p0.intValue
            case let .m_handleFavoriteButtonTapped__request_request(p0): return p0.intValue
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_handleCharityDetailDidLoad__request_request: return ".handleCharityDetailDidLoad(request:)"
            case .m_handleFavoriteButtonTapped__request_request: return ".handleFavoriteButtonTapped(request:)"
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

        public static func handleCharityDetailDidLoad(request: Parameter<CharityRequest>) -> Verify { return Verify(method: .m_handleCharityDetailDidLoad__request_request(`request`))}
        public static func handleFavoriteButtonTapped(request: Parameter<FavoriteRequest>) -> Verify { return Verify(method: .m_handleFavoriteButtonTapped__request_request(`request`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func handleCharityDetailDidLoad(request: Parameter<CharityRequest>, perform: @escaping (CharityRequest) -> Void) -> Perform {
            return Perform(method: .m_handleCharityDetailDidLoad__request_request(`request`), performs: perform)
        }
        public static func handleFavoriteButtonTapped(request: Parameter<FavoriteRequest>, perform: @escaping (FavoriteRequest) -> Void) -> Perform {
            return Perform(method: .m_handleFavoriteButtonTapped__request_request(`request`), performs: perform)
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
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
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
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - CharityDetailPresenterProtocol

open class CharityDetailPresenterProtocolMock: CharityDetailPresenterProtocol, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
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





    open func set(viewController: CharityDetailViewControllerProtocol?) {
        addInvocation(.m_set__viewController_viewController(Parameter<CharityDetailViewControllerProtocol?>.value(`viewController`)))
		let perform = methodPerformValue(.m_set__viewController_viewController(Parameter<CharityDetailViewControllerProtocol?>.value(`viewController`))) as? (CharityDetailViewControllerProtocol?) -> Void
		perform?(`viewController`)
    }

    open func presentCharityDetail(response: CharityResponse) {
        addInvocation(.m_presentCharityDetail__response_response(Parameter<CharityResponse>.value(`response`)))
		let perform = methodPerformValue(.m_presentCharityDetail__response_response(Parameter<CharityResponse>.value(`response`))) as? (CharityResponse) -> Void
		perform?(`response`)
    }

    open func presentFavoriteTappedResult(response: FavoriteResponse) {
        addInvocation(.m_presentFavoriteTappedResult__response_response(Parameter<FavoriteResponse>.value(`response`)))
		let perform = methodPerformValue(.m_presentFavoriteTappedResult__response_response(Parameter<FavoriteResponse>.value(`response`))) as? (FavoriteResponse) -> Void
		perform?(`response`)
    }

    open func presentFavoriteFetched(response: FavoriteResponse) {
        addInvocation(.m_presentFavoriteFetched__response_response(Parameter<FavoriteResponse>.value(`response`)))
		let perform = methodPerformValue(.m_presentFavoriteFetched__response_response(Parameter<FavoriteResponse>.value(`response`))) as? (FavoriteResponse) -> Void
		perform?(`response`)
    }

    open func presentReactions(response: ReactionResponse) {
        addInvocation(.m_presentReactions__response_response(Parameter<ReactionResponse>.value(`response`)))
		let perform = methodPerformValue(.m_presentReactions__response_response(Parameter<ReactionResponse>.value(`response`))) as? (ReactionResponse) -> Void
		perform?(`response`)
    }


    fileprivate enum MethodType {
        case m_set__viewController_viewController(Parameter<CharityDetailViewControllerProtocol?>)
        case m_presentCharityDetail__response_response(Parameter<CharityResponse>)
        case m_presentFavoriteTappedResult__response_response(Parameter<FavoriteResponse>)
        case m_presentFavoriteFetched__response_response(Parameter<FavoriteResponse>)
        case m_presentReactions__response_response(Parameter<ReactionResponse>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_set__viewController_viewController(let lhsViewcontroller), .m_set__viewController_viewController(let rhsViewcontroller)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsViewcontroller, rhs: rhsViewcontroller, with: matcher), lhsViewcontroller, rhsViewcontroller, "viewController"))
				return Matcher.ComparisonResult(results)

            case (.m_presentCharityDetail__response_response(let lhsResponse), .m_presentCharityDetail__response_response(let rhsResponse)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsResponse, rhs: rhsResponse, with: matcher), lhsResponse, rhsResponse, "response"))
				return Matcher.ComparisonResult(results)

            case (.m_presentFavoriteTappedResult__response_response(let lhsResponse), .m_presentFavoriteTappedResult__response_response(let rhsResponse)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsResponse, rhs: rhsResponse, with: matcher), lhsResponse, rhsResponse, "response"))
				return Matcher.ComparisonResult(results)

            case (.m_presentFavoriteFetched__response_response(let lhsResponse), .m_presentFavoriteFetched__response_response(let rhsResponse)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsResponse, rhs: rhsResponse, with: matcher), lhsResponse, rhsResponse, "response"))
				return Matcher.ComparisonResult(results)

            case (.m_presentReactions__response_response(let lhsResponse), .m_presentReactions__response_response(let rhsResponse)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsResponse, rhs: rhsResponse, with: matcher), lhsResponse, rhsResponse, "response"))
				return Matcher.ComparisonResult(results)
            default: return .none
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_set__viewController_viewController(p0): return p0.intValue
            case let .m_presentCharityDetail__response_response(p0): return p0.intValue
            case let .m_presentFavoriteTappedResult__response_response(p0): return p0.intValue
            case let .m_presentFavoriteFetched__response_response(p0): return p0.intValue
            case let .m_presentReactions__response_response(p0): return p0.intValue
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_set__viewController_viewController: return ".set(viewController:)"
            case .m_presentCharityDetail__response_response: return ".presentCharityDetail(response:)"
            case .m_presentFavoriteTappedResult__response_response: return ".presentFavoriteTappedResult(response:)"
            case .m_presentFavoriteFetched__response_response: return ".presentFavoriteFetched(response:)"
            case .m_presentReactions__response_response: return ".presentReactions(response:)"
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

        public static func set(viewController: Parameter<CharityDetailViewControllerProtocol?>) -> Verify { return Verify(method: .m_set__viewController_viewController(`viewController`))}
        public static func presentCharityDetail(response: Parameter<CharityResponse>) -> Verify { return Verify(method: .m_presentCharityDetail__response_response(`response`))}
        public static func presentFavoriteTappedResult(response: Parameter<FavoriteResponse>) -> Verify { return Verify(method: .m_presentFavoriteTappedResult__response_response(`response`))}
        public static func presentFavoriteFetched(response: Parameter<FavoriteResponse>) -> Verify { return Verify(method: .m_presentFavoriteFetched__response_response(`response`))}
        public static func presentReactions(response: Parameter<ReactionResponse>) -> Verify { return Verify(method: .m_presentReactions__response_response(`response`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func set(viewController: Parameter<CharityDetailViewControllerProtocol?>, perform: @escaping (CharityDetailViewControllerProtocol?) -> Void) -> Perform {
            return Perform(method: .m_set__viewController_viewController(`viewController`), performs: perform)
        }
        public static func presentCharityDetail(response: Parameter<CharityResponse>, perform: @escaping (CharityResponse) -> Void) -> Perform {
            return Perform(method: .m_presentCharityDetail__response_response(`response`), performs: perform)
        }
        public static func presentFavoriteTappedResult(response: Parameter<FavoriteResponse>, perform: @escaping (FavoriteResponse) -> Void) -> Perform {
            return Perform(method: .m_presentFavoriteTappedResult__response_response(`response`), performs: perform)
        }
        public static func presentFavoriteFetched(response: Parameter<FavoriteResponse>, perform: @escaping (FavoriteResponse) -> Void) -> Perform {
            return Perform(method: .m_presentFavoriteFetched__response_response(`response`), performs: perform)
        }
        public static func presentReactions(response: Parameter<ReactionResponse>, perform: @escaping (ReactionResponse) -> Void) -> Perform {
            return Perform(method: .m_presentReactions__response_response(`response`), performs: perform)
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
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
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
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - CharityDetailRouterProtocol

open class CharityDetailRouterProtocolMock: CharityDetailRouterProtocol, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
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





    open func set(viewController: CharityDetailViewControllerProtocol?) {
        addInvocation(.m_set__viewController_viewController(Parameter<CharityDetailViewControllerProtocol?>.value(`viewController`)))
		let perform = methodPerformValue(.m_set__viewController_viewController(Parameter<CharityDetailViewControllerProtocol?>.value(`viewController`))) as? (CharityDetailViewControllerProtocol?) -> Void
		perform?(`viewController`)
    }

    open func route(to scene: CharityDetailRouter.Scene) {
        addInvocation(.m_route__to_scene(Parameter<CharityDetailRouter.Scene>.value(`scene`)))
		let perform = methodPerformValue(.m_route__to_scene(Parameter<CharityDetailRouter.Scene>.value(`scene`))) as? (CharityDetailRouter.Scene) -> Void
		perform?(`scene`)
    }


    fileprivate enum MethodType {
        case m_set__viewController_viewController(Parameter<CharityDetailViewControllerProtocol?>)
        case m_route__to_scene(Parameter<CharityDetailRouter.Scene>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_set__viewController_viewController(let lhsViewcontroller), .m_set__viewController_viewController(let rhsViewcontroller)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsViewcontroller, rhs: rhsViewcontroller, with: matcher), lhsViewcontroller, rhsViewcontroller, "viewController"))
				return Matcher.ComparisonResult(results)

            case (.m_route__to_scene(let lhsScene), .m_route__to_scene(let rhsScene)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsScene, rhs: rhsScene, with: matcher), lhsScene, rhsScene, "to scene"))
				return Matcher.ComparisonResult(results)
            default: return .none
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_set__viewController_viewController(p0): return p0.intValue
            case let .m_route__to_scene(p0): return p0.intValue
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_set__viewController_viewController: return ".set(viewController:)"
            case .m_route__to_scene: return ".route(to:)"
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

        public static func set(viewController: Parameter<CharityDetailViewControllerProtocol?>) -> Verify { return Verify(method: .m_set__viewController_viewController(`viewController`))}
        public static func route(to scene: Parameter<CharityDetailRouter.Scene>) -> Verify { return Verify(method: .m_route__to_scene(`scene`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func set(viewController: Parameter<CharityDetailViewControllerProtocol?>, perform: @escaping (CharityDetailViewControllerProtocol?) -> Void) -> Perform {
            return Perform(method: .m_set__viewController_viewController(`viewController`), performs: perform)
        }
        public static func route(to scene: Parameter<CharityDetailRouter.Scene>, perform: @escaping (CharityDetailRouter.Scene) -> Void) -> Perform {
            return Perform(method: .m_route__to_scene(`scene`), performs: perform)
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
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
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
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - CharityDetailViewControllerProtocol

open class CharityDetailViewControllerProtocolMock: CharityDetailViewControllerProtocol, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
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





    open func set(interactor: CharityDetailInteractorProtocol) {
        addInvocation(.m_set__interactor_interactor(Parameter<CharityDetailInteractorProtocol>.value(`interactor`)))
		let perform = methodPerformValue(.m_set__interactor_interactor(Parameter<CharityDetailInteractorProtocol>.value(`interactor`))) as? (CharityDetailInteractorProtocol) -> Void
		perform?(`interactor`)
    }

    open func set(router: CharityDetailRouterProtocol) {
        addInvocation(.m_set__router_router(Parameter<CharityDetailRouterProtocol>.value(`router`)))
		let perform = methodPerformValue(.m_set__router_router(Parameter<CharityDetailRouterProtocol>.value(`router`))) as? (CharityDetailRouterProtocol) -> Void
		perform?(`router`)
    }

    open func set(charity: CharityModel) {
        addInvocation(.m_set__charity_charity(Parameter<CharityModel>.value(`charity`)))
		let perform = methodPerformValue(.m_set__charity_charity(Parameter<CharityModel>.value(`charity`))) as? (CharityModel) -> Void
		perform?(`charity`)
    }

    open func displayCharityDetail(viewModel: CharityViewModel) {
        addInvocation(.m_displayCharityDetail__viewModel_viewModel(Parameter<CharityViewModel>.value(`viewModel`)))
		let perform = methodPerformValue(.m_displayCharityDetail__viewModel_viewModel(Parameter<CharityViewModel>.value(`viewModel`))) as? (CharityViewModel) -> Void
		perform?(`viewModel`)
    }

    open func displayFavoriteResult(viewModel: FavoriteViewModel) {
        addInvocation(.m_displayFavoriteResult__viewModel_viewModel(Parameter<FavoriteViewModel>.value(`viewModel`)))
		let perform = methodPerformValue(.m_displayFavoriteResult__viewModel_viewModel(Parameter<FavoriteViewModel>.value(`viewModel`))) as? (FavoriteViewModel) -> Void
		perform?(`viewModel`)
    }

    open func displayReactions(viewModel: ReactionViewModel) {
        addInvocation(.m_displayReactions__viewModel_viewModel(Parameter<ReactionViewModel>.value(`viewModel`)))
		let perform = methodPerformValue(.m_displayReactions__viewModel_viewModel(Parameter<ReactionViewModel>.value(`viewModel`))) as? (ReactionViewModel) -> Void
		perform?(`viewModel`)
    }

    open func show(_ vc: UIViewController, sender: Any?) {
        addInvocation(.m_show__vcsender_sender(Parameter<UIViewController>.value(`vc`), Parameter<Any?>.value(`sender`)))
		let perform = methodPerformValue(.m_show__vcsender_sender(Parameter<UIViewController>.value(`vc`), Parameter<Any?>.value(`sender`))) as? (UIViewController, Any?) -> Void
		perform?(`vc`, `sender`)
    }

    open func dismiss(animated: Bool, completion: (() -> Void)?) {
        addInvocation(.m_dismiss__animated_animatedcompletion_completion(Parameter<Bool>.value(`animated`), Parameter<(() -> Void)?>.any))
		let perform = methodPerformValue(.m_dismiss__animated_animatedcompletion_completion(Parameter<Bool>.value(`animated`), Parameter<(() -> Void)?>.any)) as? (Bool, (() -> Void)?) -> Void
		perform?(`animated`, `completion`)
    }

    open func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)?) {
        addInvocation(.m_present__viewControllerToPresentanimated_flagcompletion_completion(Parameter<UIViewController>.value(`viewControllerToPresent`), Parameter<Bool>.value(`flag`), Parameter<(() -> Void)?>.any))
		let perform = methodPerformValue(.m_present__viewControllerToPresentanimated_flagcompletion_completion(Parameter<UIViewController>.value(`viewControllerToPresent`), Parameter<Bool>.value(`flag`), Parameter<(() -> Void)?>.any)) as? (UIViewController, Bool, (() -> Void)?) -> Void
		perform?(`viewControllerToPresent`, `flag`, `completion`)
    }


    fileprivate enum MethodType {
        case m_set__interactor_interactor(Parameter<CharityDetailInteractorProtocol>)
        case m_set__router_router(Parameter<CharityDetailRouterProtocol>)
        case m_set__charity_charity(Parameter<CharityModel>)
        case m_displayCharityDetail__viewModel_viewModel(Parameter<CharityViewModel>)
        case m_displayFavoriteResult__viewModel_viewModel(Parameter<FavoriteViewModel>)
        case m_displayReactions__viewModel_viewModel(Parameter<ReactionViewModel>)
        case m_show__vcsender_sender(Parameter<UIViewController>, Parameter<Any?>)
        case m_dismiss__animated_animatedcompletion_completion(Parameter<Bool>, Parameter<(() -> Void)?>)
        case m_present__viewControllerToPresentanimated_flagcompletion_completion(Parameter<UIViewController>, Parameter<Bool>, Parameter<(() -> Void)?>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_set__interactor_interactor(let lhsInteractor), .m_set__interactor_interactor(let rhsInteractor)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsInteractor, rhs: rhsInteractor, with: matcher), lhsInteractor, rhsInteractor, "interactor"))
				return Matcher.ComparisonResult(results)

            case (.m_set__router_router(let lhsRouter), .m_set__router_router(let rhsRouter)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsRouter, rhs: rhsRouter, with: matcher), lhsRouter, rhsRouter, "router"))
				return Matcher.ComparisonResult(results)

            case (.m_set__charity_charity(let lhsCharity), .m_set__charity_charity(let rhsCharity)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsCharity, rhs: rhsCharity, with: matcher), lhsCharity, rhsCharity, "charity"))
				return Matcher.ComparisonResult(results)

            case (.m_displayCharityDetail__viewModel_viewModel(let lhsViewmodel), .m_displayCharityDetail__viewModel_viewModel(let rhsViewmodel)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsViewmodel, rhs: rhsViewmodel, with: matcher), lhsViewmodel, rhsViewmodel, "viewModel"))
				return Matcher.ComparisonResult(results)

            case (.m_displayFavoriteResult__viewModel_viewModel(let lhsViewmodel), .m_displayFavoriteResult__viewModel_viewModel(let rhsViewmodel)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsViewmodel, rhs: rhsViewmodel, with: matcher), lhsViewmodel, rhsViewmodel, "viewModel"))
				return Matcher.ComparisonResult(results)

            case (.m_displayReactions__viewModel_viewModel(let lhsViewmodel), .m_displayReactions__viewModel_viewModel(let rhsViewmodel)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsViewmodel, rhs: rhsViewmodel, with: matcher), lhsViewmodel, rhsViewmodel, "viewModel"))
				return Matcher.ComparisonResult(results)

            case (.m_show__vcsender_sender(let lhsVc, let lhsSender), .m_show__vcsender_sender(let rhsVc, let rhsSender)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsVc, rhs: rhsVc, with: matcher), lhsVc, rhsVc, "_ vc"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsSender, rhs: rhsSender, with: matcher), lhsSender, rhsSender, "sender"))
				return Matcher.ComparisonResult(results)

            case (.m_dismiss__animated_animatedcompletion_completion(let lhsAnimated, let lhsCompletion), .m_dismiss__animated_animatedcompletion_completion(let rhsAnimated, let rhsCompletion)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsAnimated, rhs: rhsAnimated, with: matcher), lhsAnimated, rhsAnimated, "animated"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsCompletion, rhs: rhsCompletion, with: matcher), lhsCompletion, rhsCompletion, "completion"))
				return Matcher.ComparisonResult(results)

            case (.m_present__viewControllerToPresentanimated_flagcompletion_completion(let lhsViewcontrollertopresent, let lhsFlag, let lhsCompletion), .m_present__viewControllerToPresentanimated_flagcompletion_completion(let rhsViewcontrollertopresent, let rhsFlag, let rhsCompletion)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsViewcontrollertopresent, rhs: rhsViewcontrollertopresent, with: matcher), lhsViewcontrollertopresent, rhsViewcontrollertopresent, "_ viewControllerToPresent"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsFlag, rhs: rhsFlag, with: matcher), lhsFlag, rhsFlag, "animated flag"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsCompletion, rhs: rhsCompletion, with: matcher), lhsCompletion, rhsCompletion, "completion"))
				return Matcher.ComparisonResult(results)
            default: return .none
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_set__interactor_interactor(p0): return p0.intValue
            case let .m_set__router_router(p0): return p0.intValue
            case let .m_set__charity_charity(p0): return p0.intValue
            case let .m_displayCharityDetail__viewModel_viewModel(p0): return p0.intValue
            case let .m_displayFavoriteResult__viewModel_viewModel(p0): return p0.intValue
            case let .m_displayReactions__viewModel_viewModel(p0): return p0.intValue
            case let .m_show__vcsender_sender(p0, p1): return p0.intValue + p1.intValue
            case let .m_dismiss__animated_animatedcompletion_completion(p0, p1): return p0.intValue + p1.intValue
            case let .m_present__viewControllerToPresentanimated_flagcompletion_completion(p0, p1, p2): return p0.intValue + p1.intValue + p2.intValue
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_set__interactor_interactor: return ".set(interactor:)"
            case .m_set__router_router: return ".set(router:)"
            case .m_set__charity_charity: return ".set(charity:)"
            case .m_displayCharityDetail__viewModel_viewModel: return ".displayCharityDetail(viewModel:)"
            case .m_displayFavoriteResult__viewModel_viewModel: return ".displayFavoriteResult(viewModel:)"
            case .m_displayReactions__viewModel_viewModel: return ".displayReactions(viewModel:)"
            case .m_show__vcsender_sender: return ".show(_:sender:)"
            case .m_dismiss__animated_animatedcompletion_completion: return ".dismiss(animated:completion:)"
            case .m_present__viewControllerToPresentanimated_flagcompletion_completion: return ".present(_:animated:completion:)"
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

        public static func set(interactor: Parameter<CharityDetailInteractorProtocol>) -> Verify { return Verify(method: .m_set__interactor_interactor(`interactor`))}
        public static func set(router: Parameter<CharityDetailRouterProtocol>) -> Verify { return Verify(method: .m_set__router_router(`router`))}
        public static func set(charity: Parameter<CharityModel>) -> Verify { return Verify(method: .m_set__charity_charity(`charity`))}
        public static func displayCharityDetail(viewModel: Parameter<CharityViewModel>) -> Verify { return Verify(method: .m_displayCharityDetail__viewModel_viewModel(`viewModel`))}
        public static func displayFavoriteResult(viewModel: Parameter<FavoriteViewModel>) -> Verify { return Verify(method: .m_displayFavoriteResult__viewModel_viewModel(`viewModel`))}
        public static func displayReactions(viewModel: Parameter<ReactionViewModel>) -> Verify { return Verify(method: .m_displayReactions__viewModel_viewModel(`viewModel`))}
        public static func show(_ vc: Parameter<UIViewController>, sender: Parameter<Any?>) -> Verify { return Verify(method: .m_show__vcsender_sender(`vc`, `sender`))}
        public static func dismiss(animated: Parameter<Bool>, completion: Parameter<(() -> Void)?>) -> Verify { return Verify(method: .m_dismiss__animated_animatedcompletion_completion(`animated`, `completion`))}
        public static func present(_ viewControllerToPresent: Parameter<UIViewController>, animated flag: Parameter<Bool>, completion: Parameter<(() -> Void)?>) -> Verify { return Verify(method: .m_present__viewControllerToPresentanimated_flagcompletion_completion(`viewControllerToPresent`, `flag`, `completion`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func set(interactor: Parameter<CharityDetailInteractorProtocol>, perform: @escaping (CharityDetailInteractorProtocol) -> Void) -> Perform {
            return Perform(method: .m_set__interactor_interactor(`interactor`), performs: perform)
        }
        public static func set(router: Parameter<CharityDetailRouterProtocol>, perform: @escaping (CharityDetailRouterProtocol) -> Void) -> Perform {
            return Perform(method: .m_set__router_router(`router`), performs: perform)
        }
        public static func set(charity: Parameter<CharityModel>, perform: @escaping (CharityModel) -> Void) -> Perform {
            return Perform(method: .m_set__charity_charity(`charity`), performs: perform)
        }
        public static func displayCharityDetail(viewModel: Parameter<CharityViewModel>, perform: @escaping (CharityViewModel) -> Void) -> Perform {
            return Perform(method: .m_displayCharityDetail__viewModel_viewModel(`viewModel`), performs: perform)
        }
        public static func displayFavoriteResult(viewModel: Parameter<FavoriteViewModel>, perform: @escaping (FavoriteViewModel) -> Void) -> Perform {
            return Perform(method: .m_displayFavoriteResult__viewModel_viewModel(`viewModel`), performs: perform)
        }
        public static func displayReactions(viewModel: Parameter<ReactionViewModel>, perform: @escaping (ReactionViewModel) -> Void) -> Perform {
            return Perform(method: .m_displayReactions__viewModel_viewModel(`viewModel`), performs: perform)
        }
        public static func show(_ vc: Parameter<UIViewController>, sender: Parameter<Any?>, perform: @escaping (UIViewController, Any?) -> Void) -> Perform {
            return Perform(method: .m_show__vcsender_sender(`vc`, `sender`), performs: perform)
        }
        public static func dismiss(animated: Parameter<Bool>, completion: Parameter<(() -> Void)?>, perform: @escaping (Bool, (() -> Void)?) -> Void) -> Perform {
            return Perform(method: .m_dismiss__animated_animatedcompletion_completion(`animated`, `completion`), performs: perform)
        }
        public static func present(_ viewControllerToPresent: Parameter<UIViewController>, animated flag: Parameter<Bool>, completion: Parameter<(() -> Void)?>, perform: @escaping (UIViewController, Bool, (() -> Void)?) -> Void) -> Perform {
            return Perform(method: .m_present__viewControllerToPresentanimated_flagcompletion_completion(`viewControllerToPresent`, `flag`, `completion`), performs: perform)
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
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
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
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - CompassionAppProtocol

open class CompassionAppProtocolMock: CompassionAppProtocol, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
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





    open func prepare() {
        addInvocation(.m_prepare)
		let perform = methodPerformValue(.m_prepare) as? () -> Void
		perform?()
    }


    fileprivate enum MethodType {
        case m_prepare

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_prepare, .m_prepare): return .match
            }
        }

        func intValue() -> Int {
            switch self {
            case .m_prepare: return 0
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_prepare: return ".prepare()"
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

        public static func prepare() -> Verify { return Verify(method: .m_prepare)}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func prepare(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_prepare, performs: perform)
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
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
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
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - KeyboardObserverProtocol

open class KeyboardObserverProtocolMock: KeyboardObserverProtocol, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
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





    open func setupKeyboardObserver() {
        addInvocation(.m_setupKeyboardObserver)
		let perform = methodPerformValue(.m_setupKeyboardObserver) as? () -> Void
		perform?()
    }


    fileprivate enum MethodType {
        case m_setupKeyboardObserver

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_setupKeyboardObserver, .m_setupKeyboardObserver): return .match
            }
        }

        func intValue() -> Int {
            switch self {
            case .m_setupKeyboardObserver: return 0
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_setupKeyboardObserver: return ".setupKeyboardObserver()"
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

        public static func setupKeyboardObserver() -> Verify { return Verify(method: .m_setupKeyboardObserver)}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func setupKeyboardObserver(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_setupKeyboardObserver, performs: perform)
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
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
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
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - LoginInteractorProtocol

open class LoginInteractorProtocolMock: LoginInteractorProtocol, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
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





    open func handleLoginDidLoad() {
        addInvocation(.m_handleLoginDidLoad)
		let perform = methodPerformValue(.m_handleLoginDidLoad) as? () -> Void
		perform?()
    }

    open func handleLoginButtonPressed(request: Request) {
        addInvocation(.m_handleLoginButtonPressed__request_request(Parameter<Request>.value(`request`)))
		let perform = methodPerformValue(.m_handleLoginButtonPressed__request_request(Parameter<Request>.value(`request`))) as? (Request) -> Void
		perform?(`request`)
    }


    fileprivate enum MethodType {
        case m_handleLoginDidLoad
        case m_handleLoginButtonPressed__request_request(Parameter<Request>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_handleLoginDidLoad, .m_handleLoginDidLoad): return .match

            case (.m_handleLoginButtonPressed__request_request(let lhsRequest), .m_handleLoginButtonPressed__request_request(let rhsRequest)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsRequest, rhs: rhsRequest, with: matcher), lhsRequest, rhsRequest, "request"))
				return Matcher.ComparisonResult(results)
            default: return .none
            }
        }

        func intValue() -> Int {
            switch self {
            case .m_handleLoginDidLoad: return 0
            case let .m_handleLoginButtonPressed__request_request(p0): return p0.intValue
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_handleLoginDidLoad: return ".handleLoginDidLoad()"
            case .m_handleLoginButtonPressed__request_request: return ".handleLoginButtonPressed(request:)"
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

        public static func handleLoginDidLoad() -> Verify { return Verify(method: .m_handleLoginDidLoad)}
        public static func handleLoginButtonPressed(request: Parameter<Request>) -> Verify { return Verify(method: .m_handleLoginButtonPressed__request_request(`request`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func handleLoginDidLoad(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_handleLoginDidLoad, performs: perform)
        }
        public static func handleLoginButtonPressed(request: Parameter<Request>, perform: @escaping (Request) -> Void) -> Perform {
            return Perform(method: .m_handleLoginButtonPressed__request_request(`request`), performs: perform)
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
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
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
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - LoginPresenterProtocol

open class LoginPresenterProtocolMock: LoginPresenterProtocol, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
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





    open func set(viewController: LoginViewControllerProtocol?) {
        addInvocation(.m_set__viewController_viewController(Parameter<LoginViewControllerProtocol?>.value(`viewController`)))
		let perform = methodPerformValue(.m_set__viewController_viewController(Parameter<LoginViewControllerProtocol?>.value(`viewController`))) as? (LoginViewControllerProtocol?) -> Void
		perform?(`viewController`)
    }

    open func presentLogin() {
        addInvocation(.m_presentLogin)
		let perform = methodPerformValue(.m_presentLogin) as? () -> Void
		perform?()
    }

    open func presentNotAbleToLogin(error: String) {
        addInvocation(.m_presentNotAbleToLogin__error_error(Parameter<String>.value(`error`)))
		let perform = methodPerformValue(.m_presentNotAbleToLogin__error_error(Parameter<String>.value(`error`))) as? (String) -> Void
		perform?(`error`)
    }

    open func presentSuccesfullLogin() {
        addInvocation(.m_presentSuccesfullLogin)
		let perform = methodPerformValue(.m_presentSuccesfullLogin) as? () -> Void
		perform?()
    }


    fileprivate enum MethodType {
        case m_set__viewController_viewController(Parameter<LoginViewControllerProtocol?>)
        case m_presentLogin
        case m_presentNotAbleToLogin__error_error(Parameter<String>)
        case m_presentSuccesfullLogin

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_set__viewController_viewController(let lhsViewcontroller), .m_set__viewController_viewController(let rhsViewcontroller)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsViewcontroller, rhs: rhsViewcontroller, with: matcher), lhsViewcontroller, rhsViewcontroller, "viewController"))
				return Matcher.ComparisonResult(results)

            case (.m_presentLogin, .m_presentLogin): return .match

            case (.m_presentNotAbleToLogin__error_error(let lhsError), .m_presentNotAbleToLogin__error_error(let rhsError)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsError, rhs: rhsError, with: matcher), lhsError, rhsError, "error"))
				return Matcher.ComparisonResult(results)

            case (.m_presentSuccesfullLogin, .m_presentSuccesfullLogin): return .match
            default: return .none
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_set__viewController_viewController(p0): return p0.intValue
            case .m_presentLogin: return 0
            case let .m_presentNotAbleToLogin__error_error(p0): return p0.intValue
            case .m_presentSuccesfullLogin: return 0
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_set__viewController_viewController: return ".set(viewController:)"
            case .m_presentLogin: return ".presentLogin()"
            case .m_presentNotAbleToLogin__error_error: return ".presentNotAbleToLogin(error:)"
            case .m_presentSuccesfullLogin: return ".presentSuccesfullLogin()"
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

        public static func set(viewController: Parameter<LoginViewControllerProtocol?>) -> Verify { return Verify(method: .m_set__viewController_viewController(`viewController`))}
        public static func presentLogin() -> Verify { return Verify(method: .m_presentLogin)}
        public static func presentNotAbleToLogin(error: Parameter<String>) -> Verify { return Verify(method: .m_presentNotAbleToLogin__error_error(`error`))}
        public static func presentSuccesfullLogin() -> Verify { return Verify(method: .m_presentSuccesfullLogin)}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func set(viewController: Parameter<LoginViewControllerProtocol?>, perform: @escaping (LoginViewControllerProtocol?) -> Void) -> Perform {
            return Perform(method: .m_set__viewController_viewController(`viewController`), performs: perform)
        }
        public static func presentLogin(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_presentLogin, performs: perform)
        }
        public static func presentNotAbleToLogin(error: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_presentNotAbleToLogin__error_error(`error`), performs: perform)
        }
        public static func presentSuccesfullLogin(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_presentSuccesfullLogin, performs: perform)
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
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
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
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - LoginRouterProtocol

open class LoginRouterProtocolMock: LoginRouterProtocol, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
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





    open func set(viewController: LoginViewControllerProtocol?) {
        addInvocation(.m_set__viewController_viewController(Parameter<LoginViewControllerProtocol?>.value(`viewController`)))
		let perform = methodPerformValue(.m_set__viewController_viewController(Parameter<LoginViewControllerProtocol?>.value(`viewController`))) as? (LoginViewControllerProtocol?) -> Void
		perform?(`viewController`)
    }

    open func route(to scene: LoginRouter.Scene) {
        addInvocation(.m_route__to_scene(Parameter<LoginRouter.Scene>.value(`scene`)))
		let perform = methodPerformValue(.m_route__to_scene(Parameter<LoginRouter.Scene>.value(`scene`))) as? (LoginRouter.Scene) -> Void
		perform?(`scene`)
    }


    fileprivate enum MethodType {
        case m_set__viewController_viewController(Parameter<LoginViewControllerProtocol?>)
        case m_route__to_scene(Parameter<LoginRouter.Scene>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_set__viewController_viewController(let lhsViewcontroller), .m_set__viewController_viewController(let rhsViewcontroller)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsViewcontroller, rhs: rhsViewcontroller, with: matcher), lhsViewcontroller, rhsViewcontroller, "viewController"))
				return Matcher.ComparisonResult(results)

            case (.m_route__to_scene(let lhsScene), .m_route__to_scene(let rhsScene)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsScene, rhs: rhsScene, with: matcher), lhsScene, rhsScene, "to scene"))
				return Matcher.ComparisonResult(results)
            default: return .none
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_set__viewController_viewController(p0): return p0.intValue
            case let .m_route__to_scene(p0): return p0.intValue
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_set__viewController_viewController: return ".set(viewController:)"
            case .m_route__to_scene: return ".route(to:)"
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

        public static func set(viewController: Parameter<LoginViewControllerProtocol?>) -> Verify { return Verify(method: .m_set__viewController_viewController(`viewController`))}
        public static func route(to scene: Parameter<LoginRouter.Scene>) -> Verify { return Verify(method: .m_route__to_scene(`scene`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func set(viewController: Parameter<LoginViewControllerProtocol?>, perform: @escaping (LoginViewControllerProtocol?) -> Void) -> Perform {
            return Perform(method: .m_set__viewController_viewController(`viewController`), performs: perform)
        }
        public static func route(to scene: Parameter<LoginRouter.Scene>, perform: @escaping (LoginRouter.Scene) -> Void) -> Perform {
            return Perform(method: .m_route__to_scene(`scene`), performs: perform)
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
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
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
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - LoginViewControllerProtocol

open class LoginViewControllerProtocolMock: LoginViewControllerProtocol, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
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





    open func set(interactor: LoginInteractorProtocol) {
        addInvocation(.m_set__interactor_interactor(Parameter<LoginInteractorProtocol>.value(`interactor`)))
		let perform = methodPerformValue(.m_set__interactor_interactor(Parameter<LoginInteractorProtocol>.value(`interactor`))) as? (LoginInteractorProtocol) -> Void
		perform?(`interactor`)
    }

    open func set(router: LoginRouterProtocol) {
        addInvocation(.m_set__router_router(Parameter<LoginRouterProtocol>.value(`router`)))
		let perform = methodPerformValue(.m_set__router_router(Parameter<LoginRouterProtocol>.value(`router`))) as? (LoginRouterProtocol) -> Void
		perform?(`router`)
    }

    open func displayLogin() {
        addInvocation(.m_displayLogin)
		let perform = methodPerformValue(.m_displayLogin) as? () -> Void
		perform?()
    }

    open func displayLoginError(error: String) {
        addInvocation(.m_displayLoginError__error_error(Parameter<String>.value(`error`)))
		let perform = methodPerformValue(.m_displayLoginError__error_error(Parameter<String>.value(`error`))) as? (String) -> Void
		perform?(`error`)
    }

    open func succesfullUserLogin() {
        addInvocation(.m_succesfullUserLogin)
		let perform = methodPerformValue(.m_succesfullUserLogin) as? () -> Void
		perform?()
    }

    open func show(_ vc: UIViewController, sender: Any?) {
        addInvocation(.m_show__vcsender_sender(Parameter<UIViewController>.value(`vc`), Parameter<Any?>.value(`sender`)))
		let perform = methodPerformValue(.m_show__vcsender_sender(Parameter<UIViewController>.value(`vc`), Parameter<Any?>.value(`sender`))) as? (UIViewController, Any?) -> Void
		perform?(`vc`, `sender`)
    }

    open func dismiss(animated: Bool, completion: (() -> Void)?) {
        addInvocation(.m_dismiss__animated_animatedcompletion_completion(Parameter<Bool>.value(`animated`), Parameter<(() -> Void)?>.any))
		let perform = methodPerformValue(.m_dismiss__animated_animatedcompletion_completion(Parameter<Bool>.value(`animated`), Parameter<(() -> Void)?>.any)) as? (Bool, (() -> Void)?) -> Void
		perform?(`animated`, `completion`)
    }

    open func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)?) {
        addInvocation(.m_present__viewControllerToPresentanimated_flagcompletion_completion(Parameter<UIViewController>.value(`viewControllerToPresent`), Parameter<Bool>.value(`flag`), Parameter<(() -> Void)?>.any))
		let perform = methodPerformValue(.m_present__viewControllerToPresentanimated_flagcompletion_completion(Parameter<UIViewController>.value(`viewControllerToPresent`), Parameter<Bool>.value(`flag`), Parameter<(() -> Void)?>.any)) as? (UIViewController, Bool, (() -> Void)?) -> Void
		perform?(`viewControllerToPresent`, `flag`, `completion`)
    }


    fileprivate enum MethodType {
        case m_set__interactor_interactor(Parameter<LoginInteractorProtocol>)
        case m_set__router_router(Parameter<LoginRouterProtocol>)
        case m_displayLogin
        case m_displayLoginError__error_error(Parameter<String>)
        case m_succesfullUserLogin
        case m_show__vcsender_sender(Parameter<UIViewController>, Parameter<Any?>)
        case m_dismiss__animated_animatedcompletion_completion(Parameter<Bool>, Parameter<(() -> Void)?>)
        case m_present__viewControllerToPresentanimated_flagcompletion_completion(Parameter<UIViewController>, Parameter<Bool>, Parameter<(() -> Void)?>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_set__interactor_interactor(let lhsInteractor), .m_set__interactor_interactor(let rhsInteractor)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsInteractor, rhs: rhsInteractor, with: matcher), lhsInteractor, rhsInteractor, "interactor"))
				return Matcher.ComparisonResult(results)

            case (.m_set__router_router(let lhsRouter), .m_set__router_router(let rhsRouter)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsRouter, rhs: rhsRouter, with: matcher), lhsRouter, rhsRouter, "router"))
				return Matcher.ComparisonResult(results)

            case (.m_displayLogin, .m_displayLogin): return .match

            case (.m_displayLoginError__error_error(let lhsError), .m_displayLoginError__error_error(let rhsError)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsError, rhs: rhsError, with: matcher), lhsError, rhsError, "error"))
				return Matcher.ComparisonResult(results)

            case (.m_succesfullUserLogin, .m_succesfullUserLogin): return .match

            case (.m_show__vcsender_sender(let lhsVc, let lhsSender), .m_show__vcsender_sender(let rhsVc, let rhsSender)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsVc, rhs: rhsVc, with: matcher), lhsVc, rhsVc, "_ vc"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsSender, rhs: rhsSender, with: matcher), lhsSender, rhsSender, "sender"))
				return Matcher.ComparisonResult(results)

            case (.m_dismiss__animated_animatedcompletion_completion(let lhsAnimated, let lhsCompletion), .m_dismiss__animated_animatedcompletion_completion(let rhsAnimated, let rhsCompletion)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsAnimated, rhs: rhsAnimated, with: matcher), lhsAnimated, rhsAnimated, "animated"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsCompletion, rhs: rhsCompletion, with: matcher), lhsCompletion, rhsCompletion, "completion"))
				return Matcher.ComparisonResult(results)

            case (.m_present__viewControllerToPresentanimated_flagcompletion_completion(let lhsViewcontrollertopresent, let lhsFlag, let lhsCompletion), .m_present__viewControllerToPresentanimated_flagcompletion_completion(let rhsViewcontrollertopresent, let rhsFlag, let rhsCompletion)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsViewcontrollertopresent, rhs: rhsViewcontrollertopresent, with: matcher), lhsViewcontrollertopresent, rhsViewcontrollertopresent, "_ viewControllerToPresent"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsFlag, rhs: rhsFlag, with: matcher), lhsFlag, rhsFlag, "animated flag"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsCompletion, rhs: rhsCompletion, with: matcher), lhsCompletion, rhsCompletion, "completion"))
				return Matcher.ComparisonResult(results)
            default: return .none
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_set__interactor_interactor(p0): return p0.intValue
            case let .m_set__router_router(p0): return p0.intValue
            case .m_displayLogin: return 0
            case let .m_displayLoginError__error_error(p0): return p0.intValue
            case .m_succesfullUserLogin: return 0
            case let .m_show__vcsender_sender(p0, p1): return p0.intValue + p1.intValue
            case let .m_dismiss__animated_animatedcompletion_completion(p0, p1): return p0.intValue + p1.intValue
            case let .m_present__viewControllerToPresentanimated_flagcompletion_completion(p0, p1, p2): return p0.intValue + p1.intValue + p2.intValue
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_set__interactor_interactor: return ".set(interactor:)"
            case .m_set__router_router: return ".set(router:)"
            case .m_displayLogin: return ".displayLogin()"
            case .m_displayLoginError__error_error: return ".displayLoginError(error:)"
            case .m_succesfullUserLogin: return ".succesfullUserLogin()"
            case .m_show__vcsender_sender: return ".show(_:sender:)"
            case .m_dismiss__animated_animatedcompletion_completion: return ".dismiss(animated:completion:)"
            case .m_present__viewControllerToPresentanimated_flagcompletion_completion: return ".present(_:animated:completion:)"
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

        public static func set(interactor: Parameter<LoginInteractorProtocol>) -> Verify { return Verify(method: .m_set__interactor_interactor(`interactor`))}
        public static func set(router: Parameter<LoginRouterProtocol>) -> Verify { return Verify(method: .m_set__router_router(`router`))}
        public static func displayLogin() -> Verify { return Verify(method: .m_displayLogin)}
        public static func displayLoginError(error: Parameter<String>) -> Verify { return Verify(method: .m_displayLoginError__error_error(`error`))}
        public static func succesfullUserLogin() -> Verify { return Verify(method: .m_succesfullUserLogin)}
        public static func show(_ vc: Parameter<UIViewController>, sender: Parameter<Any?>) -> Verify { return Verify(method: .m_show__vcsender_sender(`vc`, `sender`))}
        public static func dismiss(animated: Parameter<Bool>, completion: Parameter<(() -> Void)?>) -> Verify { return Verify(method: .m_dismiss__animated_animatedcompletion_completion(`animated`, `completion`))}
        public static func present(_ viewControllerToPresent: Parameter<UIViewController>, animated flag: Parameter<Bool>, completion: Parameter<(() -> Void)?>) -> Verify { return Verify(method: .m_present__viewControllerToPresentanimated_flagcompletion_completion(`viewControllerToPresent`, `flag`, `completion`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func set(interactor: Parameter<LoginInteractorProtocol>, perform: @escaping (LoginInteractorProtocol) -> Void) -> Perform {
            return Perform(method: .m_set__interactor_interactor(`interactor`), performs: perform)
        }
        public static func set(router: Parameter<LoginRouterProtocol>, perform: @escaping (LoginRouterProtocol) -> Void) -> Perform {
            return Perform(method: .m_set__router_router(`router`), performs: perform)
        }
        public static func displayLogin(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_displayLogin, performs: perform)
        }
        public static func displayLoginError(error: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_displayLoginError__error_error(`error`), performs: perform)
        }
        public static func succesfullUserLogin(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_succesfullUserLogin, performs: perform)
        }
        public static func show(_ vc: Parameter<UIViewController>, sender: Parameter<Any?>, perform: @escaping (UIViewController, Any?) -> Void) -> Perform {
            return Perform(method: .m_show__vcsender_sender(`vc`, `sender`), performs: perform)
        }
        public static func dismiss(animated: Parameter<Bool>, completion: Parameter<(() -> Void)?>, perform: @escaping (Bool, (() -> Void)?) -> Void) -> Perform {
            return Perform(method: .m_dismiss__animated_animatedcompletion_completion(`animated`, `completion`), performs: perform)
        }
        public static func present(_ viewControllerToPresent: Parameter<UIViewController>, animated flag: Parameter<Bool>, completion: Parameter<(() -> Void)?>, perform: @escaping (UIViewController, Bool, (() -> Void)?) -> Void) -> Perform {
            return Perform(method: .m_present__viewControllerToPresentanimated_flagcompletion_completion(`viewControllerToPresent`, `flag`, `completion`), performs: perform)
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
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
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
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - NewReactionInteractorProtocol

open class NewReactionInteractorProtocolMock: NewReactionInteractorProtocol, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
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





    open func handleNewReactionDidLoad() {
        addInvocation(.m_handleNewReactionDidLoad)
		let perform = methodPerformValue(.m_handleNewReactionDidLoad) as? () -> Void
		perform?()
    }

    open func placeNewReaction(request: Request) {
        addInvocation(.m_placeNewReaction__request_request(Parameter<Request>.value(`request`)))
		let perform = methodPerformValue(.m_placeNewReaction__request_request(Parameter<Request>.value(`request`))) as? (Request) -> Void
		perform?(`request`)
    }


    fileprivate enum MethodType {
        case m_handleNewReactionDidLoad
        case m_placeNewReaction__request_request(Parameter<Request>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_handleNewReactionDidLoad, .m_handleNewReactionDidLoad): return .match

            case (.m_placeNewReaction__request_request(let lhsRequest), .m_placeNewReaction__request_request(let rhsRequest)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsRequest, rhs: rhsRequest, with: matcher), lhsRequest, rhsRequest, "request"))
				return Matcher.ComparisonResult(results)
            default: return .none
            }
        }

        func intValue() -> Int {
            switch self {
            case .m_handleNewReactionDidLoad: return 0
            case let .m_placeNewReaction__request_request(p0): return p0.intValue
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_handleNewReactionDidLoad: return ".handleNewReactionDidLoad()"
            case .m_placeNewReaction__request_request: return ".placeNewReaction(request:)"
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

        public static func handleNewReactionDidLoad() -> Verify { return Verify(method: .m_handleNewReactionDidLoad)}
        public static func placeNewReaction(request: Parameter<Request>) -> Verify { return Verify(method: .m_placeNewReaction__request_request(`request`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func handleNewReactionDidLoad(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_handleNewReactionDidLoad, performs: perform)
        }
        public static func placeNewReaction(request: Parameter<Request>, perform: @escaping (Request) -> Void) -> Perform {
            return Perform(method: .m_placeNewReaction__request_request(`request`), performs: perform)
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
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
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
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - NewReactionPresenterProtocol

open class NewReactionPresenterProtocolMock: NewReactionPresenterProtocol, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
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





    open func set(viewController: NewReactionViewControllerProtocol?) {
        addInvocation(.m_set__viewController_viewController(Parameter<NewReactionViewControllerProtocol?>.value(`viewController`)))
		let perform = methodPerformValue(.m_set__viewController_viewController(Parameter<NewReactionViewControllerProtocol?>.value(`viewController`))) as? (NewReactionViewControllerProtocol?) -> Void
		perform?(`viewController`)
    }

    open func presentNewReactionView(user: String) {
        addInvocation(.m_presentNewReactionView__user_user(Parameter<String>.value(`user`)))
		let perform = methodPerformValue(.m_presentNewReactionView__user_user(Parameter<String>.value(`user`))) as? (String) -> Void
		perform?(`user`)
    }

    open func presentPlaceNewReaction(response: Response) {
        addInvocation(.m_presentPlaceNewReaction__response_response(Parameter<Response>.value(`response`)))
		let perform = methodPerformValue(.m_presentPlaceNewReaction__response_response(Parameter<Response>.value(`response`))) as? (Response) -> Void
		perform?(`response`)
    }


    fileprivate enum MethodType {
        case m_set__viewController_viewController(Parameter<NewReactionViewControllerProtocol?>)
        case m_presentNewReactionView__user_user(Parameter<String>)
        case m_presentPlaceNewReaction__response_response(Parameter<Response>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_set__viewController_viewController(let lhsViewcontroller), .m_set__viewController_viewController(let rhsViewcontroller)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsViewcontroller, rhs: rhsViewcontroller, with: matcher), lhsViewcontroller, rhsViewcontroller, "viewController"))
				return Matcher.ComparisonResult(results)

            case (.m_presentNewReactionView__user_user(let lhsUser), .m_presentNewReactionView__user_user(let rhsUser)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsUser, rhs: rhsUser, with: matcher), lhsUser, rhsUser, "user"))
				return Matcher.ComparisonResult(results)

            case (.m_presentPlaceNewReaction__response_response(let lhsResponse), .m_presentPlaceNewReaction__response_response(let rhsResponse)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsResponse, rhs: rhsResponse, with: matcher), lhsResponse, rhsResponse, "response"))
				return Matcher.ComparisonResult(results)
            default: return .none
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_set__viewController_viewController(p0): return p0.intValue
            case let .m_presentNewReactionView__user_user(p0): return p0.intValue
            case let .m_presentPlaceNewReaction__response_response(p0): return p0.intValue
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_set__viewController_viewController: return ".set(viewController:)"
            case .m_presentNewReactionView__user_user: return ".presentNewReactionView(user:)"
            case .m_presentPlaceNewReaction__response_response: return ".presentPlaceNewReaction(response:)"
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

        public static func set(viewController: Parameter<NewReactionViewControllerProtocol?>) -> Verify { return Verify(method: .m_set__viewController_viewController(`viewController`))}
        public static func presentNewReactionView(user: Parameter<String>) -> Verify { return Verify(method: .m_presentNewReactionView__user_user(`user`))}
        public static func presentPlaceNewReaction(response: Parameter<Response>) -> Verify { return Verify(method: .m_presentPlaceNewReaction__response_response(`response`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func set(viewController: Parameter<NewReactionViewControllerProtocol?>, perform: @escaping (NewReactionViewControllerProtocol?) -> Void) -> Perform {
            return Perform(method: .m_set__viewController_viewController(`viewController`), performs: perform)
        }
        public static func presentNewReactionView(user: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_presentNewReactionView__user_user(`user`), performs: perform)
        }
        public static func presentPlaceNewReaction(response: Parameter<Response>, perform: @escaping (Response) -> Void) -> Perform {
            return Perform(method: .m_presentPlaceNewReaction__response_response(`response`), performs: perform)
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
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
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
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - NewReactionRouterProtocol

open class NewReactionRouterProtocolMock: NewReactionRouterProtocol, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
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





    open func set(viewController: NewReactionViewControllerProtocol?) {
        addInvocation(.m_set__viewController_viewController(Parameter<NewReactionViewControllerProtocol?>.value(`viewController`)))
		let perform = methodPerformValue(.m_set__viewController_viewController(Parameter<NewReactionViewControllerProtocol?>.value(`viewController`))) as? (NewReactionViewControllerProtocol?) -> Void
		perform?(`viewController`)
    }

    open func route(to scene: NewReactionRouter.Scene) {
        addInvocation(.m_route__to_scene(Parameter<NewReactionRouter.Scene>.value(`scene`)))
		let perform = methodPerformValue(.m_route__to_scene(Parameter<NewReactionRouter.Scene>.value(`scene`))) as? (NewReactionRouter.Scene) -> Void
		perform?(`scene`)
    }


    fileprivate enum MethodType {
        case m_set__viewController_viewController(Parameter<NewReactionViewControllerProtocol?>)
        case m_route__to_scene(Parameter<NewReactionRouter.Scene>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_set__viewController_viewController(let lhsViewcontroller), .m_set__viewController_viewController(let rhsViewcontroller)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsViewcontroller, rhs: rhsViewcontroller, with: matcher), lhsViewcontroller, rhsViewcontroller, "viewController"))
				return Matcher.ComparisonResult(results)

            case (.m_route__to_scene(let lhsScene), .m_route__to_scene(let rhsScene)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsScene, rhs: rhsScene, with: matcher), lhsScene, rhsScene, "to scene"))
				return Matcher.ComparisonResult(results)
            default: return .none
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_set__viewController_viewController(p0): return p0.intValue
            case let .m_route__to_scene(p0): return p0.intValue
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_set__viewController_viewController: return ".set(viewController:)"
            case .m_route__to_scene: return ".route(to:)"
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

        public static func set(viewController: Parameter<NewReactionViewControllerProtocol?>) -> Verify { return Verify(method: .m_set__viewController_viewController(`viewController`))}
        public static func route(to scene: Parameter<NewReactionRouter.Scene>) -> Verify { return Verify(method: .m_route__to_scene(`scene`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func set(viewController: Parameter<NewReactionViewControllerProtocol?>, perform: @escaping (NewReactionViewControllerProtocol?) -> Void) -> Perform {
            return Perform(method: .m_set__viewController_viewController(`viewController`), performs: perform)
        }
        public static func route(to scene: Parameter<NewReactionRouter.Scene>, perform: @escaping (NewReactionRouter.Scene) -> Void) -> Perform {
            return Perform(method: .m_route__to_scene(`scene`), performs: perform)
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
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
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
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - NewReactionViewControllerProtocol

open class NewReactionViewControllerProtocolMock: NewReactionViewControllerProtocol, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
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





    open func set(interactor: NewReactionInteractorProtocol) {
        addInvocation(.m_set__interactor_interactor(Parameter<NewReactionInteractorProtocol>.value(`interactor`)))
		let perform = methodPerformValue(.m_set__interactor_interactor(Parameter<NewReactionInteractorProtocol>.value(`interactor`))) as? (NewReactionInteractorProtocol) -> Void
		perform?(`interactor`)
    }

    open func set(router: NewReactionRouterProtocol) {
        addInvocation(.m_set__router_router(Parameter<NewReactionRouterProtocol>.value(`router`)))
		let perform = methodPerformValue(.m_set__router_router(Parameter<NewReactionRouterProtocol>.value(`router`))) as? (NewReactionRouterProtocol) -> Void
		perform?(`router`)
    }

    open func set(charity: String) {
        addInvocation(.m_set__charity_charity(Parameter<String>.value(`charity`)))
		let perform = methodPerformValue(.m_set__charity_charity(Parameter<String>.value(`charity`))) as? (String) -> Void
		perform?(`charity`)
    }

    open func displayNewReaction(user: String) {
        addInvocation(.m_displayNewReaction__user_user(Parameter<String>.value(`user`)))
		let perform = methodPerformValue(.m_displayNewReaction__user_user(Parameter<String>.value(`user`))) as? (String) -> Void
		perform?(`user`)
    }

    open func newReactionPlaced(viewModel: ViewModel) {
        addInvocation(.m_newReactionPlaced__viewModel_viewModel(Parameter<ViewModel>.value(`viewModel`)))
		let perform = methodPerformValue(.m_newReactionPlaced__viewModel_viewModel(Parameter<ViewModel>.value(`viewModel`))) as? (ViewModel) -> Void
		perform?(`viewModel`)
    }

    open func show(_ vc: UIViewController, sender: Any?) {
        addInvocation(.m_show__vcsender_sender(Parameter<UIViewController>.value(`vc`), Parameter<Any?>.value(`sender`)))
		let perform = methodPerformValue(.m_show__vcsender_sender(Parameter<UIViewController>.value(`vc`), Parameter<Any?>.value(`sender`))) as? (UIViewController, Any?) -> Void
		perform?(`vc`, `sender`)
    }

    open func dismiss(animated: Bool, completion: (() -> Void)?) {
        addInvocation(.m_dismiss__animated_animatedcompletion_completion(Parameter<Bool>.value(`animated`), Parameter<(() -> Void)?>.any))
		let perform = methodPerformValue(.m_dismiss__animated_animatedcompletion_completion(Parameter<Bool>.value(`animated`), Parameter<(() -> Void)?>.any)) as? (Bool, (() -> Void)?) -> Void
		perform?(`animated`, `completion`)
    }

    open func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)?) {
        addInvocation(.m_present__viewControllerToPresentanimated_flagcompletion_completion(Parameter<UIViewController>.value(`viewControllerToPresent`), Parameter<Bool>.value(`flag`), Parameter<(() -> Void)?>.any))
		let perform = methodPerformValue(.m_present__viewControllerToPresentanimated_flagcompletion_completion(Parameter<UIViewController>.value(`viewControllerToPresent`), Parameter<Bool>.value(`flag`), Parameter<(() -> Void)?>.any)) as? (UIViewController, Bool, (() -> Void)?) -> Void
		perform?(`viewControllerToPresent`, `flag`, `completion`)
    }


    fileprivate enum MethodType {
        case m_set__interactor_interactor(Parameter<NewReactionInteractorProtocol>)
        case m_set__router_router(Parameter<NewReactionRouterProtocol>)
        case m_set__charity_charity(Parameter<String>)
        case m_displayNewReaction__user_user(Parameter<String>)
        case m_newReactionPlaced__viewModel_viewModel(Parameter<ViewModel>)
        case m_show__vcsender_sender(Parameter<UIViewController>, Parameter<Any?>)
        case m_dismiss__animated_animatedcompletion_completion(Parameter<Bool>, Parameter<(() -> Void)?>)
        case m_present__viewControllerToPresentanimated_flagcompletion_completion(Parameter<UIViewController>, Parameter<Bool>, Parameter<(() -> Void)?>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_set__interactor_interactor(let lhsInteractor), .m_set__interactor_interactor(let rhsInteractor)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsInteractor, rhs: rhsInteractor, with: matcher), lhsInteractor, rhsInteractor, "interactor"))
				return Matcher.ComparisonResult(results)

            case (.m_set__router_router(let lhsRouter), .m_set__router_router(let rhsRouter)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsRouter, rhs: rhsRouter, with: matcher), lhsRouter, rhsRouter, "router"))
				return Matcher.ComparisonResult(results)

            case (.m_set__charity_charity(let lhsCharity), .m_set__charity_charity(let rhsCharity)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsCharity, rhs: rhsCharity, with: matcher), lhsCharity, rhsCharity, "charity"))
				return Matcher.ComparisonResult(results)

            case (.m_displayNewReaction__user_user(let lhsUser), .m_displayNewReaction__user_user(let rhsUser)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsUser, rhs: rhsUser, with: matcher), lhsUser, rhsUser, "user"))
				return Matcher.ComparisonResult(results)

            case (.m_newReactionPlaced__viewModel_viewModel(let lhsViewmodel), .m_newReactionPlaced__viewModel_viewModel(let rhsViewmodel)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsViewmodel, rhs: rhsViewmodel, with: matcher), lhsViewmodel, rhsViewmodel, "viewModel"))
				return Matcher.ComparisonResult(results)

            case (.m_show__vcsender_sender(let lhsVc, let lhsSender), .m_show__vcsender_sender(let rhsVc, let rhsSender)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsVc, rhs: rhsVc, with: matcher), lhsVc, rhsVc, "_ vc"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsSender, rhs: rhsSender, with: matcher), lhsSender, rhsSender, "sender"))
				return Matcher.ComparisonResult(results)

            case (.m_dismiss__animated_animatedcompletion_completion(let lhsAnimated, let lhsCompletion), .m_dismiss__animated_animatedcompletion_completion(let rhsAnimated, let rhsCompletion)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsAnimated, rhs: rhsAnimated, with: matcher), lhsAnimated, rhsAnimated, "animated"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsCompletion, rhs: rhsCompletion, with: matcher), lhsCompletion, rhsCompletion, "completion"))
				return Matcher.ComparisonResult(results)

            case (.m_present__viewControllerToPresentanimated_flagcompletion_completion(let lhsViewcontrollertopresent, let lhsFlag, let lhsCompletion), .m_present__viewControllerToPresentanimated_flagcompletion_completion(let rhsViewcontrollertopresent, let rhsFlag, let rhsCompletion)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsViewcontrollertopresent, rhs: rhsViewcontrollertopresent, with: matcher), lhsViewcontrollertopresent, rhsViewcontrollertopresent, "_ viewControllerToPresent"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsFlag, rhs: rhsFlag, with: matcher), lhsFlag, rhsFlag, "animated flag"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsCompletion, rhs: rhsCompletion, with: matcher), lhsCompletion, rhsCompletion, "completion"))
				return Matcher.ComparisonResult(results)
            default: return .none
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_set__interactor_interactor(p0): return p0.intValue
            case let .m_set__router_router(p0): return p0.intValue
            case let .m_set__charity_charity(p0): return p0.intValue
            case let .m_displayNewReaction__user_user(p0): return p0.intValue
            case let .m_newReactionPlaced__viewModel_viewModel(p0): return p0.intValue
            case let .m_show__vcsender_sender(p0, p1): return p0.intValue + p1.intValue
            case let .m_dismiss__animated_animatedcompletion_completion(p0, p1): return p0.intValue + p1.intValue
            case let .m_present__viewControllerToPresentanimated_flagcompletion_completion(p0, p1, p2): return p0.intValue + p1.intValue + p2.intValue
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_set__interactor_interactor: return ".set(interactor:)"
            case .m_set__router_router: return ".set(router:)"
            case .m_set__charity_charity: return ".set(charity:)"
            case .m_displayNewReaction__user_user: return ".displayNewReaction(user:)"
            case .m_newReactionPlaced__viewModel_viewModel: return ".newReactionPlaced(viewModel:)"
            case .m_show__vcsender_sender: return ".show(_:sender:)"
            case .m_dismiss__animated_animatedcompletion_completion: return ".dismiss(animated:completion:)"
            case .m_present__viewControllerToPresentanimated_flagcompletion_completion: return ".present(_:animated:completion:)"
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

        public static func set(interactor: Parameter<NewReactionInteractorProtocol>) -> Verify { return Verify(method: .m_set__interactor_interactor(`interactor`))}
        public static func set(router: Parameter<NewReactionRouterProtocol>) -> Verify { return Verify(method: .m_set__router_router(`router`))}
        public static func set(charity: Parameter<String>) -> Verify { return Verify(method: .m_set__charity_charity(`charity`))}
        public static func displayNewReaction(user: Parameter<String>) -> Verify { return Verify(method: .m_displayNewReaction__user_user(`user`))}
        public static func newReactionPlaced(viewModel: Parameter<ViewModel>) -> Verify { return Verify(method: .m_newReactionPlaced__viewModel_viewModel(`viewModel`))}
        public static func show(_ vc: Parameter<UIViewController>, sender: Parameter<Any?>) -> Verify { return Verify(method: .m_show__vcsender_sender(`vc`, `sender`))}
        public static func dismiss(animated: Parameter<Bool>, completion: Parameter<(() -> Void)?>) -> Verify { return Verify(method: .m_dismiss__animated_animatedcompletion_completion(`animated`, `completion`))}
        public static func present(_ viewControllerToPresent: Parameter<UIViewController>, animated flag: Parameter<Bool>, completion: Parameter<(() -> Void)?>) -> Verify { return Verify(method: .m_present__viewControllerToPresentanimated_flagcompletion_completion(`viewControllerToPresent`, `flag`, `completion`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func set(interactor: Parameter<NewReactionInteractorProtocol>, perform: @escaping (NewReactionInteractorProtocol) -> Void) -> Perform {
            return Perform(method: .m_set__interactor_interactor(`interactor`), performs: perform)
        }
        public static func set(router: Parameter<NewReactionRouterProtocol>, perform: @escaping (NewReactionRouterProtocol) -> Void) -> Perform {
            return Perform(method: .m_set__router_router(`router`), performs: perform)
        }
        public static func set(charity: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_set__charity_charity(`charity`), performs: perform)
        }
        public static func displayNewReaction(user: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_displayNewReaction__user_user(`user`), performs: perform)
        }
        public static func newReactionPlaced(viewModel: Parameter<ViewModel>, perform: @escaping (ViewModel) -> Void) -> Perform {
            return Perform(method: .m_newReactionPlaced__viewModel_viewModel(`viewModel`), performs: perform)
        }
        public static func show(_ vc: Parameter<UIViewController>, sender: Parameter<Any?>, perform: @escaping (UIViewController, Any?) -> Void) -> Perform {
            return Perform(method: .m_show__vcsender_sender(`vc`, `sender`), performs: perform)
        }
        public static func dismiss(animated: Parameter<Bool>, completion: Parameter<(() -> Void)?>, perform: @escaping (Bool, (() -> Void)?) -> Void) -> Perform {
            return Perform(method: .m_dismiss__animated_animatedcompletion_completion(`animated`, `completion`), performs: perform)
        }
        public static func present(_ viewControllerToPresent: Parameter<UIViewController>, animated flag: Parameter<Bool>, completion: Parameter<(() -> Void)?>, perform: @escaping (UIViewController, Bool, (() -> Void)?) -> Void) -> Perform {
            return Perform(method: .m_present__viewControllerToPresentanimated_flagcompletion_completion(`viewControllerToPresent`, `flag`, `completion`), performs: perform)
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
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
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
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - ProfileManagerProtocol

open class ProfileManagerProtocolMock: ProfileManagerProtocol, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
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





    open func clearProfile() {
        addInvocation(.m_clearProfile)
		let perform = methodPerformValue(.m_clearProfile) as? () -> Void
		perform?()
    }

    open func setProfile(profile: UserProfile) {
        addInvocation(.m_setProfile__profile_profile(Parameter<UserProfile>.value(`profile`)))
		let perform = methodPerformValue(.m_setProfile__profile_profile(Parameter<UserProfile>.value(`profile`))) as? (UserProfile) -> Void
		perform?(`profile`)
    }

    open func fetchProfile() -> UserProfile {
        addInvocation(.m_fetchProfile)
		let perform = methodPerformValue(.m_fetchProfile) as? () -> Void
		perform?()
		var __value: UserProfile
		do {
		    __value = try methodReturnValue(.m_fetchProfile).casted()
		} catch {
			onFatalFailure("Stub return value not specified for fetchProfile(). Use given")
			Failure("Stub return value not specified for fetchProfile(). Use given")
		}
		return __value
    }


    fileprivate enum MethodType {
        case m_clearProfile
        case m_setProfile__profile_profile(Parameter<UserProfile>)
        case m_fetchProfile

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_clearProfile, .m_clearProfile): return .match

            case (.m_setProfile__profile_profile(let lhsProfile), .m_setProfile__profile_profile(let rhsProfile)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsProfile, rhs: rhsProfile, with: matcher), lhsProfile, rhsProfile, "profile"))
				return Matcher.ComparisonResult(results)

            case (.m_fetchProfile, .m_fetchProfile): return .match
            default: return .none
            }
        }

        func intValue() -> Int {
            switch self {
            case .m_clearProfile: return 0
            case let .m_setProfile__profile_profile(p0): return p0.intValue
            case .m_fetchProfile: return 0
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_clearProfile: return ".clearProfile()"
            case .m_setProfile__profile_profile: return ".setProfile(profile:)"
            case .m_fetchProfile: return ".fetchProfile()"
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func fetchProfile(willReturn: UserProfile...) -> MethodStub {
            return Given(method: .m_fetchProfile, products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func fetchProfile(willProduce: (Stubber<UserProfile>) -> Void) -> MethodStub {
            let willReturn: [UserProfile] = []
			let given: Given = { return Given(method: .m_fetchProfile, products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (UserProfile).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func clearProfile() -> Verify { return Verify(method: .m_clearProfile)}
        public static func setProfile(profile: Parameter<UserProfile>) -> Verify { return Verify(method: .m_setProfile__profile_profile(`profile`))}
        public static func fetchProfile() -> Verify { return Verify(method: .m_fetchProfile)}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func clearProfile(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_clearProfile, performs: perform)
        }
        public static func setProfile(profile: Parameter<UserProfile>, perform: @escaping (UserProfile) -> Void) -> Perform {
            return Perform(method: .m_setProfile__profile_profile(`profile`), performs: perform)
        }
        public static func fetchProfile(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_fetchProfile, performs: perform)
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
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
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
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - ReactionTableViewDataSourceProtocol

open class ReactionTableViewDataSourceProtocolMock: ReactionTableViewDataSourceProtocol, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
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






    fileprivate struct MethodType {
        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult { return .match }
        func intValue() -> Int { return 0 }
        func assertionName() -> String { return "" }
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
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
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
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - RootNavigatorProtocol

open class RootNavigatorProtocolMock: RootNavigatorProtocol, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
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





    open func setRootViewController() {
        addInvocation(.m_setRootViewController)
		let perform = methodPerformValue(.m_setRootViewController) as? () -> Void
		perform?()
    }

    open func setMainAsRoot() {
        addInvocation(.m_setMainAsRoot)
		let perform = methodPerformValue(.m_setMainAsRoot) as? () -> Void
		perform?()
    }

    open func setLoginAsRoot() {
        addInvocation(.m_setLoginAsRoot)
		let perform = methodPerformValue(.m_setLoginAsRoot) as? () -> Void
		perform?()
    }

    open func logout() {
        addInvocation(.m_logout)
		let perform = methodPerformValue(.m_logout) as? () -> Void
		perform?()
    }


    fileprivate enum MethodType {
        case m_setRootViewController
        case m_setMainAsRoot
        case m_setLoginAsRoot
        case m_logout

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_setRootViewController, .m_setRootViewController): return .match

            case (.m_setMainAsRoot, .m_setMainAsRoot): return .match

            case (.m_setLoginAsRoot, .m_setLoginAsRoot): return .match

            case (.m_logout, .m_logout): return .match
            default: return .none
            }
        }

        func intValue() -> Int {
            switch self {
            case .m_setRootViewController: return 0
            case .m_setMainAsRoot: return 0
            case .m_setLoginAsRoot: return 0
            case .m_logout: return 0
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_setRootViewController: return ".setRootViewController()"
            case .m_setMainAsRoot: return ".setMainAsRoot()"
            case .m_setLoginAsRoot: return ".setLoginAsRoot()"
            case .m_logout: return ".logout()"
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

        public static func setRootViewController() -> Verify { return Verify(method: .m_setRootViewController)}
        public static func setMainAsRoot() -> Verify { return Verify(method: .m_setMainAsRoot)}
        public static func setLoginAsRoot() -> Verify { return Verify(method: .m_setLoginAsRoot)}
        public static func logout() -> Verify { return Verify(method: .m_logout)}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func setRootViewController(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_setRootViewController, performs: perform)
        }
        public static func setMainAsRoot(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_setMainAsRoot, performs: perform)
        }
        public static func setLoginAsRoot(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_setLoginAsRoot, performs: perform)
        }
        public static func logout(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_logout, performs: perform)
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
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
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
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - Storyboard

open class StoryboardMock: Storyboard, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
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





    open func initial<T: UIViewController>() -> T? {
        addInvocation(.m_initial)
		let perform = methodPerformValue(.m_initial) as? () -> Void
		perform?()
		var __value: T? = nil
		do {
		    __value = try methodReturnValue(.m_initial).casted()
		} catch {
			// do nothing
		}
		return __value
    }

    open func viewController<T: UIViewController>(identifier: StoryboardId) -> T? {
        addInvocation(.m_viewController__identifier_identifier(Parameter<StoryboardId>.value(`identifier`)))
		let perform = methodPerformValue(.m_viewController__identifier_identifier(Parameter<StoryboardId>.value(`identifier`))) as? (StoryboardId) -> Void
		perform?(`identifier`)
		var __value: T? = nil
		do {
		    __value = try methodReturnValue(.m_viewController__identifier_identifier(Parameter<StoryboardId>.value(`identifier`))).casted()
		} catch {
			// do nothing
		}
		return __value
    }


    fileprivate enum MethodType {
        case m_initial
        case m_viewController__identifier_identifier(Parameter<StoryboardId>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_initial, .m_initial): return .match

            case (.m_viewController__identifier_identifier(let lhsIdentifier), .m_viewController__identifier_identifier(let rhsIdentifier)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsIdentifier, rhs: rhsIdentifier, with: matcher), lhsIdentifier, rhsIdentifier, "identifier"))
				return Matcher.ComparisonResult(results)
            default: return .none
            }
        }

        func intValue() -> Int {
            switch self {
            case .m_initial: return 0
            case let .m_viewController__identifier_identifier(p0): return p0.intValue
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_initial: return ".initial()"
            case .m_viewController__identifier_identifier: return ".viewController(identifier:)"
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func initial<T: UIViewController>(willReturn: T?...) -> MethodStub {
            return Given(method: .m_initial, products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func viewController<T: UIViewController>(identifier: Parameter<StoryboardId>, willReturn: T?...) -> MethodStub {
            return Given(method: .m_viewController__identifier_identifier(`identifier`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func initial<T: UIViewController>(willProduce: (Stubber<T?>) -> Void) -> MethodStub {
            let willReturn: [T?] = []
			let given: Given = { return Given(method: .m_initial, products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (T?).self)
			willProduce(stubber)
			return given
        }
        public static func viewController<T: UIViewController>(identifier: Parameter<StoryboardId>, willProduce: (Stubber<T?>) -> Void) -> MethodStub {
            let willReturn: [T?] = []
			let given: Given = { return Given(method: .m_viewController__identifier_identifier(`identifier`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (T?).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func initial() -> Verify { return Verify(method: .m_initial)}
        public static func viewController(identifier: Parameter<StoryboardId>) -> Verify { return Verify(method: .m_viewController__identifier_identifier(`identifier`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func initial(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_initial, performs: perform)
        }
        public static func viewController(identifier: Parameter<StoryboardId>, perform: @escaping (StoryboardId) -> Void) -> Perform {
            return Perform(method: .m_viewController__identifier_identifier(`identifier`), performs: perform)
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
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
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
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - StoryboardId

open class StoryboardIdMock: StoryboardId, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
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

    public var identifier: String {
		get {	invocations.append(.p_identifier_get); return __p_identifier ?? givenGetterValue(.p_identifier_get, "StoryboardIdMock - stub value for identifier was not defined") }
	}
	private var __p_identifier: (String)?






    fileprivate enum MethodType {
        case p_identifier_get

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {            case (.p_identifier_get,.p_identifier_get): return Matcher.ComparisonResult.match
            }
        }

        func intValue() -> Int {
            switch self {
            case .p_identifier_get: return 0
            }
        }
        func assertionName() -> String {
            switch self {
            case .p_identifier_get: return "[get] .identifier"
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func identifier(getter defaultValue: String...) -> PropertyStub {
            return Given(method: .p_identifier_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

    }

    public struct Verify {
        fileprivate var method: MethodType

        public static var identifier: Verify { return Verify(method: .p_identifier_get) }
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
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
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
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - UserDefaultsProtocol

open class UserDefaultsProtocolMock: UserDefaultsProtocol, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
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





    open func set(_ value: Any?, forKey defaultName: String) {
        addInvocation(.m_set__valueforKey_defaultName(Parameter<Any?>.value(`value`), Parameter<String>.value(`defaultName`)))
		let perform = methodPerformValue(.m_set__valueforKey_defaultName(Parameter<Any?>.value(`value`), Parameter<String>.value(`defaultName`))) as? (Any?, String) -> Void
		perform?(`value`, `defaultName`)
    }

    open func value(forKey key: String) -> Any? {
        addInvocation(.m_value__forKey_key(Parameter<String>.value(`key`)))
		let perform = methodPerformValue(.m_value__forKey_key(Parameter<String>.value(`key`))) as? (String) -> Void
		perform?(`key`)
		var __value: Any? = nil
		do {
		    __value = try methodReturnValue(.m_value__forKey_key(Parameter<String>.value(`key`))).casted()
		} catch {
			// do nothing
		}
		return __value
    }

    open func removeObject(forKey defaultName: String) {
        addInvocation(.m_removeObject__forKey_defaultName(Parameter<String>.value(`defaultName`)))
		let perform = methodPerformValue(.m_removeObject__forKey_defaultName(Parameter<String>.value(`defaultName`))) as? (String) -> Void
		perform?(`defaultName`)
    }


    fileprivate enum MethodType {
        case m_set__valueforKey_defaultName(Parameter<Any?>, Parameter<String>)
        case m_value__forKey_key(Parameter<String>)
        case m_removeObject__forKey_defaultName(Parameter<String>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_set__valueforKey_defaultName(let lhsValue, let lhsDefaultname), .m_set__valueforKey_defaultName(let rhsValue, let rhsDefaultname)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsValue, rhs: rhsValue, with: matcher), lhsValue, rhsValue, "_ value"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsDefaultname, rhs: rhsDefaultname, with: matcher), lhsDefaultname, rhsDefaultname, "forKey defaultName"))
				return Matcher.ComparisonResult(results)

            case (.m_value__forKey_key(let lhsKey), .m_value__forKey_key(let rhsKey)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsKey, rhs: rhsKey, with: matcher), lhsKey, rhsKey, "forKey key"))
				return Matcher.ComparisonResult(results)

            case (.m_removeObject__forKey_defaultName(let lhsDefaultname), .m_removeObject__forKey_defaultName(let rhsDefaultname)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsDefaultname, rhs: rhsDefaultname, with: matcher), lhsDefaultname, rhsDefaultname, "forKey defaultName"))
				return Matcher.ComparisonResult(results)
            default: return .none
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_set__valueforKey_defaultName(p0, p1): return p0.intValue + p1.intValue
            case let .m_value__forKey_key(p0): return p0.intValue
            case let .m_removeObject__forKey_defaultName(p0): return p0.intValue
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_set__valueforKey_defaultName: return ".set(_:forKey:)"
            case .m_value__forKey_key: return ".value(forKey:)"
            case .m_removeObject__forKey_defaultName: return ".removeObject(forKey:)"
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func value(forKey key: Parameter<String>, willReturn: Any?...) -> MethodStub {
            return Given(method: .m_value__forKey_key(`key`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func value(forKey key: Parameter<String>, willProduce: (Stubber<Any?>) -> Void) -> MethodStub {
            let willReturn: [Any?] = []
			let given: Given = { return Given(method: .m_value__forKey_key(`key`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Any?).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func set(_ value: Parameter<Any?>, forKey defaultName: Parameter<String>) -> Verify { return Verify(method: .m_set__valueforKey_defaultName(`value`, `defaultName`))}
        public static func value(forKey key: Parameter<String>) -> Verify { return Verify(method: .m_value__forKey_key(`key`))}
        public static func removeObject(forKey defaultName: Parameter<String>) -> Verify { return Verify(method: .m_removeObject__forKey_defaultName(`defaultName`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func set(_ value: Parameter<Any?>, forKey defaultName: Parameter<String>, perform: @escaping (Any?, String) -> Void) -> Perform {
            return Perform(method: .m_set__valueforKey_defaultName(`value`, `defaultName`), performs: perform)
        }
        public static func value(forKey key: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_value__forKey_key(`key`), performs: perform)
        }
        public static func removeObject(forKey defaultName: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_removeObject__forKey_defaultName(`defaultName`), performs: perform)
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
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
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
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

