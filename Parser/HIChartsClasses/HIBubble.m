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

-(id)copyWithZone:(NSZone *)zone {
	HIBubble *copyBubble = [[HIBubble allocWithZone: zone] init];
	copyBubble.zMax = [self.zMax copyWithZone: zone];
	copyBubble.sizeBy = [self.sizeBy copyWithZone: zone];
	copyBubble.zMin = [self.zMin copyWithZone: zone];
	copyBubble.minSize = [self.minSize copyWithZone: zone];
	copyBubble.maxSize = [self.maxSize copyWithZone: zone];
	copyBubble.zThreshold = [self.zThreshold copyWithZone: zone];
	copyBubble.displayNegative = [self.displayNegative copyWithZone: zone];
	copyBubble.sizeByAbsoluteValue = [self.sizeByAbsoluteValue copyWithZone: zone];
	return copyBubble;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.zMax) {
		params[@"zMax"] = self.zMax;
	}
	if (self.sizeBy) {
		params[@"sizeBy"] = self.sizeBy;
	}
	if (self.zMin) {
		params[@"zMin"] = self.zMin;
	}
	if (self.minSize) {
		params[@"minSize"] = self.minSize;
	}
	if (self.maxSize) {
		params[@"maxSize"] = self.maxSize;
	}
	if (self.zThreshold) {
		params[@"zThreshold"] = self.zThreshold;
	}
	if (self.displayNegative) {
		params[@"displayNegative"] = self.displayNegative;
	}
	if (self.sizeByAbsoluteValue) {
		params[@"sizeByAbsoluteValue"] = self.sizeByAbsoluteValue;
	}
	return params;
}

# pragma mark - Setters

-(void)setZMax:(NSNumber *)zMax {
	_zMax = zMax;
	[self updateNSObject:@"zMax"];
}

-(void)setSizeBy:(NSString *)sizeBy {
	_sizeBy = sizeBy;
	[self updateNSObject:@"sizeBy"];
}

-(void)setZMin:(NSNumber *)zMin {
	_zMin = zMin;
	[self updateNSObject:@"zMin"];
}

-(void)setMinSize:(id)minSize {
	_minSize = minSize;
	[self updateNSObject:@"minSize"];
}

-(void)setMaxSize:(id)maxSize {
	_maxSize = maxSize;
	[self updateNSObject:@"maxSize"];
}

-(void)setZThreshold:(NSNumber *)zThreshold {
	_zThreshold = zThreshold;
	[self updateNSObject:@"zThreshold"];
}

-(void)setDisplayNegative:(NSNumber *)displayNegative {
	_displayNegative = displayNegative;
	[self updateNSObject:@"displayNegative"];
}

-(void)setSizeByAbsoluteValue:(NSNumber *)sizeByAbsoluteValue {
	_sizeByAbsoluteValue = sizeByAbsoluteValue;
	[self updateNSObject:@"sizeByAbsoluteValue"];
}

@end