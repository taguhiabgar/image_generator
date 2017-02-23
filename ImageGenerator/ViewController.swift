//
//  ViewController.swift
//  ImageGenerator
//
//  Created by Taguhi Abgaryan on 2/23/17.
//  Copyright © 2017 Taguhi Abgaryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var newImageButtonAction: UIBarButtonItem!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.title = "Image Generator"
        generateNewImage()
    }
    
    func generateNewImage() {
        let coefficient: CGFloat = 1.0 / 50.0
        let image = Renderer.generateRandomImage(width: Int(view.frame.width * coefficient), height: Int(view.frame.height * coefficient))
        imageView.image = image
    }
    
    @IBAction func newImageButtonAction(_ sender: UIBarButtonItem) {
        generateNewImage()
    }
    
}

