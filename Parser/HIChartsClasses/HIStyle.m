#import "HIChartsJSONSerializableSubclass.h"
#import "HIStyle.h"

@implementation HIStyle

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIStyle *copyStyle = [[HIStyle allocWithZone: zone] init];
	copyStyle.textOverflow = [self.textOverflow copyWithZone: zone];
	copyStyle.whiteSpace = [self.whiteSpace copyWithZone: zone];
	return copyStyle;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.textOverflow) {
		params[@"textOverflow"] = self.textOverflow;
	}
	if (self.whiteSpace) {
		params[@"whiteSpace"] = self.whiteSpace;
	}
	return params;
}

# pragma mark - Setters

-(void)setTextOverflow:(NSString *)textOverflow {
	NSString *oldValue = _textOverflow;
	_textOverflow = textOverflow;
	[self updateNSObject:oldValue newValue:textOverflow propertyName:@"textOverflow"];
}

-(void)setWhiteSpace:(NSString *)whiteSpace {
	NSString *oldValue = _whiteSpace;
	_whiteSpace = whiteSpace;
	[self updateNSObject:oldValue newValue:whiteSpace propertyName:@"whiteSpace"];
}

@end