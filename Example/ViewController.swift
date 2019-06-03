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

    private let toggleFadeButton: UIButton = {
        let button = UIButton(type: .roundedRect)

        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.setTitle("Toggle Fade", for: UIControl.State.normal)

        button.backgroundColor = .black
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .semibold)

        button.contentEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)

        button.layer.cornerRadius = 12
        button.layer.shadowOpacity = 0.75
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 0, height: 4)
        button.layer.shadowRadius = 6

        return button
    }()

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        configureColorPickerViewLayout()
        configureColorPickerViewStyling()

        configureToggleFadeButton()
    }

    @objc func buttonTapped() {
        colorPickerView.shouldFadeOutView = !colorPickerView.shouldFadeOutView
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

    /// Set up layout constraints
    private func configureToggleFadeButton() {
        view.addSubview(toggleFadeButton)

        toggleFadeButton.translatesAutoresizingMaskIntoConstraints = false
        toggleFadeButton.topAnchor.constraint(equalTo: colorPickerView.bottomAnchor, constant: 32).isActive = true
        toggleFadeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

    /// Configure your views style and properties for your own needs
    private func configureColorPickerViewStyling() {
        view.backgroundColor = .white
    }

}
