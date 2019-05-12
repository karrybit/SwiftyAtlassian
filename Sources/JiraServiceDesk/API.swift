//
//  API.swift
//  AtlassianProtocol
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation
import AtlassianProtocol

public protocol JiraServiceDeskAPI {}

// both infrastructure
enum Customer: APICategory & JiraServiceDeskAPI {}
enum Info: APICategory & JiraServiceDeskAPI {}
enum Organization: APICategory & JiraServiceDeskAPI {}
enum Queues: APICategory & JiraServiceDeskAPI {}
enum Request: APICategory & JiraServiceDeskAPI {}
enum ServiceDesk: APICategory & JiraServiceDeskAPI {}

// only cloud
enum Knowledgebase: APICategory & JiraServiceDeskAPI {}
enum RequestType: APICategory & JiraServiceDeskAPI {}
