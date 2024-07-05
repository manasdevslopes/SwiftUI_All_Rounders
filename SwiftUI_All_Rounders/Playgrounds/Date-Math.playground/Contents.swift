import Foundation

let calendar = Calendar.current
let rightNow = Date()

// Create Date from components
let dateComponents = DateComponents(calendar: calendar, year: 2024, month: 7, day: 4)
let composedDate = calendar.date(from: dateComponents)!


// Get components
let pulledComponents = calendar.dateComponents([.month, .day], from: composedDate)
let pulledComponentsNow = calendar.dateComponents([.month, .day], from: .now)
let weekday = calendar.component(.weekday, from: .now)


// Adding a component to a date (like 10 days away)
let tenDaysFromNow = calendar.date(byAdding: .day, value: 10, to: .now)
let tenDaysBeforeNow = calendar.date(byAdding: .day, value: -10, to: .now)
let tenYearsBeforeNow = calendar.date(byAdding: .year, value: -10, to: .now)


// Get beginning of component
let beginningOfDay = calendar.dateInterval(of: .day, for: .now)!.start
let endOfDay = calendar.dateInterval(of: .day, for: .now)!.end
let beginningOfYear = calendar.dateInterval(of: .year, for: .now)!.start


// Time intervals between two dates
let timeIntervalDays = calendar.dateComponents([.day], from: composedDate, to: .now)
let daysSince = timeIntervalDays.day
let timeIntervalYears = calendar.dateComponents([.year], from: composedDate, to: .now)
let yearSince = timeIntervalYears.year
let timeIntervalMinute = calendar.dateComponents([.minute], from: composedDate, to: .now)
let minutesSince = timeIntervalMinute.minute

// Is Same Day
let isSameDate = calendar.isDate(composedDate, inSameDayAs: .now)
let isSameDate1 = calendar.isDate(.now, inSameDayAs: .now)
let isSameDateGranular = calendar.isDate(composedDate, equalTo: .now, toGranularity: .month)


// Days since our original date (composedDate)
