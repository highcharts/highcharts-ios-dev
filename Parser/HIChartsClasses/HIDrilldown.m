#import "HIChartsJSONSerializableSubclass.h"
#import "HIDrilldown.h"

@implementation HIDrilldown

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDrilldown *copyDrilldown = [[HIDrilldown allocWithZone: zone] init];
	copyDrilldown.activeDataLabelStyle = [self.activeDataLabelStyle copyWithZone: zone];
	copyDrilldown.series = [self.series copyWithZone: zone];
	copyDrilldown.allowPointDrilldown = [self.allowPointDrilldown copyWithZone: zone];
	copyDrilldown.animation = [self.animation copyWithZone: zone];
	copyDrilldown.drillUpButton = [self.drillUpButton copyWithZone: zone];
	copyDrilldown.activeAxisLabelStyle = [self.activeAxisLabelStyle copyWithZone: zone];
	return copyDrilldown;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.activeDataLabelStyle) {
		params[@"activeDataLabelStyle"] = [self.activeDataLabelStyle getParams];
	}
	if (self.series) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.series) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"series"] = array;
	}
	if (self.allowPointDrilldown) {
		params[@"allowPointDrilldown"] = self.allowPointDrilldown;
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	if (self.drillUpButton) {
		params[@"drillUpButton"] = [self.drillUpButton getParams];
	}
	if (self.activeAxisLabelStyle) {
		params[@"activeAxisLabelStyle"] = [self.activeAxisLabelStyle getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setActiveDataLabelStyle:(HICSSObject *)activeDataLabelStyle {
	HICSSObject *oldValue = _activeDataLabelStyle;
	_activeDataLabelStyle = activeDataLabelStyle;
	[self updateHIObject:oldValue newValue:activeDataLabelStyle propertyName:@"activeDataLabelStyle"];
}

-(void)setSeries:(NSArray *)series {
	NSArray *oldValue = _series;
	_series = series;
	[self updateArrayObject:oldValue newValue:series propertyName:@"series"];
}

-(void)setAllowPointDrilldown:(NSNumber *)allowPointDrilldown {
	NSNumber *oldValue = _allowPointDrilldown;
	_allowPointDrilldown = allowPointDrilldown;
	[self updateNSObject:oldValue newValue:allowPointDrilldown propertyName:@"allowPointDrilldown"];
}

-(void)setAnimation:(HIAnimationOptionsObject *)animation {
	HIAnimationOptionsObject *oldValue = _animation;
	_animation = animation;
	[self updateHIObject:oldValue newValue:animation propertyName:@"animation"];
}

-(void)setDrillUpButton:(HIDrillUpButton *)drillUpButton {
	HIDrillUpButton *oldValue = _drillUpButton;
	_drillUpButton = drillUpButton;
	[self updateHIObject:oldValue newValue:drillUpButton propertyName:@"drillUpButton"];
}

-(void)setActiveAxisLabelStyle:(HICSSObject *)activeAxisLabelStyle {
	HICSSObject *oldValue = _activeAxisLabelStyle;
	_activeAxisLabelStyle = activeAxisLabelStyle;
	[self updateHIObject:oldValue newValue:activeAxisLabelStyle propertyName:@"activeAxisLabelStyle"];
}

@end