//
//  FilmHucreCollectionViewCell.swift
//  FilmlerUygulamasi
//
//  Created by Şimal Çeler on 29.03.2023.
//

import UIKit

protocol FilmHucreCollectionViewCellProtocol {
    func sepeteEkle(indexPath:IndexPath)
        
}

class FilmHucreCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewFilmResim: UIImageView!
    
    
    @IBOutlet weak var labelFilmAdi: UILabel!
    
    @IBOutlet weak var labelFilmFiyat: UILabel!
    
    var hucreProtocol:FilmHucreCollectionViewCellProtocol?
    var indexPath:IndexPath?
    
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        
        hucreProtocol?.sepeteEkle(indexPath: indexPath!)
    }
}
