#import "HIOptions.h"

@implementation HIOptions

-(instancetype)init {
	if (self = [super init]) {
		HICredits *credits = [[HICredits alloc]init];
		credits.enabled = @true;
		credits.text = @"Highcharts iOS";
		credits.href = @"http://www.highcharts.com/blog/mobile/";
		self.credits = credits;
		return self;
	}
	return nil;
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

@end