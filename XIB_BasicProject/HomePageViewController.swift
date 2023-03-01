//
//  HomePageViewController.swift
//  XIB_POC
//
//  Created by Guru Mahan on 24/02/23.
//

import UIKit

class HomePageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.cornerRadius = 20
        imageView.image = UIImage(named: "roapBridge")
        imageView.backgroundColor = .green
    }

}
