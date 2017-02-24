//
//  ViewController.swift
//  ImageGenerator
//
//  Created by Taguhi Abgaryan on 2/23/17.
//  Copyright © 2017 Taguhi Abgaryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    static var colorCollection = Colors.allColorsCollection
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var newImageButtonAction: UIBarButtonItem!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.title = "Image Generator"
        generateNewImage()
    }
    
    func generateNewImage() {
        let coefficient: CGFloat = 1.0 / 50.0
        let width = Int(view.frame.width * coefficient)
        let height = Int(view.frame.height * coefficient)
        
        if ViewController.colorCollection.key == "all" {
            imageView.image = Renderer.generateRandomImage(width: width, height: height)
        } else {
            let colors = ViewController.colorCollection.colors
            imageView.image = Renderer.generateRandomImage(using: colors, width: width, height: height)
        }
    }
    
    @IBAction func newImageButtonAction(_ sender: UIBarButtonItem) {
        generateNewImage()
    }
    
}

