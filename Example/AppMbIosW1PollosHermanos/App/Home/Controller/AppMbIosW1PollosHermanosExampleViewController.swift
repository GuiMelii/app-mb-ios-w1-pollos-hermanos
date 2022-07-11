//
//  AppMbIosW1PollosHermanosExampleViewController.swift
//  AppMbIosW1PollosHermanos_Example
//
//  Created by ext_feteruel on 2022-07-11.
//  Copyright (c) 2022 Mercado Libre. All rights reserved
//

import UIKit

class AppMbIosW1PollosHermanosExampleViewController: UIViewController {
    @IBOutlet private var tableView: UITableView!
    weak var coordinator: AppMbIosW1PollosHermanosExampleAppCoordinator?
    private lazy var presenter = AppMbIosW1PollosHermanosExamplePresenter(delegate: self)

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter.setExampleViewControllers()
        self.setupView()
    }

    func setupView() {
        self.title = "AppMbIosW1PollosHermanos"
        self.tableView.dataSource = self
        self.tableView.tableFooterView = UIView(frame: .zero)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Faqs", style: .plain, target: self, action: #selector(faqsTapped))
    }

    @objc
    func faqsTapped() {
        self.coordinator?.goToFaqs()
    }
}

extension AppMbIosW1PollosHermanosExampleViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.presenter.getNumberOfRows()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        cell.textLabel?.text = self.presenter.getExampleTitle(index: indexPath.row)
        return cell
    }
}

extension AppMbIosW1PollosHermanosExampleViewController: AppMbIosW1PollosHermanosExampleDelegate {
    func willLoadTable() {
        self.tableView.reloadData()
    }
}
