//
//  ViewController.swift
//  WidgetsKullanimi
//
//  Created by Bozkurt on 29.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var labelGirdi: UILabel!
    
    @IBOutlet weak var textFieldGirdi: UITextField!
    
    @IBOutlet weak var mSwitch: UISwitch!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var segmentedController: UISegmentedControl!
    
    @IBOutlet weak var labelSlider: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var labelStepper: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelSlider.text = String(Int(slider.value))
        labelStepper.text = String(Int(stepper.value))
        indicator.isHidden = true
    }


    @IBAction func buttonYap(_ sender: Any) {
        
        if let alinanVeri = textFieldGirdi.text {
            
            labelGirdi.text = alinanVeri
        }
    }
    
    
    @IBAction func buttonMutlu(_ sender: Any) {
        
        imageView.image = UIImage(named: "smile")
    }
    
    
    @IBAction func buttonUzgun(_ sender: Any) {
        
        imageView.image = UIImage(named: "mood")
    }
    
    
    @IBAction func switchDegisim(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch On")
        } else {
            print("Switch Off")
        }
        
    }
    
    @IBAction func segmentedDegisim(_ sender: UISegmentedControl) {
        
        let secilenIndex = sender.selectedSegmentIndex
        let secilenKategori = sender.titleForSegment(at: secilenIndex)
        print("Seçim : \(secilenKategori!)")
    }
    
    @IBAction func buttonGoster(_ sender: Any) {
        print("Switch durumu : \(mSwitch.isOn)")
        
        let secilenIndex = segmentedController.selectedSegmentIndex
        let secilenKategori = segmentedController.titleForSegment(at: secilenIndex)
        print("Seçim : \(secilenKategori!)")
        print("Slider Durum : \((slider.value))")
        print("Stepper Durum : \((stepper.value))")
    }
    
    
    @IBAction func sliderDegisim(_ sender: UISlider) {
        
        labelSlider.text = String(Int(sender.value))
    }
    
    
    @IBAction func stepperDegisim(_ sender: UIStepper) {
        labelStepper.text = String(Int(sender.value))
    }
    
    @IBAction func buttonBasla(_ sender: Any) {
        indicator.isHidden = false
        indicator.startAnimating()
    }
    
    @IBAction func buttonDur(_ sender: Any) {
        indicator.isHidden = true
        indicator.stopAnimating()
    }
    
}

