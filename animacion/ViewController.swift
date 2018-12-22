//
//  ViewController.swift
//  dados
//
//  Created by Mac Mini on 22/12/18.
//  Copyright © 2018 Mac Mini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // @IBOutlet weak var imageViewDiceLeft: UIImageView!
    // @IBOutlet weak var imageViewDiceRight: UIImageView!
    
    
    //   @IBOutlet weak var ryuImageView: UIImageView!
    
    @IBOutlet weak var dadoDinamico: UIImageView!
    
    @IBOutlet weak var dadoDinamico2: UIImageView!
    //var randomDiceIndexLeft : Int = 0
    //var randomDiceIndexRight: Int = 0
    var diceImages: [UIImage] = []
    
    
    //let diceImages = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        diceImages = createImageArray(total: 6, imagePrefix: "dice")
        // generateRandomDices()
    }
    
    func createImageArray(total: Int, imagePrefix: String) -> [UIImage] {
     
     var imageArray: [UIImage] = []
     
     for imageCount in 0..<total {
     let imageName = "\(imagePrefix)\(imageCount+1)"
     let image = UIImage(named: imageName)!
     imageArray.append(image)
     }
     return imageArray
     }
     
     // Can be refactored to an extension on UIImage
     func animate(imageView: UIImageView, images: [UIImage]) {
     imageView.animationImages = images
     imageView.animationDuration = 2.0
     imageView.animationRepeatCount = 1
     imageView.startAnimating()
     }
     
     //func shoryukenButtonTapped() {
     //animate(imageView: dadoDinamico, images: diceImages)}
     
    
    
    @IBAction func diceShake(_ sender: UIButton) {
        animate(imageView: dadoDinamico, images: diceImages)
        animate(imageView: dadoDinamico2, images: diceImages)
    }
    
     // @IBAction func rollPressed(_ sender: UIButton) {
     //  generateRandomDices()
    //shoryukenButtonTapped()}
    
     
     /*func generateRandomDices(){
     
     randomDiceIndexLeft = Int.random(in: 1..<(7))
     randomDiceIndexRight = Int.random(in: 1..<(7))
     imageViewDiceLeft.image = UIImage ( named: "dice\(randomDiceIndexLeft)")
     imageViewDiceRight.image = UIImage ( named: "dice\(randomDiceIndexRight)")
     }*/
}

