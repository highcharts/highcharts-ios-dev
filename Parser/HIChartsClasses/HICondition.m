#import "HIChartsJSONSerializableSubclass.h"
#import "HICondition.h"

@implementation HICondition

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HICondition *copyCondition = [[HICondition allocWithZone: zone] init];
	copyCondition.minWidth = [self.minWidth copyWithZone: zone];
	copyCondition.callback = [self.callback copyWithZone: zone];
	copyCondition.minHeight = [self.minHeight copyWithZone: zone];
	copyCondition.maxWidth = [self.maxWidth copyWithZone: zone];
	copyCondition.maxHeight = [self.maxHeight copyWithZone: zone];
	return copyCondition;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.minWidth) {
		params[@"minWidth"] = self.minWidth;
	}
	if (self.callback) {
		params[@"callback"] = [self.callback getFunction];
	}
	if (self.minHeight) {
		params[@"minHeight"] = self.minHeight;
	}
	if (self.maxWidth) {
		params[@"maxWidth"] = self.maxWidth;
	}
	if (self.maxHeight) {
		params[@"maxHeight"] = self.maxHeight;
	}
	return params;
}

# pragma mark - Setters

-(void)setMinWidth:(NSNumber *)minWidth {
	NSNumber *oldValue = _minWidth;
	_minWidth = minWidth;
	[self updateNSObject:oldValue newValue:minWidth propertyName:@"minWidth"];
}

-(void)setCallback:(HIFunction *)callback {
	HIFunction *oldValue = _callback;
	_callback = callback;
	[self updateHIObject:oldValue newValue:callback propertyName:@"callback"];
}

-(void)setMinHeight:(NSNumber *)minHeight {
	NSNumber *oldValue = _minHeight;
	_minHeight = minHeight;
	[self updateNSObject:oldValue newValue:minHeight propertyName:@"minHeight"];
}

-(void)setMaxWidth:(NSNumber *)maxWidth {
	NSNumber *oldValue = _maxWidth;
	_maxWidth = maxWidth;
	[self updateNSObject:oldValue newValue:maxWidth propertyName:@"maxWidth"];
}

-(void)setMaxHeight:(NSNumber *)maxHeight {
	NSNumber *oldValue = _maxHeight;
	_maxHeight = maxHeight;
	[self updateNSObject:oldValue newValue:maxHeight propertyName:@"maxHeight"];
}

@end