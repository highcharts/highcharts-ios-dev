#import "HIChartsJSONSerializableSubclass.h"
#import "HIPartialFill.h"

@implementation HIPartialFill

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPartialFill *copyPartialFill = [[HIPartialFill allocWithZone: zone] init];
	copyPartialFill.amount = [self.amount copyWithZone: zone];
	copyPartialFill.fill = [self.fill copyWithZone: zone];
	return copyPartialFill;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.amount) {
		params[@"amount"] = self.amount;
	}
	if (self.fill) {
		params[@"fill"] = [self.fill getData];
	}
	return params;
}

# pragma mark - Setters

-(void)setAmount:(NSNumber *)amount {
	_amount = amount;
	[self updateNSObject:@"amount"];
}

-(void)setFill:(HIColor *)fill {
	HIColor *oldValue = _fill;
	if(self.fill) {
		[self removeObserver:self forKeyPath:@"fill.isUpdated"];
	}
	_fill = fill;
	[self updateHIObject:oldValue newValue:fill propertyName:@"fill"];
}

@end