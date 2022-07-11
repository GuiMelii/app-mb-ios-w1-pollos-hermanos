//
//  AppMbIosW1PollosHermanosExampleAppCoordinator.swift
//  AppMbIosW1PollosHermanos_Example
//
//  Created by ext_feteruel on 2022-07-11.
//  Copyright (c) 2022 Mercado Libre. All rights reserved
//

import UIKit

class AppMbIosW1PollosHermanosExampleAppCoordinator: AppMbIosW1PollosHermanosExampleCoordinator {
    var childCoordinators = [AppMbIosW1PollosHermanosExampleCoordinator]()
    var navigationController: UINavigationController
    var menuOpened = false

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let viewController = AppMbIosW1PollosHermanosExampleViewController()
        viewController.coordinator = self
        self.navigationController.pushViewController(viewController, animated: true)
    }

    func goToHome() {
        self.navigationController.popToRootViewController(animated: true)
    }

    func goToBack() {
        self.navigationController.popViewController(animated: false)
    }

    func goToFaqs() {
        let viewController = AppMbIosW1PollosHermanosFaqsExampleViewController()
        viewController.coordinator = self
        self.navigationController.pushViewController(viewController, animated: true)
    }

    func gotToController(_ viewController: UIViewController) {
        self.navigationController.pushViewController(viewController, animated: false)
    }
}
