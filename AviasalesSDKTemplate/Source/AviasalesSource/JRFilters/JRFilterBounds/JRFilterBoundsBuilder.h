//
//  JRFilterBoundsBuilder.h
//
//  Copyright 2016 Go Travel Un Limited
//  This code is distributed under the terms and conditions of the MIT license.
//

#import <Foundation/Foundation.h>

@class JRFilterTicketBounds;

@interface JRFilterBoundsBuilder : NSObject

@property (nonatomic, assign, readonly) BOOL isSimpleSearch;

@property (nonatomic, strong, readonly, nonnull) JRFilterTicketBounds *ticketBounds;
@property (nonatomic, strong, readonly, nonnull) NSArray *travelSegmentsBounds;

- (nonnull instancetype)initWithSearchResults:(nonnull NSOrderedSet <JRSDKTicket *> *)tickets forSearchInfo:(nonnull JRSDKSearchInfo *)searchInfo;

@end
