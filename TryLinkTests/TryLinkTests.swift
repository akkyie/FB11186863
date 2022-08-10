//
//  TryLinkTests.swift
//  TryLinkTests
//
//  Created by 安井 瑛男 on 2022/08/10.
//

import XCTest
import RxSwift

@testable import TryLink

class TryLinkTests: XCTestCase {
    func testExample() throws {
        let bag = DisposeBag()
        ContentView.observable().subscribe().disposed(by: bag)
    }
}
