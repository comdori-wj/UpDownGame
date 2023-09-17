//
//  ViewController.swift
//  UpDownGame
//
//  Created by Wonji Ha on 2023/09/17.
//

import UIKit

class ViewController: UIViewController { // 클래스 안에 들어있는 함수 매서드 Method
    
    @IBOutlet weak var slider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        slider.setThumbImage(UIImage(named: "slider_thumb"), for: .normal)
        
        reset()
    }
    
    @IBAction func sliderValueChanged( _ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func touchUpHitButton(_ sender: UIButton) {
        print(slider.value)
    }
    
    @IBAction func touchUpResetButton(_ sender: UIButton) {
        print("touch up reset Button")
        reset()
    }
    
    private func reset() {
        print("reset!")
    }


}

