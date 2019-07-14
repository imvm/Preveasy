// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let modeloProposta = try? newJSONDecoder().decode(ModeloProposta.self, from: jsonData)

import Foundation

// MARK: - ModeloProposta
struct ProposalModelsResponse: Codable {
    let valor: [ProposalModelValue]
    let mensagens: [JSONAny]
    let houveErrosDuranteProcessamento: Bool
    
    enum CodingKeys: String, CodingKey {
        case valor = "Valor"
        case mensagens = "Mensagens"
        case houveErrosDuranteProcessamento = "HouveErrosDuranteProcessamento"
    }
}

// MARK: - ProposalModelValue
struct ProposalModelValue: Codable {
    let id, nome, descricaoModeloProposta, dataUltimaAlteracao: String
    let namespace: String
    let formasPagamento: [CanalComercializacao]
    let diasVencimento: [JSONAny]
    let periodicidades: [CanalComercializacao]
    let ticketMinimo: Int
    let politicaValidacao: String
    let canalComercializacao, grupo: CanalComercializacao
    let produtos: [Produto]
    let politicaAceitacao: PoliticaAceitacao
    let questionarios: [JSONAny]
}

// MARK: - CanalComercializacao
struct CanalComercializacao: Codable {
    let id: Int?
    let descricao: String
}

// MARK: - PoliticaAceitacao
struct PoliticaAceitacao: Codable {
    let id: Int
    let dataUltimaAlteracao: String
    let imcMinimoRecusa, imcMaximoRecusa, imcMinimoExame, imcMaximoExame: Int
    let cigarrosRecusa, cigarrosExame: Int
    let limitesOperacionaisPorProfissao: [LimitesOperacionaisPorProfissao]
    let limitesOperacionaisPorRenda, limitesOperacionaisPorFaixaEtaria: [LimitesOperacionaisPor]
}

// MARK: - LimitesOperacionaisPor
struct LimitesOperacionaisPor: Codable {
    let causa: String
    let idadeInicial, idadeFinal: Int?
    let valorMaximoCapitalSegurado, multiploRenda: Int?
}

// MARK: - LimitesOperacionaisPorProfissao
struct LimitesOperacionaisPorProfissao: Codable {
    let causa: String
    let profissaoID, valorMaximoCapitalSegurado: Int
    
    enum CodingKeys: String, CodingKey {
        case causa
        case profissaoID = "profissaoId"
        case valorMaximoCapitalSegurado
    }
}

// MARK: - Produto
struct Produto: Codable {
    let id: Int
    let descricao, descricaoComercial, dataUltimaAlteracao: String
    let coberturas: [Cobertura]
    let dependenciasProdutos: [JSONAny]
    let fundos: [Fundo]
    let periodicidades: [CanalComercializacao]
    let tipoProponente: CanalComercializacao
    let idadeMinima, idadeMaxima, idadeExclusao: Int?
    let indicarBeneficiario, exigeDPS: Bool
    let prazoCerto: [JSONAny]
    let prazoRenda: [PrazoRenda]
    let profissoesAceitas, profissoesRecusadas, ufsRecusadas, prazoDecrescimo: [JSONAny]
    let idadeAntecipacao, tempoAntecipacao: [JSONAny]
    let formasPagamento: [CanalComercializacao]
}

// MARK: - Cobertura
struct Cobertura: Codable {
    let id, itemProdutoID: Int
    let descricao, descricaoComercial: String
    let obrigatoria: Bool
    let prazoCerto: [JSONAny]
    let prazoRenda: [PrazoRenda]
    let tipo, tipoRelacaoSegurado: CanalComercializacao
    let idadeEntrada, idadeSaida, idadeExclusao: Int?
    let indicarBeneficiario: Bool
    let valorFixo: Double?
    let capitalFixo: Int?
    let causas: [CanalComercializacao]?
    let coberturaPrincipal, exigeDPS: Bool
    let fundos: [Fundo]
    let profissoesRecusadas, ufsRecusadas, prazoDecrescimo, idadeAntecipacao: [JSONAny]
    let tempoAntecipacao: [JSONAny]
    let dependenciasCoberturaProdutos: [DependenciasCoberturaProduto]
    let valorMinimoCapitalContratacao, valorLimiteCapitalReferencia: JSONNull?
    let codigo, vlContrib, vlCobertura: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case itemProdutoID = "itemProdutoId"
        case codigo = "CODIGO"
        case vlContrib = "VL_CONTRIB"
        case vlCobertura = "VL_COBERTURA"
        case descricao, descricaoComercial, obrigatoria, prazoCerto, prazoRenda, tipo, tipoRelacaoSegurado, idadeEntrada, idadeSaida, idadeExclusao, indicarBeneficiario, valorFixo, capitalFixo, causas, coberturaPrincipal, exigeDPS, fundos, profissoesRecusadas, ufsRecusadas, prazoDecrescimo, idadeAntecipacao, tempoAntecipacao, dependenciasCoberturaProdutos, valorMinimoCapitalContratacao, valorLimiteCapitalReferencia
    }
}

// MARK: - DependenciasCoberturaProduto
struct DependenciasCoberturaProduto: Codable {
    let itemProdutoID, tipo: Int
    let percentualMinimoReferencia: Int?
    let percentualMaximoReferencia: JSONNull?
    
    enum CodingKeys: String, CodingKey {
        case itemProdutoID = "itemProdutoId"
        case tipo, percentualMinimoReferencia, percentualMaximoReferencia
    }
}

// MARK: - Fundo
struct Fundo: Codable {
    let id: Int
    let cnpj: JSONNull?
    let sigla, nomeFantasia: String
    let percentualRendaVariavel: Int
    let codigo, nome, pcContrib, pcAporte: String?
    let pcPortab: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case cnpj = "cnpj"
        case sigla = "sigla"
        case nomeFantasia = "nomeFantasia"
        case percentualRendaVariavel = "percentualRendaVariavel"
        case codigo = "CODIGO"
        case nome = "NOME"
        case pcContrib = "PC_CONTRIB"
        case pcAporte = "PC_APORTE"
        case pcPortab = "PC_PORTAB"
    }
}

// MARK: - PrazoRenda
struct PrazoRenda: Codable {
    let id: Int
    let descricao: Descricao
    let valorMinimo, valorMaximo: Int
}

enum Descricao: String, Codable {
    case rendaPorPrazoCerto = "RENDA POR PRAZO CERTO"
    case rendaTemporária = "RENDA TEMPORÁRIA"
    case rendaVitalícia = "RENDA VITALÍCIA"
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {
    
    static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }
    
    var hashValue: Int {
        return 0
    }
    
    init() {}
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String
    
    required init?(intValue: Int) {
        return nil
    }
    
    required init?(stringValue: String) {
        key = stringValue
    }
    
    var intValue: Int? {
        return nil
    }
    
    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {
    
    let value: Any
    
    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }
    
    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }
    
    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }
    
    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }
    
    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }
    
    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }
    
    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }
    
    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }
    
    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }
    
    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }
    
    required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }
    
    func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}
