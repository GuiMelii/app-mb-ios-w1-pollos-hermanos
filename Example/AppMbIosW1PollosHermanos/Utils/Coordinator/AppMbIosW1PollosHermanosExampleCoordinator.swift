//
//  AppMbIosW1PollosHermanosExampleCoordinator.swift
//  AppMbIosW1PollosHermanos_Example
//
//  Created by ext_feteruel on 2022-07-11.
//  Copyright (c) 2022 Mercado Libre. All rights reserved
//

import UIKit

protocol AppMbIosW1PollosHermanosExampleCoordinator {
    var childCoordinators: [AppMbIosW1PollosHermanosExampleCoordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}
