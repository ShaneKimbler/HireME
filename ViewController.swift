//
//  ViewController.swift
//  HIreME
//
//  Created by Shane Kimbler on 9/2/18.
//  Copyright © 2018 Shane Kimbler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // Link for phone number
    @IBAction func CallOffice(_ sender: Any) {
        if let phone = NSURL(string: "tel://6063315000") {
            UIApplication.shared.canOpenURL(phone as URL)
            
            UIApplication.shared.open(phone as URL, options: convertToUIApplicationOpenExternalURLOptionsKeyDictionary([:]), completionHandler:nil)
        }
    }
    
    // Link to Resume
    @IBAction func resume(_ sender: Any) {
        if let url = URL(string: "http://resume.shanekimbler.name/KimblerS_PubRes.pdf") {
            UIApplication.shared.canOpenURL(url)
            
            UIApplication.shared.open(url, options: convertToUIApplicationOpenExternalURLOptionsKeyDictionary([:]), completionHandler:nil)
        }
    }
    
    // Link to Website
    @IBAction func website(_ sender: Any) {
        if let url = URL(string: "http://www.shanekimbler.name") {
            UIApplication.shared.canOpenURL(url)
            
            UIApplication.shared.open(url, options: convertToUIApplicationOpenExternalURLOptionsKeyDictionary([:]), completionHandler:nil)
        }
    }
    
    // Link to Project
    @IBAction func genoproj(_ sender: Any) {
        if let url = URL(string: "https://www.kimbler.org") {
            UIApplication.shared.canOpenURL(url)
            
            UIApplication.shared.open(url, options: convertToUIApplicationOpenExternalURLOptionsKeyDictionary([:]), completionHandler:nil)
        }
    }
    
    // Link to Linkedin
    @IBAction func linkedin(_ sender: Any) {
        if let url = URL(string: "https://www.linkedin.com/in/shanekimbler/") {
            UIApplication.shared.canOpenURL(url)
            
            UIApplication.shared.open(url, options: convertToUIApplicationOpenExternalURLOptionsKeyDictionary([:]), completionHandler:nil)
        }
    }
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToUIApplicationOpenExternalURLOptionsKeyDictionary(_ input: [String: Any]) -> [UIApplication.OpenExternalURLOptionsKey: Any] {
	return Dictionary(uniqueKeysWithValues: input.map { key, value in (UIApplication.OpenExternalURLOptionsKey(rawValue: key), value)})
}
