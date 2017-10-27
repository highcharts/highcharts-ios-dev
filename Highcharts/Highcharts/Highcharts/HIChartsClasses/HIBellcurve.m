#import "HIBellcurve.h"

@implementation HIBellcurve

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"bellcurve";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.fillOpacity) {
		params[@"fillOpacity"] = self.fillOpacity;
	}
	if (self.pointsInInterval) {
		params[@"pointsInInterval"] = self.pointsInInterval;
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	if (self.negativeFillColor) {
		params[@"negativeFillColor"] = [self.negativeFillColor getData];
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.trackByArea) {
		params[@"trackByArea"] = self.trackByArea;
	}
	if (self.intervals) {
		params[@"intervals"] = self.intervals;
	}
	if (self.baseSeries) {
		params[@"baseSeries"] = self.baseSeries;
	}
	return params;
}

@end