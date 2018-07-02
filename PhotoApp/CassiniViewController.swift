//
//  CassiniViewController.swift
//  PhotoApp
//
//  Created by hyejeong seo on 2018. 6. 29..
//  Copyright © 2018년 hyejeong seo. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController {

    private struct Storyboard {
        static let ShowImageSeque = "Show Image"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Storyboard.ShowImageSeque {
            if let ivc = segue.destination.contentViewController as? ImageViewController {
                let imageName = (sender as? UIButton)?.currentTitle
                ivc.imageURL = DemoURL.NASAImageNamed(imageName: imageName)
                ivc.title = imageName
            }
        }
    }

}


extension UIViewController {
    var contentViewController: UIViewController {
        if let navcon = self as? UINavigationController {
            return navcon.visibleViewController ?? self
        } else {
            return self
        }
    }
}
