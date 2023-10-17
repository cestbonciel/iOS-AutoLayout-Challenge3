//
//  ViewController.swift
//  SelfSizing
//
//  Created by Seohyun Kim on 2023/10/17.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var tableView: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}


}

extension ViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 50
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
		cell.textLabel?.text = indexPath.description
		cell.detailTextLabel?.text = """
		 Lorem ipsum dolor sit er elit lamet,
		 consectetaur cillium adipisicing pecu,
		 sed do eiusmod tempor incididunt ut labore
		 et dolore magna aliqua.
		"""
		cell.detailTextLabel?.numberOfLines = 0
		cell.detailTextLabel?.textAlignment = .right
		cell.imageView?.image = UIImage(named: "\(indexPath.row % 3)")
		return cell
	}
}
