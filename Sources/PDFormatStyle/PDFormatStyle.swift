import Foundation

public struct YearPeriodStyle: FormatStyle {
    
    public typealias FormatInput = Date
    public typealias FormatOutput = String
    
    private var timezone: String = "UTC"
    
    init(timezone: String? = "UTC") {
        self.timezone = timezone ?? "UTC"
    }
    
    public func format(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(abbreviation: self.timezone)
        formatter.dateFormat = "yyyy"
        return formatter.string(from: date)
    }
    
}

public struct MonthPeriodStyle: FormatStyle {
    
    public typealias FormatInput = Date
    public typealias FormatOutput = String
    
    private var timezone: String = "UTC"
    
    init(timezone: String? = "UTC") {
        self.timezone = timezone ?? "UTC"
    }
    
    public func format(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(abbreviation: self.timezone)
        formatter.dateFormat = "yyyy-MM"
        return formatter.string(from: date)
    }
    
}

public struct DayPeriodStyle: FormatStyle {
    
    public typealias FormatInput = Date
    public typealias FormatOutput = String
    
    private var timezone: String = "UTC"
    
    init(timezone: String? = "UTC") {
        self.timezone = timezone ?? "UTC"
    }
    
    public func format(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(abbreviation: self.timezone)
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.string(from: date)
    }
    
}

public struct HourPeriodStyle: FormatStyle {
    
    public typealias FormatInput = Date
    public typealias FormatOutput = String
    
    private var timezone: String
    
    init(timezone: String? = "UTC") {
        self.timezone = timezone ?? "UTC"
    }
    
    public func format(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(abbreviation: self.timezone)
        formatter.dateFormat = "HH:mm"
        debugPrint(self.timezone)
        return formatter.string(from: date)
    }
    
}

@available(macOS 12.0, *)
public extension FormatStyle where Self == YearPeriodStyle {
    /**
     - Returns: Year Period String "2021"
     */
    static func yearPeriod(timezone: String? = "UTC") -> YearPeriodStyle {
        .init(timezone: timezone)
    }
}

@available(macOS 12.0, *)
public extension FormatStyle where Self == MonthPeriodStyle {
    /**
     - Returns: Month Period String "2021-12"
     */
    static func monthPeriod(timezone: String? = "UTC") -> MonthPeriodStyle {
        .init(timezone: timezone)
    }
}

@available(macOS 12.0, *)
public extension FormatStyle where Self == DayPeriodStyle {
    /**
     - Returns: Day Period String "2021-12-31"
     */
    static func dayPeriod(timezone: String? = "UTC") -> DayPeriodStyle {
        .init(timezone: timezone)
    }
}

@available(macOS 12.0, *)
public extension FormatStyle where Self == HourPeriodStyle {
    /**
     - Returns: Hour Period String "12:36"
     */
    static func hourPeriod(timezone: String? = "UTC") -> HourPeriodStyle {
        .init(timezone: timezone)
    }
}
