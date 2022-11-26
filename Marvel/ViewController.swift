//
//  ViewController.swift
//  Marvel
//
//  Created by HanYuan on 2022/11/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var pageDot: UIPageControl!
    @IBOutlet weak var titleSegmentedControl: UISegmentedControl!
    @IBOutlet weak var posterImageView: UIImageView!
    
    let titleArray = ["Spider-Man: Homecoming", "Spider-Man: Far From Home", "Spider-Man: No Way Home"]
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeData()
    }
    
    func changeData() {
        titleLabel.text = titleArray[index]
        pageDot.currentPage = index
        titleSegmentedControl.selectedSegmentIndex = index
        posterImageView.image = UIImage(named: titleArray[index])
    }

    @IBAction func segmented(_ sender: Any) {
        index = titleSegmentedControl.selectedSegmentIndex
        changeData()
    }
    
    @IBAction func pageControl(_ sender: Any) {
        index = pageDot.currentPage
        changeData()
    }
    
    @IBAction func pre(_ sender: Any) {
        index = (index + titleArray.count - 1) % titleArray.count
        changeData()
    }
    
    @IBAction func next(_ sender: Any) {
        index = (index + 1) % titleArray.count
        changeData()
    }
    
    @IBAction func rightSwipe(_ sender: Any) {
        index = (index + titleArray.count - 1) % titleArray.count
        changeData()
    }
    @IBAction func leftSwipe(_ sender: Any) {
        index = (index + 1) % titleArray.count
        changeData()
    }
}

