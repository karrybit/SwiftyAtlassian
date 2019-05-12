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
public enum AccessMode:    APICategory & ConfluenceAPI {}
public enum Audit:         APICategory & ConfluenceAPI {}
public enum Content:       APICategory & ConfluenceAPI {}
public enum ContentBody:   APICategory & ConfluenceAPI {}
public enum Group:         APICategory & ConfluenceAPI {}
public enum LongTask:      APICategory & ConfluenceAPI {}
public enum Search:        APICategory & ConfluenceAPI {}
public enum Space:         APICategory & ConfluenceAPI {}
public enum User:          APICategory & ConfluenceAPI {}

// cloud only
public enum Experimental:  APICategory & ConfluenceAPI {}
public enum Relation:      APICategory & ConfluenceAPI {}
public enum Settings:      APICategory & ConfluenceAPI {}
public enum Template:      APICategory & ConfluenceAPI {}
