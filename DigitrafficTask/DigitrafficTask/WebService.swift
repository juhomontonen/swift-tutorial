//
//  WebService.swift
//  DigitrafficTask
//
//  Created by Juho Montonen on 14/02/2020.
//  Copyright © 2020 Juho Montonen. All rights reserved.
//

import Foundation

class WebService {
    func get(by id: String, completion: @escaping (Camera) -> Void) {
        guard let url = URL(string: "https://tie.digitraffic.fi/api/v1/data/camera-data/\(id)") else { fatalError("URL is not correct!")
        }
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            let cam = try! JSONDecoder().decode(Camera.self, from: data!)
            DispatchQueue.main.async {
                completion(cam)
            }
        }.resume()
    }
}
