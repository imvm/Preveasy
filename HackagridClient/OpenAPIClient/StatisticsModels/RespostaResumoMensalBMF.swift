//
// RespostaResumoMensalBMF.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

struct RespostaResumoMensalBMF: Codable {

    var value: [ResumoMensalBMF]?
    var odataContext: String?

    init(value: [ResumoMensalBMF]?, odataContext: String?) {
        self.value = value
        self.odataContext = odataContext
    }

    enum CodingKeys: String, CodingKey {
        case value
        case odataContext = "@odata.context"
    }
}

