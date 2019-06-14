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

        button.addTarget(self, action: #selector(toggleFadebuttonTapped), for: .touchUpInside)
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
    private let decelarationRateLabel: UILabel = {
        let label = UILabel()

        label.font = UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Decelaration Rate: 0.5"

        return label
    }()

    private let decelarationRateSlider: UISlider = UISlider()

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        configureColorPickerViewLayout()
        configureColorPickerViewStyling()

        configuredecelarationRateViews()
        configureToggleFadeButton()
    }

    // MARK: - Methods
    @objc private func toggleFadebuttonTapped() {
        colorPickerView.shouldFadeOutView = !colorPickerView.shouldFadeOutView
    }

    @objc private func handleDecelarationRateSlider(_ slider: UISlider) {
        colorPickerView.decelerationRate = UIScrollView.DecelerationRate(
            rawValue: UIScrollView.DecelerationRate.RawValue(slider.value)
        )

        decelarationRateLabel.text = "Decelaration Rate: \(slider.value)"
    }

    /// Configure your views style and properties for your own needs
    private func configureColorPickerViewStyling() {
        view.backgroundColor = .white
    }

    /// Set up layout constraints
    private func configureColorPickerViewLayout() {
        view.addSubview(colorPickerView)

        colorPickerView.translatesAutoresizingMaskIntoConstraints = false
        colorPickerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        colorPickerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        colorPickerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        colorPickerView.heightAnchor.constraint(equalToConstant: 64).isActive = true
    }

    private func configureToggleFadeButton() {
        view.addSubview(toggleFadeButton)

        toggleFadeButton.translatesAutoresizingMaskIntoConstraints = false
        toggleFadeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        toggleFadeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        toggleFadeButton.topAnchor.constraint(equalTo: decelarationRateSlider.bottomAnchor, constant: 32).isActive = true
        toggleFadeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

    private func configuredecelarationRateViews() {
        view.addSubview(decelarationRateLabel)
        view.addSubview(decelarationRateSlider)

        decelarationRateLabel.topAnchor.constraint(equalTo: colorPickerView.bottomAnchor, constant: 32).isActive = true
        decelarationRateLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true

        decelarationRateSlider.addTarget(self, action: #selector(handleDecelarationRateSlider), for: .allEvents)
        decelarationRateSlider.setValue(Float(colorPickerView.decelerationRate.rawValue), animated: false)

        decelarationRateSlider.translatesAutoresizingMaskIntoConstraints = false

        decelarationRateSlider.translatesAutoresizingMaskIntoConstraints = false
        decelarationRateSlider.topAnchor.constraint(equalTo: decelarationRateLabel.bottomAnchor, constant: 8).isActive = true
        decelarationRateSlider.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        decelarationRateSlider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        decelarationRateSlider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
    }
}
