#import "HIChartsJSONSerializableSubclass.h"
#import "HICluster.h"

@implementation HICluster

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HICluster *copyCluster = [[HICluster allocWithZone: zone] init];
	copyCluster.allowOverlap = [self.allowOverlap copyWithZone: zone];
	copyCluster.states = [self.states copyWithZone: zone];
	copyCluster.zones = [self.zones copyWithZone: zone];
	copyCluster.enabled = [self.enabled copyWithZone: zone];
	copyCluster.layoutAlgorithm = [self.layoutAlgorithm copyWithZone: zone];
	copyCluster.dataLabels = [self.dataLabels copyWithZone: zone];
	copyCluster.drillToCluster = [self.drillToCluster copyWithZone: zone];
	copyCluster.animation = [self.animation copyWithZone: zone];
	copyCluster.marker = [self.marker copyWithZone: zone];
	copyCluster.minimumClusterSize = [self.minimumClusterSize copyWithZone: zone];
	copyCluster.events = [self.events copyWithZone: zone];
	return copyCluster;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.allowOverlap) {
		params[@"allowOverlap"] = self.allowOverlap;
	}
	if (self.states) {
		params[@"states"] = [self.states getParams];
	}
	if (self.zones) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.zones) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"zones"] = array;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.layoutAlgorithm) {
		params[@"layoutAlgorithm"] = [self.layoutAlgorithm getParams];
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = [self.dataLabels getParams];
	}
	if (self.drillToCluster) {
		params[@"drillToCluster"] = self.drillToCluster;
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.minimumClusterSize) {
		params[@"minimumClusterSize"] = self.minimumClusterSize;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setAllowOverlap:(NSNumber *)allowOverlap {
	NSNumber *oldValue = _allowOverlap;
	_allowOverlap = allowOverlap;
	[self updateNSObject:oldValue newValue:allowOverlap propertyName:@"allowOverlap"];
}

-(void)setStates:(HIStates *)states {
	HIStates *oldValue = _states;
	_states = states;
	[self updateHIObject:oldValue newValue:states propertyName:@"states"];
}

-(void)setZones:(NSArray <HIZones *> *)zones {
	NSArray <HIZones *> *oldValue = _zones;
	_zones = zones;
	[self updateArrayObject:oldValue newValue:zones propertyName:@"zones"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setLayoutAlgorithm:(HILayoutAlgorithm *)layoutAlgorithm {
	HILayoutAlgorithm *oldValue = _layoutAlgorithm;
	_layoutAlgorithm = layoutAlgorithm;
	[self updateHIObject:oldValue newValue:layoutAlgorithm propertyName:@"layoutAlgorithm"];
}

-(void)setDataLabels:(HIDataLabels *)dataLabels {
	HIDataLabels *oldValue = _dataLabels;
	_dataLabels = dataLabels;
	[self updateHIObject:oldValue newValue:dataLabels propertyName:@"dataLabels"];
}

-(void)setDrillToCluster:(NSNumber *)drillToCluster {
	NSNumber *oldValue = _drillToCluster;
	_drillToCluster = drillToCluster;
	[self updateNSObject:oldValue newValue:drillToCluster propertyName:@"drillToCluster"];
}

-(void)setAnimation:(HIAnimationOptionsObject *)animation {
	HIAnimationOptionsObject *oldValue = _animation;
	_animation = animation;
	[self updateHIObject:oldValue newValue:animation propertyName:@"animation"];
}

-(void)setMarker:(HIMarker *)marker {
	HIMarker *oldValue = _marker;
	_marker = marker;
	[self updateHIObject:oldValue newValue:marker propertyName:@"marker"];
}

-(void)setMinimumClusterSize:(NSNumber *)minimumClusterSize {
	NSNumber *oldValue = _minimumClusterSize;
	_minimumClusterSize = minimumClusterSize;
	[self updateNSObject:oldValue newValue:minimumClusterSize propertyName:@"minimumClusterSize"];
}

-(void)setEvents:(HIEvents *)events {
	HIEvents *oldValue = _events;
	_events = events;
	[self updateHIObject:oldValue newValue:events propertyName:@"events"];
}

@end
