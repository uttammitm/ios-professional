//
//  DummyViewController.swift
//  Bankey
//
//  Created by Sonika Patel on 06/04/25.
//
import UIKit
class DummyViewController: UIViewController {
    
    let stackView = UIStackView()
    let Label = UILabel()
    let logoutButton = UIButton(type: .system)
    weak var logoutDelegate: LogoutDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension DummyViewController {
    func style() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        
        Label.translatesAutoresizingMaskIntoConstraints = false
        Label.text = "Welcome"
        Label.font = UIFont.preferredFont(forTextStyle: .title1)
        
        logoutButton.translatesAutoresizingMaskIntoConstraints = false
        logoutButton.setTitle("Logout", for: [])
        logoutButton.addTarget(self, action: #selector(logoutButtonPressed), for: .primaryActionTriggered)
    }
    
    func layout() {
        stackView.addArrangedSubview(Label)
        stackView.addArrangedSubview(logoutButton)
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            
        ])
    }
    @objc func logoutButtonPressed(sender: UIButton) {
        logoutDelegate?.didLogout()
    }
}
