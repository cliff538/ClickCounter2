//
//  ViewController.swift
//  ClickCounter
//
//  Created by Cliff Gurske on 11/3/17.
//  Copyright © 2017 Cliff Gurske. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	// MARK: - View Did Load
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	// MARK: - Outlets
	@IBOutlet weak var countLabel: UILabel!
	
	// MARK: - Properties
	var count = 0
	
	// MARK: - Interactions
	@IBAction func tapCounter(_ sender: UIButton) {
		increaseCount()
	}
	
	@IBAction func tapResetButton(_ sender: UIBarButtonItem) {
		count = 0
		countLabel.text = String(count)
	}
	
	@IBAction func tapOrHoldButton(_ sender: UIButton) {
		increaseCount()
	}
	
	@IBAction func subtractButton(_ sender: UIButton) {
		count -= 1
		countLabel.text = String(count)
	}
	
	@IBAction func longPressTapButton(_ sender: UILongPressGestureRecognizer) {
		increaseCount()
	}
	
	
	// MARK: - Functions
	func increaseCount() {
		count += 1
		countLabel.text = String(count)
	}
	
	


}

