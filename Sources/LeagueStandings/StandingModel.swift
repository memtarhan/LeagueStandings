//
//  StadingModel.swift
//  LeagueStandings
//
//  Created by Mehmet Tarhan on 13.01.2025.
//

import Foundation

public struct StatModel: Identifiable {
    public let description: String
    public let shortDescription: String
    public let value: Double

    public var id: String {
        description + shortDescription + "\(value)"
    }
    
    public init(description: String, shortDescription: String, value: Double) {
        self.description = description
        self.shortDescription = shortDescription
        self.value = value
    }
}

public struct StandingModel: Identifiable {
    public let rank: Int
    public let name: String
    public let logo: String
    public let stats: [StatModel]

    public var id: Int {
        rank
    }
    
    public init(rank: Int, name: String, logo: String, stats: [StatModel]) {
        self.rank = rank
        self.name = name
        self.logo = logo
        self.stats = stats
    }
}
