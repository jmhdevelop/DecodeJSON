//
//  DecodeJSON.swift
//  DecodeJSON
//
//  Created by jmhdevep on 16/03/2019.
//  Copyright © 2019 jmhdevep. All rights reserved.
//

import Foundation

public class DecodeJSON {
    public static let shared = DecodeJSON()
    let decoder = JSONDecoder()
    
    /// Decode raw binary Data and converted to an inferred type.
    ///
    /// - Parameter data: raw binary Data
    /// - Returns: inferred type
   public func decode<T:Codable>(data: Data) -> T? {
        do {
            let result = try decoder.decode(T.self, from: data)
            print("[Decode JSON]  SUCCESS")
            
            return result
            
        } catch let error {
            print("[Decode JSON] " + error.localizedDescription)
            print("[Decode JSON] Reviewed all the keys are set correctly. For more info go to https://github.com/jmhdevelop/DecodeJSON")
            
            return nil
        }
    }
}

