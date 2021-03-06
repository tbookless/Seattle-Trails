//
//  AlertViewsController.swift
//  Seattle Trails
//
//  Created by Eric Mentele on 3/31/16.
//  Copyright © 2016 seatrails. All rights reserved.
//

import Foundation
import UIKit

/// Provides a generic error alert view and informational alerts. This allows informational alerts to be easily modified as needed.
class AlertViews {
    
    // MARK: Alert Views
    class func presentErrorAlertView(sender: UIViewController, title: String, message: String)
    {
        let issueView = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        issueView.addAction(okButton)
        
        DispatchQueue.main.async
        {
            sender.present(issueView, animated: true, completion: nil)
        }
    }
    
    class func presentNotInParkAlert(sender: UIViewController) {
        let issueView = UIAlertController(title: "Report Issue", message: "You must be on site at a trail or park to use this feature and report an issue. Thank you for helping us document park problems for service.", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        issueView.addAction(okButton)
        
        DispatchQueue.main.async
        {
            sender.present(issueView, animated: true, completion: nil)
        }
    }
	
	class func presentMapKeyAlert(sender: UIViewController) {
		// Tell user what the different color pins mean
		let infoAlert = UIAlertController(title: "Color Key", message: "Red Pins: More trails here have steep inclines. \nYellow Pins: Inclines tend to be moderate. \nGreen Pins: More trails have slight to no incline. \nBorder color on trails show surface type and inner colors from green (flat) to red (steep).", preferredStyle: .alert)
		let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
		infoAlert.addAction(okButton)
        
		DispatchQueue.main.async
        {
			sender.present(infoAlert, animated: true, completion: nil)
		}
	}
    
    class func presentReportAlert(sender: UIViewController) {
        // Tell user what the different color pins mean
        let reportAlert = UIAlertController(title: "Report Photo", message: "Please take a photo of the park problem to report.", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        reportAlert.addAction(okButton)
        
        DispatchQueue.main.async
        {
            sender.present(reportAlert, animated: true, completion: nil)
        }
    }
}
