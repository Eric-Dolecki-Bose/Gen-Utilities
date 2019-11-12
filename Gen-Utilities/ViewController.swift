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
    }
}

