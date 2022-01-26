//
//  AlbumViewModel.swift
//  SimpleLogin
//
//  Created by Bayu Triharyanto on 26/01/22.
//

import Foundation

class AlbumViewModel{
    var albums = [ResultAlbum]()
    
    func downloadJSON(completed: @escaping () -> ()){
        
        let url = URL(string: "https://jsonplaceholder.typicode.com/photos")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            if error == nil {
                do {
                    self.albums = try JSONDecoder().decode([ResultAlbum].self, from: data!)
                    DispatchQueue.main.async {
                        completed()
                    }
                    
                } catch{
                    print("JSON Error")
                }
            }
            
        }.resume()
        
        
    }
}
