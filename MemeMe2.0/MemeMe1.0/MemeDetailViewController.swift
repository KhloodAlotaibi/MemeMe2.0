//
//  MemeDetailViewController.swift
//  MemeMe1.0
//
//  Created by Khlood on 5/17/20.
//  Copyright © 2020 Khlood. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {
    
    var detailImage: UIImage!
    
    @IBOutlet var myDetailViewControllerImage: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.tabBar.isHidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        myDetailViewControllerImage.image = detailImage
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        tabBarController?.tabBar.isHidden = false
    }
}
