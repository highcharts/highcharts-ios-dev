#import "HIDataClasses.h"

@implementation HIDataClasses

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.to) {
		params[@"to"] = self.to;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.from) {
		params[@"from"] = self.from;
	}
	return params;
}

# pragma mark - Setters

-(void)setName:(NSString *)name {
	_name = name;
	[self updateNSObject:@"name"];
}

-(void)setTo:(NSNumber *)to {
	_to = to;
	[self updateNSObject:@"to"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	if(self.color) {
		[self removeObserver:self forKeyPath:@"color.isUpdated"];
	}
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setFrom:(NSNumber *)from {
	_from = from;
	[self updateNSObject:@"from"];
}

@end