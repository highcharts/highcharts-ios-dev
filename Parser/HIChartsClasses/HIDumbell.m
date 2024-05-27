#import "HIChartsJSONSerializableSubclass.h"
#import "HIDumbell.h"

@implementation HIDumbell

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"dumbell";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDumbell *copyDumbell = [[HIDumbell allocWithZone: zone] init];
	copyDumbell.lowColor = [self.lowColor copyWithZone: zone];
	return copyDumbell;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.lowColor) {
		params[@"lowColor"] = [self.lowColor getData];
	}
	return params;
}

# pragma mark - Setters

-(void)setLowColor:(HIColor *)lowColor {
	HIColor *oldValue = _lowColor;
	_lowColor = lowColor;
	[self updateHIObject:oldValue newValue:lowColor propertyName:@"lowColor"];
}

@end