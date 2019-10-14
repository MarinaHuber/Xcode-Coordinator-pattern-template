//
//  AppCoordinator.swift
//  test
//
//  Created by Marina Huber on 10/12/19.
//  Copyright © 2019 Marina Huber. All rights reserved.
//

import UIKit

class AppCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var presenter: UINavigationController

    init(navigationController: UINavigationController) {
        self.presenter = navigationController
		self.childCoordinators = []
    }

    func start() {
		let storyboard: UIStoryboard = UIStoryboard(name: "ViewController", bundle: nil)
		let vc = ViewController.initialize(from: storyboard)
		presenter.pushViewController(vc, animated: false)
	}
}
