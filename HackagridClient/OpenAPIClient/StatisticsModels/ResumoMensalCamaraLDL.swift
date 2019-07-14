//
// ResumoMensalCamaraLDL.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Tipo usado nos conjuntos CETIP e BMFBOVESPAAcoes. */

struct ResumoMensalCamaraLDL: Codable {

    /** Mês/Ano de referência no formato mmm/aaaa */
    var mes: String?
    /** Média diária dos valores efetivamente pagos em virtude das compensações oriundas da liquidação pelo saldo líquido multilateral para as operações LDL. Calculada como a soma dos valores pagos pelos participantes devedores (ou recebidos pelos participantes credores) no mês, dividida pelo número de dias em que houve liquidação financeira. Valor em R$ milhões. */
    var liquidacaoLdl: Double?
    /** Média diária do valor das operações liquidadas na modalidade bruta no período. Calculada como a soma dos valores das operações do mês, dividida pelo número de dias em que ocorreram operações. Valor em R$ milhões. */
    var valorLbtr: Double?
    /** Média diária da quantidade de operações liquidadas na modalidade bruta no período. Calculada como a soma da quantidade de operações do mês, dividida pelo número de dias em que ocorreram operações. */
    var quantidadeLbtr: Double?
    /** Média diária do valor das operações liquidadas na modalidade líquida no período. Calculada como a soma dos valores das operações do mês, dividida pelo número de dias em que ocorreram operações. Valor em R$ milhões. */
    var valorLdl: Double?
    /** Média diária da quantidade de operações liquidadas na modalidade líquida no período. Calculada como a soma da quantidade de operações do mês, dividida pelo número de dias em que ocorreram operações. */
    var quantidadeLdl: Double?
    /** Percentual do valor das operações LDL que foi liquidado por compensação. Calculado como 1 - liquidação LDL / valor das operações LDL. */
    var poderCompensacao: Double?

    init(mes: String?, liquidacaoLdl: Double?, valorLbtr: Double?, quantidadeLbtr: Double?, valorLdl: Double?, quantidadeLdl: Double?, poderCompensacao: Double?) {
        self.mes = mes
        self.liquidacaoLdl = liquidacaoLdl
        self.valorLbtr = valorLbtr
        self.quantidadeLbtr = quantidadeLbtr
        self.valorLdl = valorLdl
        self.quantidadeLdl = quantidadeLdl
        self.poderCompensacao = poderCompensacao
    }
}
