// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2015 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//


#if DEPLOYMENT_RUNTIME_OBJC || os(Linux)
    import Foundation
    import XCTest
#else
    import SwiftFoundation
    import SwiftXCTest
#endif


class TestNSUserDefaults : XCTestCase {
    
    var allTests : [(String, () -> ())] {
        return [
            ("test_string", test_string),
        ]
    }
    
    func test_string() {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject("string_value", forKey: "test_string")
        XCTAssertEqual("test_string", defaults.stringForKey("test_string"))
    }
}