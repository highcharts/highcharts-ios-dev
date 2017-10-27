#import "HIArea.h"

@implementation HIArea

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"area";
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
	if (self.fillOpacity) {
		params[@"fillOpacity"] = self.fillOpacity;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	return params;
}

@end