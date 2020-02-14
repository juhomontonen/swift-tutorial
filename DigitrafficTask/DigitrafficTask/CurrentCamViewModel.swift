//
//  CurrentCamViewModel.swift
//  DigitrafficTask
//
//  Created by Juho Montonen on 10/02/2020.
//  Copyright © 2020 Juho Montonen. All rights reserved.
//

import Foundation
import Combine

final class CurrentCamViewModel: ObservableObject {
    @Published var current: Camera?
    
    init() {
        self.fetch()
    }
}

extension CurrentCamViewModel {
    func fetch(_ id: String = "C01502") {
        WebService().get(by: id) {
            self.current = $0
        }
    }
}
