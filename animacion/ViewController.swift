//
//  ViewController.swift
//  dados
//
//  Created by Mac Mini on 22/12/18.
//  Copyright © 2018 Mac Mini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dadoDinamico: UIImageView!
    
    @IBOutlet weak var dadoDinamico2: UIImageView!
    
    var randomDiceIndexLeft : Int = 0
    var randomDiceIndexRight: Int = 0
    //var diceImages: [UIImage] = []
    var diceImages: [UIImage] = [#imageLiteral(resourceName: "dice1.png"),#imageLiteral(resourceName: "dice2.png"),#imageLiteral(resourceName: "dice3.png"),#imageLiteral(resourceName: "dice4.png"),#imageLiteral(resourceName: "dice5.png"),#imageLiteral(resourceName: "dice6.png")]
    var numeroDeImagenes : Int

    required init?(coder aDecoder: NSCoder) {
        numeroDeImagenes = diceImages.count // Hay que inicializar el valor del número de elementos del Arrayde imagenes
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateRandomDices() // genera que los dados no empiecen siempre con el mismo valor
    }
    
    // var prueba : [UIImage] = [#imageLiteral(resourceName: "dice5"),#imageLiteral(resourceName: "dice4")]
    
    //var imageArray: [UIImage] = [#imageLiteral(resourceName: "dice1.png"),#imageLiteral(resourceName: "dice2.png"),#imageLiteral(resourceName: "dice3.png"),#imageLiteral(resourceName: "dice4.png"),#imageLiteral(resourceName: "dice5.png"),#imageLiteral(resourceName: "dice6.png")]
    
    
    /*
    func createImageArray(total: Int, imagePrefix: String) -> [UIImage] {
     
     for imageCount in 0..<total {
     let imageName = "\(imagePrefix)\(imageCount+1)"
     let image = UIImage(named: imageName)!
     imageArray.append(image)
     }
     return imageArray
     }
     */
        
        
     // Animación del Array del Objeto ( el dado ) y Array de imagenes ( en este caso diceImages)
     func animate(imageView: UIImageView, images: [UIImage]) {
     imageView.animationImages = images
     imageView.animationDuration = 0.5
     imageView.animationRepeatCount = 2
     imageView.startAnimating()
     }
    
    
    
    @IBAction func diceShake(_ sender: UIButton) {
        animate(imageView: dadoDinamico, images: diceImages)
        animate(imageView: dadoDinamico2, images: diceImages)
        generateRandomDices()
    }
    
     
     func generateRandomDices(){
        randomDiceIndexLeft = Int.random(in: 1...numeroDeImagenes)  // genera un número aleatorio para cada dado
        randomDiceIndexRight = Int.random(in: 1...numeroDeImagenes) //
        //dadoDinamico.image = UIImage ( named: "dice\(randomDiceIndexLeft)")
        //dadoDinamico2.image = UIImage ( named: "dice\(randomDiceIndexRight)")
        
        dadoDinamico.image = diceImages[randomDiceIndexLeft]    // Muestra la imagen del Array
        dadoDinamico2.image = diceImages[randomDiceIndexRight]  // en la posición obtenida
     }
}

