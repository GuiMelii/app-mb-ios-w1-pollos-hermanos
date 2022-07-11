//
//  AppMbIosW1PollosHermanosFaqsExampleViewController.swift
//  AppMbIosW1PollosHermanos_Example
//
//  Created by ext_feteruel on 2022-07-11.
//  Copyright (c) 2022 Mercado Libre. All rights reserved
//

import UIKit

class AppMbIosW1PollosHermanosFaqsExampleViewController: UIViewController {
    @IBOutlet private var tableView: UITableView!
    weak var coordinator: AppMbIosW1PollosHermanosExampleAppCoordinator?
    private lazy var presenter = AppMbIosW1PollosHermanosFaqsExamplePresenter(delegate: self)

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter.setExampleFaqs()
        self.setupView()
    }

    func setupView() {
        self.title = "FAQS"
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.tableFooterView = UIView(frame: .zero)

        let barButtonItem = UIBarButtonItem(title: "Faqs", style: .plain, target: self, action: #selector(faqsTapped))
        self.navigationController?.navigationItem.rightBarButtonItem = barButtonItem
    }

    @objc
    func faqsTapped() {
        self.coordinator?.goToFaqs()
    }
}

extension AppMbIosW1PollosHermanosFaqsExampleViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.presenter.getNumberOfRows()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        cell.textLabel?.text = self.presenter.getExampleFaqsTitle(index: indexPath.row)
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let url = self.presenter.getExampleFaqsURL(index: indexPath.row) else { return }
        UIApplication.shared.open(url, options: [:])
    }
}

extension AppMbIosW1PollosHermanosFaqsExampleViewController: AppMbIosW1PollosHermanosFaqsExampleDelegate {
    func willLoadTable() {
        self.tableView.reloadData()
    }
}
