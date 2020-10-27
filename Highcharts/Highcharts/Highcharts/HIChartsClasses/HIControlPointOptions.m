#import "HIChartsJSONSerializableSubclass.h"
#import "HIControlPointOptions.h"

@implementation HIControlPointOptions

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIControlPointOptions *copyControlPointOptions = [[HIControlPointOptions allocWithZone: zone] init];
	copyControlPointOptions.positioner = [self.positioner copyWithZone: zone];
	return copyControlPointOptions;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.positioner) {
		params[@"positioner"] = [self.positioner getFunction];
	}
	return params;
}

# pragma mark - Setters

-(void)setPositioner:(HIFunction *)positioner {
	HIFunction *oldValue = _positioner;
	_positioner = positioner;
	[self updateHIObject:oldValue newValue:positioner propertyName:@"positioner"];
}

@end