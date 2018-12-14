//
//  InternetMasterViewController.swift
//  InternetApp
//
//  Created by Larson, David on 12/14/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

class InternetMasterViewController: UITableViewController
{

    private weak var internetDetail : InternetDetailViewController? = nil
    private lazy var internetTopics : [String] = [String]()
    private lazy var addresses : [String] = [String]()

    private func setupDetailContents() -> Void
    {
        internetTopics = [
            "Internet Definitions",
            "Standard Search Engine",
            "AP CSP",
            "Canyons District",
            "CTEC",
            "Social Media"
    ]

    addresses = [
        "https://www.google.com",
        "https://www.twitter.com",
        "https://www.youtue.com",
        "https://canyons.instructure.com",
        "https://ctec.canyonsdistrict.org/"
    ]

    if let splitView = splitViewController
    {
        let currentControllers = splitView.viewControllers
        internetDetail = currentControllers[0] as? InternetDetailViewController
    }
}

    //This method only happens once with the split view
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()

        setupDetailContents()
        self.clearsSelectionOnViewWillAppear = false

        if let split = splitViewController
        {
            let controllers = split.viewControllers
            internetDetail = (controllers[controllers.count-1] as! UINavigationController).topViewController as? InternetDetailViewController
        }
    }
}

