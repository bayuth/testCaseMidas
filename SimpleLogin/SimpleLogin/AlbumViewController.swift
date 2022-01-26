//
//  ViewController.swift
//  SimpleLogin
//
//  Created by Bayu Triharyanto on 26/01/22.
//

import UIKit

class AlbumViewController: UIViewController {
    
    let albumVM = AlbumViewModel()
//    let baseUrl
    
    @IBOutlet weak var albumTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        albumTableView.delegate = self
        albumTableView.dataSource = self
        let nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        albumTableView.register(nib, forCellReuseIdentifier: "CustomTableViewCell")
        
        albumVM.downloadJSON{
            DispatchQueue.main.async {
                self.albumTableView.reloadData()
            }
        }
    }


}

extension AlbumViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return albumVM.albums.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        cell.cellLabel.text = "\(albumVM.albums[indexPath.row].albumId) - \(albumVM.albums[indexPath.row].title)"
         var url = albumVM.albums[indexPath.row].url
        cell.cellImageView.downloaded(from: url)
        return cell
    }
    
    
}

