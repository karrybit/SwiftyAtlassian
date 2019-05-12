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
public enum Customer: APICategory & JiraServiceDeskAPI {}
public enum Info: APICategory & JiraServiceDeskAPI {}
public enum Organization: APICategory & JiraServiceDeskAPI {}
public enum Queues: APICategory & JiraServiceDeskAPI {}
public enum Request: APICategory & JiraServiceDeskAPI {}
public enum ServiceDesk: APICategory & JiraServiceDeskAPI {}

// only cloud
public enum Knowledgebase: APICategory & JiraServiceDeskAPI {}
public enum RequestType: APICategory & JiraServiceDeskAPI {}
