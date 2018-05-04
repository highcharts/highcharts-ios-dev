//
//  HIChartContext.m
//  Highcharts
//
//  Created by Ihnat Moisieiev on 12.03.2018.
//  Copyright © 2018 Highsoft AS. All rights reserved.
//

#import "HIChartContext.h"

@interface HIChartContext ()
@property (nonatomic, strong) NSDictionary *context;
@end

@implementation HIChartContext

-(instancetype)initWithContext:(NSDictionary *)context {
    if (self = [super init]) {
        self.context = context;
        return self;
    }
    else {
        return nil;
    }
}

-(id)getProperty:(NSString *)param {
    if (self.context) {
        return self.context[param];
    }
    else return NULL;
}

-(id)copyWithZone:(NSZone *)zone {
    HIChartContext *copyChartContext = [[HIChartContext allocWithZone: zone] init];
    copyChartContext.context = [self.context copyWithZone:zone];
    return copyChartContext;
}

@end
