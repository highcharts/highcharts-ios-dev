#import "HIChartsJSONSerializableSubclass.h"
#import "HIConnectorOptions.h"

@implementation HIConnectorOptions

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIConnectorOptions *copyConnectorOptions = [[HIConnectorOptions allocWithZone: zone] init];
	copyConnectorOptions.width = [self.width copyWithZone: zone];
	copyConnectorOptions.dashstyle = [self.dashstyle copyWithZone: zone];
	copyConnectorOptions.stroke = [self.stroke copyWithZone: zone];
	return copyConnectorOptions;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.dashstyle) {
		params[@"dashstyle"] = self.dashstyle;
	}
	if (self.stroke) {
		params[@"stroke"] = self.stroke;
	}
	return params;
}

# pragma mark - Setters

-(void)setWidth:(NSNumber *)width {
	NSNumber *oldValue = _width;
	_width = width;
	[self updateNSObject:oldValue newValue:width propertyName:@"width"];
}

-(void)setDashstyle:(NSString *)dashstyle {
	NSString *oldValue = _dashstyle;
	_dashstyle = dashstyle;
	[self updateNSObject:oldValue newValue:dashstyle propertyName:@"dashstyle"];
}

-(void)setStroke:(NSString *)stroke {
	NSString *oldValue = _stroke;
	_stroke = stroke;
	[self updateNSObject:oldValue newValue:stroke propertyName:@"stroke"];
}

@end