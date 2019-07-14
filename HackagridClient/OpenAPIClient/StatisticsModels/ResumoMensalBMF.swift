//
// ResumoMensalBMF.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


/** Tipo usado nos conjuntos BMFBOVESPAAtivos, BMFBOVESPACambio e BMFBOVESPADerivativos. */

struct ResumoMensalBMF: Codable {

    /** Mês/Ano de referência no formato mmm/aaaa */
    var mes: String?
    /** Média diária do valor das operações no período. Calculada como a soma dos valores das operações do mês, dividida pelo número de dias em que ocorreram operações. Valor em R$ milhões. */
    var valorOperacoes: Double?
    /** Média diária da quantidade de operações no período. Calculada como a soma da quantidade de operações do mês, dividida pelo número de dias em que ocorreram operações. */
    var quantidadeOperacoes: Double?
    /** Média diária dos valores efetivamente pagos em virtude das compensações oriundas da liquidação pelo saldo líquido multilateral. Calculada como a soma dos valores pagos pelos participantes devedores (ou recebidos pelos participantes credores) no mês, dividida pelo número de dias em que houve liquidação financeira. Valor em R$ milhões. */
    var liquidacao: Double?
    /** Percentual do valor das operações que foi liquidado por compensação. Calculado como 1 - liquidação / valor das operações. */
    var poderCompensacao: Double?

    init(mes: String?, valorOperacoes: Double?, quantidadeOperacoes: Double?, liquidacao: Double?, poderCompensacao: Double?) {
        self.mes = mes
        self.valorOperacoes = valorOperacoes
        self.quantidadeOperacoes = quantidadeOperacoes
        self.liquidacao = liquidacao
        self.poderCompensacao = poderCompensacao
    }
}
