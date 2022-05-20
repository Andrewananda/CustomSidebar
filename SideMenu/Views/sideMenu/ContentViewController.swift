//
//  ContentViewController.swift
//  SideMenu
//
//  Created by Andrew Ananda on 20/05/2022.
//

import UIKit

class ContentViewController: UIViewController {

    weak var delegate: SideMenuDelegate?
    private var barButtonImage: UIImage?
    
    convenience init(barButtonImage: UIImage?) {
        self.init()
        self.barButtonImage = barButtonImage
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
  
    private func configureView() {
        let barButtonItem = UIBarButtonItem(image: barButtonImage, style: .plain, target: self, action: #selector(menuTapped))
        barButtonItem.tintColor = .white
        navigationItem.setLeftBarButton(barButtonItem, animated: false)
    }

    @objc private func menuTapped() {
        delegate?.menuButtonTapped()
    }
}
