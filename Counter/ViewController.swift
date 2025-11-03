//
//  ViewController.swift
//  Counter
//
//  Created by Ульта on 12.02.2025.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak private var label: UILabel!
    @IBOutlet weak private var button: UIButton!
    
    @IBOutlet weak private var reset: UIButton!
    
    private var counter = 0 {
        didSet {
            // Сохраняем значение при каждом изменении
            saveCounter()
        }
    }
    
    // Ключ для сохранения в UserDefaults
    private let counterKey = "savedCounter"
    
    private let colors = [
        UIColor.systemRed,
        UIColor.systemGreen,
        UIColor.systemBlue,
        UIColor.systemYellow,
        UIColor.systemOrange,
        UIColor.systemPurple,
        UIColor.systemPink,
        UIColor.systemTeal
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Загружаем сохраненное значение при запуске
        loadCounter()
        updateCounter()
        changeBackground()
    }
    
    // MARK: - Сохранение состояния
    private func saveCounter() {
        UserDefaults.standard.set(counter, forKey: counterKey)
    }
    
    private func loadCounter() {
        counter = UserDefaults.standard.integer(forKey: counterKey)
    }
    
    @IBAction private func countInCrem(_ sender: Any) {
        counter += 1
        updateCounter()
        changeBackground()
    }
    
    
    private func updateCounter() {
        label.text = "\(counter)"
    }
    
    
    private func changeBackground() {
        let randomIndex = Int.random(in: 0..<colors.count)
        view.backgroundColor = colors[randomIndex]
    }
    
    
    @IBAction private func resetCount(_ sender: UIButton) {
        counter = 0
        updateCounter()
    }
    
}


