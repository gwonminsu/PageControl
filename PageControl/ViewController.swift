//
//  ViewController.swift
//  PageControl
//
//  Created by 권민수 on 2023/05/04.
//

import UIKit

var images = [ "cat.jpeg", "cat2.png", "devilcat.jpeg", "fanxycat.jpeg", "hmmchitcat.jpeg", "ironcat.jpeg" ]

class ViewController: UIViewController {
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.red
        
        imgView.image = UIImage(named: images[0])
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }
    
}

