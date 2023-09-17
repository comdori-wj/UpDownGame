//
//  ViewController.swift
//  UpDownGame
//
//  Created by Wonji Ha on 2023/09/17.
//

import UIKit

class ViewController: UIViewController { // 클래스 안에 들어있는 함수 매서드 Method
    
    private var randomValue: Int = 0
    private var tryCount: Int = 0
    @IBOutlet weak private var slider: UISlider!
    @IBOutlet weak private var tryCountLabel: UILabel!
    @IBOutlet weak private var sliderValueLabel: UILabel!
    @IBOutlet weak private var minimumValueLabel: UILabel!
    @IBOutlet weak private var maximumValueLable: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        slider.setThumbImage(UIImage(named: "slider_thumb"), for: .normal)
        
        reset()
    }
    
    @IBAction func sliderValueChanged( _ sender: UISlider) {
        print(sender.value)
        let integerValue: Int = Int(sender.value)
        sliderValueLabel.text = String(integerValue)
    }
    
    @IBAction func touchUpHitButton(_ sender: UIButton) {
        print(slider.value)
        let hitValue: Int = Int(slider.value)
        slider.value = Float(hitValue)
        
        tryCount = tryCount + 1
        tryCountLabel.text = "\(tryCount) / 5" // 괄호안에 넣는 것을 문자열 보관법 이라함.
        
        if randomValue == hitValue {
            print("YOU HIT!!")
            reset()
            return
        } else if tryCount >= 5 {
            print("You lose...")
            reset()
            return
        } else if randomValue > hitValue {
            slider.minimumValue = Float(hitValue)
            minimumValueLabel.text = String(hitValue)
        } else {
            slider.maximumValue = Float(hitValue)
            maximumValueLable.text = String(hitValue)
        }
    }
    
    @IBAction func touchUpResetButton(_ sender: UIButton) {
        print("touch up reset Button")
        reset()
    }
    
    private func reset() {
        print("reset!")
        randomValue = Int.random(in: 0...30) // ... -> 범위 연산자 일종
        print(randomValue)
        tryCount = 0
        tryCountLabel.text = "0 / 5"
        slider.minimumValue = 0
        slider.maximumValue = 30
        slider.value = 15
        minimumValueLabel.text = "0"
        maximumValueLable.text = "30"
        sliderValueLabel.text = "15"
    }


}

