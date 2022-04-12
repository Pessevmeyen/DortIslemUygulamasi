//
//  ViewController.swift
//  DortIslemUygulamasi
//
//  Created by Furkan Eruçar on 22.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ilkText: UITextField!
    
    @IBOutlet weak var ikinciText: UITextField!
    
    @IBOutlet weak var sonucLabel: UILabel!
    
    var sonuc = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func toplamaClicked(_ sender: Any) {
        
       // let ilkSayi = Int(ilkText.text!)! İlk ! "Forced Unwrap" kullanmamızın sebebi kullanıcıdan aldığımız değerin int'e çevrileceğinden emin olduğumuzu söylüyor. İkinci !'i yazmazsak eğer program bize hata vericek çünkü kullanıcının girdiği değer nil, boşluk veya string olabilir. Biz de kesinlikle int'e çevrilip işlem yapılabilecek diye uygulamaya taahhüt veriyoruz. Ama kullanıcı illa sayı dışında değer girebilir. O zaman fatal error alıp uygulama kapanır. Bundan kurtulmak için if let kullanabiliriz
        
        if let ilkSayi = Int(ilkText.text!) {
            if let ikinciSayi = Int(ikinciText.text!) {
                sonuc = ilkSayi + ikinciSayi
                
                sonucLabel.text = String(sonuc)
                
            }
        }
   
        
    }
    
    @IBAction func cikarmaClicked(_ sender: Any) {
        
        if let ilkSayi = Int(ilkText.text!) {
            if let ikinciSayi = Int(ikinciText.text!) {
                sonuc = ilkSayi - ikinciSayi
                
                sonucLabel.text = String(sonuc)
            }
        }
        
    }
    
    @IBAction func carpmaClicked(_ sender: Any) {
        
        if let ilkSayi = Int(ilkText.text!) {
            if let ikinciSayi = Int(ikinciText.text!) {
                sonuc = ilkSayi * ikinciSayi
                
                sonucLabel.text = String(sonuc)
            }
        }
    }
    
    @IBAction func bolmeClicked(_ sender: Any) {
        
        if let ilkSayi = Int(ilkText.text!) {
            if let ikinciSayi = Int(ikinciText.text!) {
                sonuc = ilkSayi / ikinciSayi
                
                sonucLabel.text = String(sonuc)
            }
        }
    }
    

}

