//
//  Converter.swift
//  MatchGame2Noy
//
//  Created by user165590 on 6/28/20.
//  Copyright © 2020 user165590. All rights reserved.
//

import Foundation

class Converter {
    
    func rowsListToJson(rowsList: [RankRowModel]) -> String {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        let data = try! encoder.encode(rowsList)
        let jsonString: String = String(data: data, encoding: .utf8)!
        return jsonString
    }
    
    func jsonTorowsList(jsonRowsList: String) -> [RankRowModel]? {
        let decoder = JSONDecoder()
        if jsonRowsList == "" {
            return [RankRowModel]()
        }else{
            let data: [RankRowModel]
            let convertedData: Data = jsonRowsList.data(using: .utf8)!
            data = try! decoder.decode([RankRowModel].self,from: convertedData)
            return data
        }
    }
}
