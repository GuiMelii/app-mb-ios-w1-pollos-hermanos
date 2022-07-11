//
//  AppMbIosW1PollosHermanosFaqsExamplePresenter.swift
//  AppMbIosW1PollosHermanos_Example
//
//  Created by ext_feteruel on 2022-07-11.
//  Copyright (c) 2022 Mercado Libre. All rights reserved
//

import UIKit

protocol AppMbIosW1PollosHermanosFaqsExampleDelegate: AnyObject {
    func willLoadTable()
}

class AppMbIosW1PollosHermanosFaqsExamplePresenter {
    private weak var delegate: AppMbIosW1PollosHermanosFaqsExampleDelegate?
    private var exampleFaqsItems: [AppMbIosW1PollosHermanosFaqsExampleModel?]

    init(delegate: AppMbIosW1PollosHermanosFaqsExampleDelegate) {
        self.delegate = delegate
        self.exampleFaqsItems = [AppMbIosW1PollosHermanosFaqsExampleModel]()
    }

    func setExampleFaqs() {
        let faqs = [
            "Documentacion de arquitectura": "https://sites.google.com/mercadolibre.com/mobile/home?authuser=0",
            "Quiero arrancar un proyecto": "https://sites.google.com/mercadolibre.com/mobile/quiero-arrancar-un-proyecto",
            "Requerimientos para subir a producción": "https://sites.google.com/mercadolibre.com/mobile/quiero-arrancar-un-proyecto/requerimientos-para-prod?authuser=0",
            "Guías de migración": "https://sites.google.com/mercadolibre.com/mobile/arquitectura/gu%C3%ADas-de-migración?authuser=0",
            "Fechas especiales y freezes": "https://sites.google.com/mercadolibre.com/mobile/releases/fechas-especiales-y-freezes?authuser=0"
        ]

        self.exampleFaqsItems = faqs.map {
            return AppMbIosW1PollosHermanosFaqsExampleModel(title: $0, urlString: $1)
        }
        self.delegate?.willLoadTable()
    }

    func getNumberOfRows() -> Int {
        return self.exampleFaqsItems.count
    }

    func getExampleFaqsTitle(index: Int) -> String? {
        let exampleItem = self.exampleFaqsItems[index]
        return exampleItem?.title
    }

    func getExampleFaqsURL(index: Int) -> URL? {
        let exampleItem = self.exampleFaqsItems[index]
        return exampleItem?.url
    }
}
