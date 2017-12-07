#import "HIOptions.h"

@interface HIOptions ()
@property (nonatomic, strong) NSMutableSet *allObservers;
@property (nonatomic, strong) NSMutableArray *currentObservers;
@property (nonatomic, assign) BOOL isUpdated;
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
    for (NSString *property in self.currentObservers) {
        NSString *keyPath = [NSString stringWithFormat:@"%@%@", property, @".isUpdated"];
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

-(void)setTitle:(HITitle *)title {
    if (self.title) {
        [self removeObserver:self forKeyPath:@"title.isUpdated"];
        _title = title;
        NSLog(@"HIOPTIONS -- UPDATED TITLE OBJECT!");
        [self willChangeValueForKey:@"isUpdated"];
        self.isUpdated = YES;
        [self didChangeValueForKey:@"isUpdated"];
        
        if (title) {
            [self addObserver:self forKeyPath:@"title.isUpdated" options:NSKeyValueObservingOptionNew context:NULL];
        }
        else {
            [self.currentObservers removeObject:@"title"];
            NSLog(@"HIOPTIONS -- TITLE -- REMOVE OBSERVER");
        }
    }
    else {
        _title = title;
        if (title) {
            if ([self.allObservers containsObject:@"title"]) {
                NSLog(@"HIOPTIONS -- UPDATED TITLE OBJECT!");
                [self willChangeValueForKey:@"isUpdated"];
                self.isUpdated = YES;
                [self didChangeValueForKey:@"isUpdated"];
            }
            [self.allObservers addObject:@"title"];
            [self.currentObservers addObject:@"title"];
            [self addObserver:self forKeyPath:@"title.isUpdated" options:NSKeyValueObservingOptionNew context:NULL];
            NSLog(@"HIOPTIONS -- TITLE -- ADD OBSERVER");
        }
        else {
            NSLog(@"HIOPTIONS -- TITLE -- NOT ADD OBSERVER BECAUSE NIL SET UP");
        }
    }
    [self willChangeValueForKey:@"isUpdated"];
    self.isUpdated = NO;
    [self didChangeValueForKey:@"isUpdated"];
}

-(void)setSubtitle:(HISubtitle *)subtitle {
    if (self.subtitle) {
        [self removeObserver:self forKeyPath:@"subtitle.isUpdated"];
        _subtitle = subtitle;
        NSLog(@"HIOPTIONS -- UPDATED SUBTITLE OBJECT!");
        [self willChangeValueForKey:@"isUpdated"];
        self.isUpdated = YES;
        [self didChangeValueForKey:@"isUpdated"];
        
        if (subtitle) {
            [self addObserver:self forKeyPath:@"subtitle.isUpdated" options:NSKeyValueObservingOptionNew context:NULL];
        }
        else {
            [self.currentObservers removeObject:@"subtitle"];
            [self removeObserver:self forKeyPath:@"subtitle.isUpdated"];
            NSLog(@"HIOPTIONS -- SUBTITLE -- REMOVE OBSERVER");
        }
    }
    else {
        _subtitle = subtitle;
        if (subtitle) {
            if ([self.allObservers containsObject:@"subtitle"]) {
                NSLog(@"HIOPTIONS -- UPDATED SUBTITLE OBJECT!");
                [self willChangeValueForKey:@"isUpdated"];
                self.isUpdated = YES;
                [self didChangeValueForKey:@"isUpdated"];
            }
            [self.allObservers addObject:@"subtitle"];
            [self.currentObservers addObject:@"subtitle"];
            [self addObserver:self forKeyPath:@"subtitle.isUpdated" options:NSKeyValueObservingOptionNew context:NULL];
            NSLog(@"HIOPTIONS -- SUBTITLE -- ADD OBSERVER");
        }
        else {
            NSLog(@"HIOPTIONS -- SUBTITLE -- NOT ADD OBSERVER BECAUSE NIL SET UP");
        }
    }
    [self willChangeValueForKey:@"isUpdated"];
    self.isUpdated = NO;
    [self didChangeValueForKey:@"isUpdated"];
}

@end
