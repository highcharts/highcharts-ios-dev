#import "HIChartsJSONSerializableSubclass.h"
#import "HIEllipseAnnotation.h"

@implementation HIEllipseAnnotation

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIEllipseAnnotation *copyEllipseAnnotation = [[HIEllipseAnnotation allocWithZone: zone] init];
	copyEllipseAnnotation.className = [self.className copyWithZone: zone];
	return copyEllipseAnnotation;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.className) {
		params[@"className"] = self.className;
	}
	return params;
}

# pragma mark - Setters

-(void)setClassName:(NSString *)className {
	NSString *oldValue = _className;
	_className = className;
	[self updateNSObject:oldValue newValue:className propertyName:@"className"];
}

@end