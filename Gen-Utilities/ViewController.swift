//
//  ViewController.swift
//  Gen-Utilities
//
//  Created by Eric Dolecki on 11/12/19.
//  Copyright © 2019 Eric Dolecki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Documentation: http://cocoadocs.org/docsets/DateToolsSwift/2.0.0/index.html
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Some simle examples.
        
        let timeago = 2.days.earlier
        print("time ago \(timeago.timeAgoSinceNow)")                // time ago 2 days ago
        print("time ago \(timeago.shortTimeAgoSinceNow)")           // time ago 2d
        print("2 days ago was \(timeago.format(with: .medium))")    // 2 days ago was Nov 11, 2019
        
        let now = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy MM dd HH:mm:ss.SSS"
        let birthday = formatter.date(from: "2020 03 28 14:50:12.000")!
        print(birthday.format(with: .full))                         // Saturday, March 28, 2020
        let chunk = now.chunkBetween(date: birthday)                // TimeChunk(seconds: 7, minutes: 2, hours: 5, days: 15, weeks: 0, months: 4, years: 0)
        print(chunk)
    }
}

