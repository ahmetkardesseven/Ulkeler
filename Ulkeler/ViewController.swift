//
//  ViewController.swift
//  Ulkeler
//
//  Created by ahmet kardesseven on 29.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ulkelerCollectionView: UICollectionView!
    var ulkelerListesi = [Ulkeler]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let u1 = Ulkeler(id: 1, ad: "Türkiye", baskent: "Ankara")
        let u2 = Ulkeler(id: 2, ad: "Fransa", baskent: "Paris")
        let u3 = Ulkeler(id: 3, ad: "İtalya", baskent: "Roma")
        let u4 = Ulkeler(id: 4, ad: "İngiltere", baskent: "Londra")
        let u5 = Ulkeler(id: 5, ad: "Japonya", baskent: "Tokyo")
        ulkelerListesi.append(u1)
        ulkelerListesi.append(u2)
        ulkelerListesi.append(u3)
        ulkelerListesi.append(u4)
        ulkelerListesi.append(u5)
    }
}
extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ulkelerListesi.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let hucre = collectionView.dequeueReusableCell(withReuseIdentifier: "ulkeHucre", for: indexPath) as! UlkeCollectionViewCell
        let ulke = ulkelerListesi[indexPath.row]
        hucre.ulkeLabel.text = ulke.ad
        
        return hucre
    }
    
    
    
}
