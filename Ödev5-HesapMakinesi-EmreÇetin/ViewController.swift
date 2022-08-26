//
//  ViewController.swift
//  Ödev5-HesapMakinesi-EmreÇetin
//
//  Created by EMRE on 23.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var islem = ""
    var ilkSayi:Double?
    var sonuc:Double?
    
    
    @IBOutlet weak var islemEkrani: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var yeniIslem = true
    func rakamEkle(rakam:String) {
        var sayi = String(islemEkrani.text!)
        if yeniIslem {
            sayi = ""
            yeniIslem = false
            
        }
        sayi = sayi + rakam
        islemEkrani.text = sayi
    }
    
    @IBAction func button0(_ sender: Any) {
        rakamEkle(rakam: "0")
    }
    @IBAction func button1(_ sender: Any) {
        rakamEkle(rakam: "1")
    }
    @IBAction func button2(_ sender: Any) {
        rakamEkle(rakam: "2")
    }
    @IBAction func button3(_ sender: Any) {
        rakamEkle(rakam: "3")
    }
    @IBAction func button4(_ sender: Any) {
        rakamEkle(rakam: "4")
    }
    @IBAction func button5(_ sender: Any) {
        rakamEkle(rakam: "5")
    }
    @IBAction func button6(_ sender: Any) {
        rakamEkle(rakam: "6")
    }
    @IBAction func button7(_ sender: Any) {
        rakamEkle(rakam: "7")
    }
    @IBAction func button8(_ sender: Any) {
        rakamEkle(rakam: "8")
    }
    @IBAction func button9(_ sender: Any) {
        rakamEkle(rakam: "9")
    }
    @IBAction func buttonNokta(_ sender: Any) {
        rakamEkle(rakam: ".")
    }

    @IBAction func buttonTemizle(_ sender: Any) {
        islemEkrani.text = "0"
        yeniIslem = true
    }
   
    @IBAction func buttonCikart(_ sender: Any) {
        islem = "-"
        ilkSayi = Double(islemEkrani.text!)
        yeniIslem = true
    }
    @IBAction func buttonTopla(_ sender: Any) {
        islem = "+"
        ilkSayi = Double(islemEkrani.text!)
        yeniIslem = true
    }
    
    @IBAction func buttonEsit(_ sender: Any) {
        let ikinciSayi = Double(islemEkrani.text!)
        
        switch islem {
        case "+":
            sonuc = ilkSayi! + ikinciSayi!
        case"-":
            sonuc = ilkSayi! - ikinciSayi!
        default:
            sonuc = 0
        }
        let yuvarlanmışSayı = round(sonuc! * 1000) / 1000.0
        islemEkrani.text = String(yuvarlanmışSayı)
        yeniIslem = true
    }
}


