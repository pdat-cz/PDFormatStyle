import XCTest
@testable import PDFormatStyle


final class FormatStyleTests: XCTestCase {
    
    func testYearPeriod() throws {
        
        let timestamp = 1609456048000.0
        
        let date = Date(timeIntervalSince1970: timestamp/1e3)
        
        
        // UTC
        XCTAssertEqual(date.formatted(.yearPeriod()), "2020")
                       
        // Europe/Prague
       XCTAssertEqual(date.formatted(.yearPeriod(timezone: "Europe/Prague")), "2021")
    }
    
    
    func testMonthPeriod() throws {
        
        let timestamp = 1609456048000.0
        
        let date = Date(timeIntervalSince1970: timestamp/1e3)
        
        
        // UTC
        XCTAssertEqual(date.formatted(.monthPeriod()), "2020-12")
                       
        // Europe/Prague
       XCTAssertEqual(date.formatted(.monthPeriod(timezone: "Europe/Prague")), "2021-01")
    }
    
    func testDayPeriod() throws {
        
        let timestamp = 1609456048000.0
        
        let date = Date(timeIntervalSince1970: timestamp/1e3)
        
        // UTC
        XCTAssertEqual(date.formatted(.dayPeriod()), "2020-12-31")
                       
        // Europe/Prague
       XCTAssertEqual(date.formatted(.dayPeriod(timezone: "Europe/Prague")), "2021-01-01")
    }
    
    func testHourPeriod() throws {
        
        let timestamp = 1609456048000.0
        
        let date = Date(timeIntervalSince1970: timestamp/1e3)
        
        
        // UTC
        XCTAssertEqual(date.formatted(.hourPeriod()), "23:07")
                       
        // Europe/Prague
       XCTAssertEqual(date.formatted(.hourPeriod(timezone: "Europe/Prague")), "00:07")
    }
}
