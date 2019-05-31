//
//  ViewController.swift
//  Example
//
//  Created by Alexandru Turcanu on 31 May 2019.
//  Copyright © 2019 PickerKit. All rights reserved.
//

import UIKit
import PickerKit

// MARK: - ViewController

/// The ViewController
class ViewController: UIViewController {
    // MARK: - Properties
    private let colorPickerView = PickerView(colorEntries:
        [UIColor.red, UIColor.blue, UIColor.purple, UIColor.orange, UIColor.green,
         UIColor.red, UIColor.blue, UIColor.purple, UIColor.orange, UIColor.green]
    )

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        configureColorPickerViewLayout()
    }

    // MARK: - Methods

    /// Set up layout constraints
    private func configureColorPickerViewLayout() {
        view.addSubview(colorPickerView)

        colorPickerView.translatesAutoresizingMaskIntoConstraints = false
        colorPickerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        colorPickerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        colorPickerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        colorPickerView.heightAnchor.constraint(equalToConstant: 64).isActive = true
    }

    /// Configure your views style and properties for your own needs
    private func configureColorPickerViewStyling() {
        colorPickerView.backgroundColor = .white
        view.backgroundColor = .gray
    }

}
