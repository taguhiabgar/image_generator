//
//  ViewController.swift
//  ImageGenerator
//
//  Created by Taguhi Abgaryan on 2/23/17.
//  Copyright © 2017 Taguhi Abgaryan. All rights reserved.
//

import UIKit

let currentCollectionKey = "Current"

class ViewController: UIViewController {
    
    private var colorCollection = Colors.allColorsCollection
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var newImageButtonAction: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var index = 0
        if UserDefaults.standard.value(forKey: currentCollectionKey) == nil {
            UserDefaults.standard.set(index, forKey: currentCollectionKey)
        } else {
            index = UserDefaults.standard.value(forKey: currentCollectionKey) as! Int
        }
        colorCollection = Colors.collections[index]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.title = "Image Generator"
        updateCollection()
        generateNewImage()
    }
    
    private func updateCollection() {
        let index = UserDefaults.standard.value(forKey: currentCollectionKey) as? Int ?? 0
        if index >= 0 && index < Colors.collections.count {
            colorCollection = Colors.collections[index]
        }
    }
    
    private func generateNewImage() {
        let coefficient: CGFloat = 1.0 / 50.0
        let width = Int(view.frame.width * coefficient)
        let height = Int(view.frame.height * coefficient)
        let colors = colorCollection.colors
        imageView.image = Renderer.generateRandomImage(using: colors, width: width, height: height)
    }
    
    @IBAction func newImageButtonAction(_ sender: UIBarButtonItem) {
        generateNewImage()
    }
    
}

