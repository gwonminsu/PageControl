//
//  ViewController.swift
//  PageControl
//
//  Created by 권민수 on 2023/05/04.
//

import UIKit

var num = [ "1", "2", "3", "4", "5", "6", "7", "8", "9", "10" ]

class ViewController: UIViewController {
    
    @IBOutlet var lblNumber: UILabel!
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pageControl.numberOfPages = num.count
        pageControl.currentPage = 0
        
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.red
        
        lblNumber.text = num[0]
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        self.lblNumber.text = num[pageControl.currentPage]
    }
    
}

