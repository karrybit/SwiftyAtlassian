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
public enum Backlog:           APICategory & JiraSoftwereAPI {}
public enum Board:             APICategory & JiraSoftwereAPI {}
public enum Epic:              APICategory & JiraSoftwereAPI {}
public enum Issue:             APICategory & JiraSoftwereAPI {}
public enum Sprint:            APICategory & JiraSoftwereAPI {}

// only cloud
public enum Bulk: APICategory & JiraSoftwereAPI {}
public enum BulkRepository: APICategory & JiraSoftwereAPI {}
public enum BulkByProperties: APICategory & JiraSoftwereAPI {}
public enum ExistsByProperties: APICategory & JiraSoftwereAPI {}
public enum Flag: APICategory & JiraSoftwereAPI {}
public enum Pipelines: APICategory & JiraSoftwereAPI {}
