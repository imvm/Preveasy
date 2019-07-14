//
// EnvioRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



struct EnvioRequest: Codable {

    /**  */
    var emailDestinatario: String
    /**  */
    var nomeDestinatario: String
    /**  */
    var emailRemetente: String
    /**  */
    var nomeRemetente: String
    /**  */
    var assunto: String
    /**  */
    var body: String
    /**  */
    var referencia: String
    /**  */
    var agendamento: String

    init(emailDestinatario: String, nomeDestinatario: String, emailRemetente: String, nomeRemetente: String, assunto: String, body: String, referencia: String, agendamento: String) {
        self.emailDestinatario = emailDestinatario
        self.nomeDestinatario = nomeDestinatario
        self.emailRemetente = emailRemetente
        self.nomeRemetente = nomeRemetente
        self.assunto = assunto
        self.body = body
        self.referencia = referencia
        self.agendamento = agendamento
    }

    enum CodingKeys: String, CodingKey { 
        case emailDestinatario = "EmailDestinatario"
        case nomeDestinatario = "NomeDestinatario"
        case emailRemetente = "EmailRemetente"
        case nomeRemetente = "NomeRemetente"
        case assunto = "Assunto"
        case body = "Body"
        case referencia = "Referencia"
        case agendamento = "Agendamento"
    }


}
