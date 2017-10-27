#import "HIAreaspline.h"

@implementation HIAreaspline

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"areaspline";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	if (self.negativeFillColor) {
		params[@"negativeFillColor"] = [self.negativeFillColor getData];
	}
	if (self.trackByArea) {
		params[@"trackByArea"] = self.trackByArea;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.fillOpacity) {
		params[@"fillOpacity"] = self.fillOpacity;
	}
	return params;
}

@end