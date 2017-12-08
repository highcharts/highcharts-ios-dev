#import "HIOptions.h"

@interface HIOptions ()
@property (nonatomic, strong) NSMutableSet *allObservers;
@property (nonatomic, strong) NSMutableArray *currentObservers;
@property (nonatomic, assign) BOOL isUpdated;
-(void)updateForHIObject:(HIChartsJSONSerializable *)oldValue newValue:(HIChartsJSONSerializable *)newValue keyPathForObserver:(NSString *)keyPath;
@end

@implementation HIOptions

-(instancetype)init {
	if (self = [super init]) {
		HICredits *credits = [[HICredits alloc]init];
		credits.enabled = @true;
		credits.text = @"Highcharts iOS";
		credits.href = @"http://www.highcharts.com/blog/mobile/";
		self.credits = credits;
        self.allObservers = [[NSMutableSet alloc] init];
        self.currentObservers = [[NSMutableArray alloc] init];
        return self;
	}
	return nil;
}

- (void)dealloc {
    NSLog(@"DEALLOC!!!!!!!!!");
    [self removeObservers];
}

-(NSDictionary *)getParams {
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.credits) {
		params[@"credits"] = [self.credits getParams];
	}
	if (self.series) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.series) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"series"] = array;
	}
	if (self.boost) {
		params[@"boost"] = [self.boost getParams];
	}
	if (self.data) {
		params[@"data"] = [self.data getParams];
	}
	if (self.defs) {
		params[@"defs"] = [self.defs getParams];
	}
	if (self.yAxis) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.yAxis) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"yAxis"] = array;
	}
	if (self.legend) {
		params[@"legend"] = [self.legend getParams];
	}
	if (self.pane) {
		params[@"pane"] = [self.pane getParams];
	}
	if (self.title) {
		params[@"title"] = [self.title getParams];
	}
	if (self.accessibility) {
		params[@"accessibility"] = [self.accessibility getParams];
	}
	if (self.noData) {
		params[@"noData"] = [self.noData getParams];
	}
	if (self.plotOptions) {
		params[@"plotOptions"] = [self.plotOptions getParams];
	}
	if (self.subtitle) {
		params[@"subtitle"] = [self.subtitle getParams];
	}
	if (self.tooltip) {
		params[@"tooltip"] = [self.tooltip getParams];
	}
	if (self.responsive) {
		params[@"responsive"] = [self.responsive getParams];
	}
	if (self.xAxis) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.xAxis) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"xAxis"] = array;
	}
	if (self.chart) {
		params[@"chart"] = [self.chart getParams];
	}
	if (self.annotations) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.annotations) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"annotations"] = array;
	}
	if (self.zAxis) {
		params[@"zAxis"] = [self.zAxis getParams];
	}
	if (self.labels) {
		params[@"labels"] = [self.labels getParams];
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.navigation) {
		params[@"navigation"] = [self.navigation getParams];
	}
	if (self.loading) {
		params[@"loading"] = [self.loading getParams];
	}
	if (self.colorAxis) {
		params[@"colorAxis"] = [self.colorAxis getParams];
	}
	if (self.drilldown) {
		params[@"drilldown"] = [self.drilldown getParams];
	}
	if (self.exporting) {
		params[@"exporting"] = [self.exporting getParams];
	}
	if (self.additionalOptions) {
		[params addEntriesFromDictionary: self.additionalOptions];
	}

	return params;
}

#pragma mark - NSKeyValueObserving

-(void)removeObservers {
    for (NSString *keyPath in self.currentObservers) {
        [self removeObserver:self forKeyPath:keyPath];
        NSLog(@"********* Remove observer for : %@", keyPath);
    }
}

+ (BOOL)automaticallyNotifiesObserversForKey:(NSString *)key {
    return NO;
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    if ([keyPath isEqualToString:@"title.isUpdated"]) {
        NSString *kChangeNew = [change valueForKey:@"new"];
        BOOL value = kChangeNew.boolValue;
        if (value) {
            NSLog(@"HIOPTIONS -- The title.isUpdated changed!");
            NSLog(@"%@", change);
            [self willChangeValueForKey:@"isUpdated"];
            self.isUpdated = YES;
            [self didChangeValueForKey:@"isUpdated"];
        }
        else {
            NSLog(@"HIOPTIONS -- SET UP IS UPDATED TO FALSE IN HIOPTIONS TITLE!");
            [self willChangeValueForKey:@"isUpdated"];
            self.isUpdated = NO;
            [self didChangeValueForKey:@"isUpdated"];
        }
    }
    else if ([keyPath isEqualToString:@"subtitle.isUpdated"]) {
        NSString *kChangeNew = [change valueForKey:@"new"];
        BOOL value = kChangeNew.boolValue;
        if (value) {
            NSLog(@"HIOPTIONS -- The subtitle.isUpdated changed!");
            NSLog(@"%@", change);
            [self willChangeValueForKey:@"isUpdated"];
            self.isUpdated = YES;
            [self didChangeValueForKey:@"isUpdated"];
        }
        else {
            NSLog(@"HIOPTIONS -- SET UP IS UPDATED TO FALSE IN HIOPTIONS SUBTITLE!");
            [self willChangeValueForKey:@"isUpdated"];
            self.isUpdated = NO;
            [self didChangeValueForKey:@"isUpdated"];
        }
    }
}

