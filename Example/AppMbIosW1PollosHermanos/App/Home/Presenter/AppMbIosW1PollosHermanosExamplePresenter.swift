//
//  AppMbIosW1PollosHermanosExamplePresenter.swift
//  AppMbIosW1PollosHermanos_Example
//
//  Created by ext_feteruel on 2022-07-11.
//  Copyright (c) 2022 Mercado Libre. All rights reserved
//

import UIKit

protocol AppMbIosW1PollosHermanosExampleDelegate: AnyObject {
    func willLoadTable()
}

class AppMbIosW1PollosHermanosExamplePresenter {
    private weak var delegate: AppMbIosW1PollosHermanosExampleDelegate?
    private var exampleItems: [AppMbIosW1PollosHermanosExampleModel?]

    init(delegate: AppMbIosW1PollosHermanosExampleDelegate) {
        self.delegate = delegate
        self.exampleItems = [AppMbIosW1PollosHermanosExampleModel]()
    }

    func setExampleViewControllers() {
        self.exampleItems.append(AppMbIosW1PollosHermanosExampleModel(title: "Item 1", controller: UIViewController()))
        self.exampleItems.append(AppMbIosW1PollosHermanosExampleModel(title: "Item 2", controller: UIViewController()))
        self.exampleItems.append(AppMbIosW1PollosHermanosExampleModel(title: "Item 3", controller: UIViewController()))
        self.delegate?.willLoadTable()
    }

    func getNumberOfRows() -> Int {
        return self.exampleItems.count
    }

    func getExampleTitle(index: Int) -> String? {
        let exampleItem = self.exampleItems[index]
        return exampleItem?.title
    }
}
