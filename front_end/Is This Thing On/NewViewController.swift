//
//  NewViewController.swift
//  Is This Thing On
//
//  Created by Pranav Sharan on 5/18/19.
//  Copyright © 2019 Is This Thing On. All rights reserved.
//

import UIKit

class NewViewController: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    var pageController: UIPageViewController!
    var controllers = [UIViewController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
        pageController.dataSource = self
        pageController.delegate = self
        
        addChild(pageController)
        view.addSubview(pageController.view)
        
        let views = ["pageController": pageController.view] as [String: AnyObject]
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[pageController]|", options: [], metrics: nil, views: views))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[pageController]|", options: [], metrics: nil, views: views))
        
        for _ in 1 ... 3 {
            let vc = UIViewController()
            vc.view.backgroundColor = UIColor.white
            controllers.append(vc)
        }
        
        //Create imageview0
        let imageView0 = UIImageView(frame: CGRect(x: 50, y: 50, width: 20, height: 20))
        imageView0.image = UIImage(named: "ThumbsUp.png")
        let scrollView0 = UIScrollView()
        scrollView0.sizeToFit()
        scrollView0.addSubview(imageView0)

        //Create imageview1
        let imageView1 = UIImageView(frame: CGRect(x: 50, y: 50, width: 20, height: 20))
        imageView1.image = UIImage(named: "ThumbsUp.png")
        let scrollView1 = UIScrollView()
        scrollView1.addSubview(imageView1)
        
        //Create imageview2
        let imageView2 = UIImageView(frame: CGRect(x: 50, y: 50, width: 20, height: 20))
        imageView2.image = UIImage(named: "ThumbsUp.png")
        let scrollView2 = UIScrollView()
        scrollView2.addSubview(imageView2)
        
        controllers[0].view.addSubview(scrollView0)
        controllers[1].view.addSubview(scrollView1)
        controllers[2].view.addSubview(scrollView2)
        
        pageController.setViewControllers([controllers[0]], direction: .forward, animated: false)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if let index = controllers.firstIndex(of: viewController) {
            if index > 0 {
                return controllers[index - 1]
            } else {
                return nil
            }
        }
        
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if let index = controllers.firstIndex(of: viewController) {
            if index < controllers.count - 1 {
                return controllers[index + 1]
            } else {
                return nil
            }
        }
        
        return nil
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return controllers.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        let firstViewController = controllers[0]
        let firstViewControllerIndex = controllers.firstIndex(of: firstViewController)
        return firstViewControllerIndex!
    }
}
