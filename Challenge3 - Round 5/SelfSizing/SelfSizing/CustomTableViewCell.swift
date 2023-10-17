//
//  CustomTableViewCell.swift
//  SelfSizing
//
//  Created by Seohyun Kim on 2023/10/17.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
	
	var cellImageView: UIImageView!
	var titleLabel: UILabel!
	var postLabel: UILabel!
	
	override func awakeFromNib() {
		super.awakeFromNib()
		cellImageView = UIImageView()
		cellImageView.translatesAutoresizingMaskIntoConstraints = false
		contentView.addSubview(cellImageView)
		
		titleLabel = UILabel()
		titleLabel.translatesAutoresizingMaskIntoConstraints = false
		titleLabel.font = UIFont.preferredFont(forTextStyle: .title2)
		titleLabel.textColor = .black
		
		postLabel = UILabel()
		postLabel.translatesAutoresizingMaskIntoConstraints = false
		postLabel.font = UIFont.preferredFont(forTextStyle: .body)
		postLabel.adjustsFontForContentSizeCategory = true
		postLabel.textColor = .darkGray
		postLabel.numberOfLines = 0
		
		let stackView = UIStackView(arrangedSubviews: [titleLabel, postLabel])
		stackView.alignment = .fill
		stackView.distribution = .fill
		stackView.spacing = 8
		stackView.axis = .vertical
		stackView.translatesAutoresizingMaskIntoConstraints = false
		contentView.addSubview(stackView)
		
		NSLayoutConstraint.activate([
			cellImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
			cellImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
			cellImageView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.2),
			cellImageView.widthAnchor.constraint(equalTo:cellImageView.heightAnchor),
			cellImageView.bottomAnchor.constraint(lessThanOrEqualTo: contentView.bottomAnchor),
			stackView.leadingAnchor.constraint(equalTo: cellImageView.trailingAnchor, constant: 8),
			stackView.topAnchor.constraint(equalTo:cellImageView.topAnchor),
			stackView.trailingAnchor.constraint(equalTo:contentView.trailingAnchor),
			stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
		])
	}
	
	override func setSelected(_ selected: Bool, animated: Bool) {
		super.setSelected(selected, animated: animated)
		
		// Configure the view for the selected state
	}
	
}
