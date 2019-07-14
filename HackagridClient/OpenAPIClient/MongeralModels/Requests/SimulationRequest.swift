// SimulationRequest.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let simulationRequest = try? newJSONDecoder().decode(SimulationRequest.self, from: jsonData)

import Foundation

// MARK: - SimulationRequest
struct SimulationRequest: Codable {
    let simulacoes: [Simulation]?
}
