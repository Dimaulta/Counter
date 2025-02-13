//
//  ViewController.swift
//  Counter
//
//  Created by Ульта on 12.02.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var reset: UIButton!
    
    var counter = 0              // первоначальное значение
    var colors = [
            UIColor.systemRed,
            UIColor.systemGreen,
            UIColor.systemBlue,
            UIColor.systemYellow,
            UIColor.systemOrange,
            UIColor.systemPurple,
            UIColor.systemPink,
            UIColor.systemTeal
        ]                       // букет цветов
    
    override func viewDidLoad() {
        super.viewDidLoad()     // наследуем из суперкласса
        updateCounter()         // вызываем изменения
        changeBackground()      // перебираем цвета
    }
 
    
    @IBAction func countInCrem(_ sender: Any) {
        counter += 1            // инкремент
        updateCounter()
        changeBackground()      // и тут перебираем цвета
    }
    
    // апдейтим счётчик
    func updateCounter() {
            label.text = "\(counter)"
        }

    // а что если нам рандомные цвета добавить?
    func changeBackground() {
            let randomIndex = Int.random(in: 0..<colors.count)
            view.backgroundColor = colors[randomIndex]
        }
    
    // а что если добавить сброс?
    @IBAction func resetCount(_ sender: UIButton) {
         counter = 0
         updateCounter()
     }
    
}


