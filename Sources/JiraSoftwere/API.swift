//
//  API.swift
//  AtlassianProtocol
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation
import AtlassianProtocol

public protocol JiraSoftwereAPI {}

// both infrastructure
enum Backlog:           APICategory & JiraSoftwereAPI {}
enum Board:             APICategory & JiraSoftwereAPI {}
enum Epic:              APICategory & JiraSoftwereAPI {}
enum Issue:             APICategory & JiraSoftwereAPI {}
enum Sprint:            APICategory & JiraSoftwereAPI {}

// only cloud
enum Bulk: APICategory & JiraSoftwereAPI {}
enum BulkRepository: APICategory & JiraSoftwereAPI {}
enum BulkByProperties: APICategory & JiraSoftwereAPI {}
enum ExistsByProperties: APICategory & JiraSoftwereAPI {}
enum Flag: APICategory & JiraSoftwereAPI {}
enum Pipelines: APICategory & JiraSoftwereAPI {}
