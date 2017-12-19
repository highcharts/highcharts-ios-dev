#import "HIChartsJSONSerializableSubclass.h"
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
	if (self.zMin) {
		params[@"zMin"] = self.zMin;
	}
	if (self.maxSize) {
		params[@"maxSize"] = self.maxSize;
	}
	if (self.zMax) {
		params[@"zMax"] = self.zMax;
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

# pragma mark - Setters

-(void)setMinSize:(NSString *)minSize {
	_minSize = minSize;
	[self updateNSObject:@"minSize"];
}

-(void)setZMin:(NSNumber *)zMin {
	_zMin = zMin;
	[self updateNSObject:@"zMin"];
}

-(void)setMaxSize:(NSString *)maxSize {
	_maxSize = maxSize;
	[self updateNSObject:@"maxSize"];
}

-(void)setZMax:(NSNumber *)zMax {
	_zMax = zMax;
	[self updateNSObject:@"zMax"];
}

-(void)setDisplayNegative:(NSNumber *)displayNegative {
	_displayNegative = displayNegative;
	[self updateNSObject:@"displayNegative"];
}

-(void)setZThreshold:(NSNumber *)zThreshold {
	_zThreshold = zThreshold;
	[self updateNSObject:@"zThreshold"];
}

-(void)setSizeByAbsoluteValue:(NSNumber *)sizeByAbsoluteValue {
	_sizeByAbsoluteValue = sizeByAbsoluteValue;
	[self updateNSObject:@"sizeByAbsoluteValue"];
}

-(void)setSizeBy:(NSString *)sizeBy {
	_sizeBy = sizeBy;
	[self updateNSObject:@"sizeBy"];
}

@end