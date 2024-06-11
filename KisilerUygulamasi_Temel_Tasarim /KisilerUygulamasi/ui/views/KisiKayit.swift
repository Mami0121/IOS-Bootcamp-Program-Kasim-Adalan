//
//  KisiKayit.swift
//  KisilerUygulamasi
//
//

import UIKit

class KisiKayit: UIViewController {
    
    
    @IBOutlet weak var tfKisiAd: UITextField!
    @IBOutlet weak var tfKisiTel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonkaydet(_ sender: Any) {
        if let ka = tfKisiAd.text , let kt = tfKisiTel.text {
            kaydet(kisi_ad: ka, kisi_tel: kt)
        }
    }
    
    func kaydet(kisi_ad:String, kisi_tel:String){
        print("Kisi adı : \(kisi_ad) ve kişi tel : \(kisi_tel)")
        
    }
    
}
