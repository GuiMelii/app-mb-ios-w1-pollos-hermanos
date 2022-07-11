//
//  AppMbIosW1PollosHermanosFaqsExampleModel.swift
//  AppMbIosW1PollosHermanos_Example
//
//  Created by ext_feteruel on 2022-07-11.
//  Copyright (c) 2022 Mercado Libre. All rights reserved
//
import Foundation

struct AppMbIosW1PollosHermanosFaqsExampleModel {
    let title: String
    var url: URL?

    init(title: String, urlString: String) {
        self.title = title
        if let url = URL(string: urlString) {
            self.url = url
        }
    }
}
