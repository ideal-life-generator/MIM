//
//  SearchController.swift
//  MIM
//
//  Created by vlad2018 on 10/29/17.
//  Copyright © 2017 ideallifegenerator. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  var cachedSongs = [CachedSong]()
  
  @IBOutlet weak var searchTextField: UITextField!
  @IBOutlet weak var tableView: UITableView!
  @IBOutlet weak var tableHeight: NSLayoutConstraint!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    cachedSongs += [
      CachedSong(name: "First"),
      CachedSong(name: "Second"),
      CachedSong(name: "Third"),
      CachedSong(name: "Fourth"),
    ]
  }

  @IBAction func onSearchTextFieldChange(_ textField: UITextField) {
    print(textField.text ?? "")
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return cachedSongs.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "CachedSongCell")

    cell.textLabel?.text = cachedSongs[indexPath.row].name

    return cell
  }
  
  override func viewWillLayoutSubviews() {
    super.updateViewConstraints()

    tableHeight?.constant = tableView.contentSize.height
  }
}
