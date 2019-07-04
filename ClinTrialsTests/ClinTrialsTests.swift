//
//  ClinTrialsTests.swift
//  ClinTrialsTests
//
//  Created by Richard de Borja on 2019-07-02.
//  Copyright © 2019 Richard de Borja. All rights reserved.
//

import XCTest
@testable import ClinTrials

class ClinTrialsTests: XCTestCase {
    func testFailedTrial() {
        // empty city
        let emptyCity = ClinicalTrial(city: "", institute: "institute", isActive: true, startDate: nil, endDate: nil)
        XCTAssertNil(emptyCity)
        
        // empty institute
        let emptyInstitute = ClinicalTrial(city: "city", institute: "", isActive: true, startDate: nil, endDate: nil)
        XCTAssertNil(emptyInstitute)
    }
    
    func testSuccessTrial() {
        // valid trial
        let validTrial = ClinicalTrial(city: "city", institute: "institute", isActive: true, startDate: nil, endDate: nil)
        XCTAssertNotNil(validTrial)
    }
}
