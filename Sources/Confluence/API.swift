//
//  API.swift
//  AtlassianProtocol
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation
import AtlassianProtocol

public protocol ConfluenceAPI {}

// both infrastructure
enum AccessMode:    APICategory & ConfluenceAPI {}
enum Audit:         APICategory & ConfluenceAPI {}
enum Content:       APICategory & ConfluenceAPI {}
enum ContentBody:   APICategory & ConfluenceAPI {}
enum Group:         APICategory & ConfluenceAPI {}
enum LongTask:      APICategory & ConfluenceAPI {}
enum Search:        APICategory & ConfluenceAPI {}
enum Space:         APICategory & ConfluenceAPI {}
enum User:          APICategory & ConfluenceAPI {}

// cloud only
enum Experimental:  APICategory & ConfluenceAPI {}
enum Relation:      APICategory & ConfluenceAPI {}
enum Settings:      APICategory & ConfluenceAPI {}
enum Template:      APICategory & ConfluenceAPI {}
