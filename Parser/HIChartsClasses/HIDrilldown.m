#import "HIDrilldown.h"

@implementation HIDrilldown

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.allowPointDrilldown) {
		params[@"allowPointDrilldown"] = self.allowPointDrilldown;
	}
	if (self.activeAxisLabelStyle) {
		params[@"activeAxisLabelStyle"] = [self.activeAxisLabelStyle getParams];
	}
	if (self.drillUpButton) {
		params[@"drillUpButton"] = [self.drillUpButton getParams];
	}
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
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setAllowPointDrilldown:(NSNumber *)allowPointDrilldown {
	_allowPointDrilldown = allowPointDrilldown;
	[self updateNSObject:@"allowPointDrilldown"];
}

-(void)setActiveAxisLabelStyle:(HIActiveAxisLabelStyle *)activeAxisLabelStyle {
	HIActiveAxisLabelStyle *oldValue = _activeAxisLabelStyle;
	if(self.activeAxisLabelStyle) {
		[self removeObserver:self forKeyPath:@"activeAxisLabelStyle.isUpdated"];
	}
	_activeAxisLabelStyle = activeAxisLabelStyle;
	[self updateHIObject:oldValue newValue:activeAxisLabelStyle propertyName:@"activeAxisLabelStyle"];
}

-(void)setDrillUpButton:(HIDrillUpButton *)drillUpButton {
	HIDrillUpButton *oldValue = _drillUpButton;
	if(self.drillUpButton) {
		[self removeObserver:self forKeyPath:@"drillUpButton.isUpdated"];
	}
	_drillUpButton = drillUpButton;
	[self updateHIObject:oldValue newValue:drillUpButton propertyName:@"drillUpButton"];
}

-(void)setActiveDataLabelStyle:(HIActiveDataLabelStyle *)activeDataLabelStyle {
	HIActiveDataLabelStyle *oldValue = _activeDataLabelStyle;
	if(self.activeDataLabelStyle) {
		[self removeObserver:self forKeyPath:@"activeDataLabelStyle.isUpdated"];
	}
	_activeDataLabelStyle = activeDataLabelStyle;
	[self updateHIObject:oldValue newValue:activeDataLabelStyle propertyName:@"activeDataLabelStyle"];
}

-(void)setSeries:(NSArray *)series {
	NSArray *oldValue = _series;
	_series = series;
	[self updateArrayObject:oldValue newValue:series propertyName:@"series"];
}

-(void)setAnimation:(HIAnimation *)animation {
	HIAnimation *oldValue = _animation;
	if(self.animation) {
		[self removeObserver:self forKeyPath:@"animation.isUpdated"];
	}
	_animation = animation;
	[self updateHIObject:oldValue newValue:animation propertyName:@"animation"];
}

@end