//
//  AnchorViewController.swift
//  Challenge3
//
//  Created by Seohyun Kim on 2023/10/08.
//

import UIKit

class AnchorViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let button = UIButton()
		button.setTitle("Button", for: .normal)
		button.setTitleColor(.white, for: .normal)
		button.backgroundColor = .black
		button.layer.cornerRadius = 10
		button.clipsToBounds = true
		view.addSubview(button)
		
		button.translatesAutoresizingMaskIntoConstraints = false
		// SafeArea 의 영역을 나타내주는 Guide
		let safeArea = view.safeAreaLayoutGuide
		
		button.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 16).isActive = true
		button.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -16).isActive = true
		let safeButtonAnchor = button.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor)
		
		safeButtonAnchor.isActive = true
		safeButtonAnchor.priority = .init(999)
		
		let viewButtonAnchor = button.bottomAnchor.constraint(lessThanOrEqualTo: view.bottomAnchor, constant: -20)
		viewButtonAnchor.isActive = true
		
		
	}
	
}
