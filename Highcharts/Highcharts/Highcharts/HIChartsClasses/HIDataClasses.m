#import "HIChartsJSONSerializableSubclass.h"
#import "HIDataClasses.h"

@implementation HIDataClasses

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDataClasses *copyDataClasses = [[HIDataClasses allocWithZone: zone] init];
	copyDataClasses.color = [self.color copyWithZone: zone];
	copyDataClasses.to = [self.to copyWithZone: zone];
	copyDataClasses.from = [self.from copyWithZone: zone];
	copyDataClasses.name = [self.name copyWithZone: zone];
	return copyDataClasses;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.to) {
		params[@"to"] = self.to;
	}
	if (self.from) {
		params[@"from"] = self.from;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	return params;
}

# pragma mark - Setters

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	if(self.color) {
		[self removeObserver:self forKeyPath:@"color.isUpdated"];
	}
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setTo:(NSNumber *)to {
	_to = to;
	[self updateNSObject:@"to"];
}

-(void)setFrom:(NSNumber *)from {
	_from = from;
	[self updateNSObject:@"from"];
}

-(void)setName:(NSString *)name {
	_name = name;
	[self updateNSObject:@"name"];
}

@end