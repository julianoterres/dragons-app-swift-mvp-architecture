//
//  DragonsResponseApi.swift
//  Dragons
//
//  Created by Juliano Terres on 15/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

struct DragonsResponseApi: Codable {
  let success: Bool
  let dragons: [DragonsApi?]
}
