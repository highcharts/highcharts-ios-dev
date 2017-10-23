#import "HIBubble.h"

@implementation HIBubble

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"bubble";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.minSize) {
		params[@"minSize"] = self.minSize;
	}
	if (self.maxSize) {
		params[@"maxSize"] = self.maxSize;
	}
	if (self.zMax) {
		params[@"zMax"] = self.zMax;
	}
	if (self.zMin) {
		params[@"zMin"] = self.zMin;
	}
	if (self.displayNegative) {
		params[@"displayNegative"] = self.displayNegative;
	}
	if (self.zThreshold) {
		params[@"zThreshold"] = self.zThreshold;
	}
	if (self.sizeByAbsoluteValue) {
		params[@"sizeByAbsoluteValue"] = self.sizeByAbsoluteValue;
	}
	if (self.sizeBy) {
		params[@"sizeBy"] = self.sizeBy;
	}
	return params;
}

@end