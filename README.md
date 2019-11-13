# Gen-Utilities
Date tools, but feel free to add math, conversions, etc. to this set of files. 

### Example date stuff

URL to docs: http://cocoadocs.org/docsets/DateToolsSwift/2.0.0/index.html

    let timeago = 2.days.earlier
    print("time ago \(timeago.timeAgoSinceNow)")
    print("time ago \(timeago.shortTimeAgoSinceNow)")
    print("2 days ago was \(timeago.format(with: .medium))")
        
    let now = Date()
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy MM dd HH:mm:ss.SSS"
    let birthday = formatter.date(from: "2020 03 28 14:50:12.000")!
    print(birthday.format(with: .full))
    let chunk = now.chunkBetween(date: birthday)
    print(chunk)
    
    CONSOLE:
    ========
    time ago 2 days ago
    time ago 2d
    2 days ago was Nov 10, 2019
    Saturday, March 28, 2020
    TimeChunk(seconds: 36, minutes: 59, hours: 4, days: 16, weeks: 0, months: 4, years: 0)

### SwiftDate

I found something called SwiftDate that looks like it has a ton of nice Date functionality. 

  - https://github.com/malcommac/SwiftDate

### Scale

I found this Scale conversion repository recently, and it looks decent. It could be included here, but looks like it benefits greatly from cocoapods installation, which complicates this repository. So I am including the URL here for you in case you might have need of it's use. Or perhaps write/find another that can just have files included.

  - https://github.com/onmyway133/Scale
 
### SwiftyJSON

A fan favorite - SwiftyJSON makes it easy to deal with JSON data in Swift.

  - https://github.com/SwiftyJSON/SwiftyJSON

### Material Design for iOS

Typically I don't like getting away from Apple components since users expect them. I am including the Material Design for iOS just in case someone wants that type of UX. Again, prefer known elements and UX ahead of another company's take on it, but some of the elements might be useful and can be included without the entire MD component collection.

  - https://material.io/develop/ios/
