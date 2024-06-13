//
//  FilmlerHucre.swift
//  FilmlerApp
//
//  Created by Bozkurt on 2.05.2024.
//

import UIKit

protocol HucreProtocol {
    func sepeteEkleTiklandi(indexpath:IndexPath)
}

class FilmlerHucre: UICollectionViewCell {
    
    var hucreProtocol:HucreProtocol?
    var indexpath:IndexPath?
    
    @IBOutlet weak var imageViewFilm: UIImageView!
    @IBOutlet weak var labelFiyat: UILabel!
    
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        
        hucreProtocol?.sepeteEkleTiklandi(indexpath: indexpath!)
        
    }
}