#pragma mark - Setters / Getters

-(void)updateForHIObject:(HIChartsJSONSerializable *)oldValue newValue:(HIChartsJSONSerializable *)newValue keyPathForObserver:(NSString *)keyPath {
    if (oldValue) {
        NSLog(@"HIOPTIONS -- UPDATED %@ OBJECT!", keyPath);
        [self willChangeValueForKey:@"isUpdated"];
        self.isUpdated = YES;
        [self didChangeValueForKey:@"isUpdated"];

        if (newValue) {
            [self addObserver:self forKeyPath:keyPath options:NSKeyValueObservingOptionNew context:NULL];
        }
        else {
            [self.currentObservers removeObject:keyPath];
            NSLog(@"HIOPTIONS -- %@ -- REMOVE OBSERVER", keyPath);
        }
    }
    else {
        if (newValue) {
            if ([self.allObservers containsObject:keyPath]) {
                NSLog(@"HIOPTIONS -- UPDATED %@ OBJECT!", keyPath);
                [self willChangeValueForKey:@"isUpdated"];
                self.isUpdated = YES;
                [self didChangeValueForKey:@"isUpdated"];
            }
            [self.allObservers addObject:keyPath];
            [self.currentObservers addObject:keyPath];
            [self addObserver:self forKeyPath:keyPath options:NSKeyValueObservingOptionNew context:NULL];
            NSLog(@"HIOPTIONS -- %@ -- ADD OBSERVER", keyPath);
        }
        else {
            NSLog(@"HIOPTIONS -- %@ -- NOT ADD OBSERVER BECAUSE NIL SET UP", keyPath);
        }
    }
    [self willChangeValueForKey:@"isUpdated"];
    self.isUpdated = NO;
    [self didChangeValueForKey:@"isUpdated"];
}

/*
-(void)setAccessibility:(HIAccessibility *)accessibility {
    
}

-(void)setAnnotations:(NSArray<HIAnnotations *> *)annotations {
    
}

-(void)setBoost:(HIBoost *)boost {
    
}*/

-(void)setChart:(HIChart *)chart {
    HIChart *oldValue = _chart;
    NSString *keyPath = @"chart.isUpdated";
    
    if(self.chart) {
        [self removeObserver:self forKeyPath:keyPath];
    }
    
    _chart = chart;
    
    [self updateForHIObject:oldValue newValue:chart keyPathForObserver:keyPath];
}
/*
-(void)setColorAxis:(HIColorAxis *)colorAxis {
    
}

-(void)setColors:(NSArray<HIColor *> *)colors {
    
}

-(void)setCredits:(HICredits *)credits {
    
}

-(void)setData:(HIData *)data {
    
}

-(void)setDefs:(HIDefs *)defs {
    
}

-(void)setDrilldown:(HIDrilldown *)drilldown {
    
}

-(void)setExporting:(HIExporting *)exporting {
    
}

-(void)setLabels:(HILabels *)labels {
    
}

-(void)setLoading:(HILoading *)loading {
    
}

-(void)setNavigation:(HINavigation *)navigation {
    
}

-(void)setNoData:(HINoData *)noData {
    
}

-(void)setPane:(HIPane *)pane {
    
}

-(void)setPlotOptions:(HIPlotOptions *)plotOptions {
    
}

-(void)setResponsive:(HIResponsive *)responsive {
    
}


-(void)setSeries:(NSArray<HISeries *> *)series {
    
}
*/

-(void)setSubtitle:(HISubtitle *)subtitle {
    HISubtitle *oldValue = _subtitle;
    NSString *keyPath = @"subtitle.isUpdated";
    
    if(self.subtitle) {
        [self removeObserver:self forKeyPath:keyPath];
    }
    
    _subtitle = subtitle;
    
    [self updateForHIObject:oldValue newValue:subtitle keyPathForObserver:keyPath];
}

-(void)setTitle:(HITitle *)title {
    HITitle *oldValue = _title;
    NSString *keyPath = @"title.isUpdated";
    
    if(self.subtitle) {
        [self removeObserver:self forKeyPath:keyPath];
    }
    
    _title = title;
    
    [self updateForHIObject:oldValue newValue:title keyPathForObserver:keyPath];
}
/*
-(void)setTooltip:(HITooltip *)tooltip {
    
}

-(void)setXAxis:(NSArray<HIXAxis *> *)xAxis {
    
}

-(void)setYAxis:(NSArray<HIYAxis *> *)yAxis {
    
}

-(void)setZAxis:(HIZAxis *)zAxis {
    
}
 */

@end
