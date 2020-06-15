//
//  SentMemesTableViewController.swift
//  MemeMe1.0
//
//  Created by Khlood on 5/16/20.
//  Copyright © 2020 Khlood. All rights reserved.
//

import UIKit

class SentMemesTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var myTable: UITableView!
    
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
            myTable.reloadData()
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    // UITableView methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeTableViewCell")!
        cell.textLabel?.text = "\(memes[indexPath.row].topTextField) ... \(memes[indexPath.row].bottomTextField)"
        cell.imageView?.image = memes[indexPath.row].combinedImage
        cell.imageView?.contentMode = .scaleAspectFill
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "MemeDetailViewController") as! MemeDetailViewController
        detailController.detailImage =  memes[indexPath.row].combinedImage
        navigationController!.pushViewController(detailController, animated: true)
    }
}
