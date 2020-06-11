#import "HIChartsJSONSerializableSubclass.h"
#import "HISolidgauge.h"

@implementation HISolidgauge

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"solidgauge";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISolidgauge *copySolidgauge = [[HISolidgauge allocWithZone: zone] init];
	copySolidgauge.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copySolidgauge.rounded = [self.rounded copyWithZone: zone];
	copySolidgauge.innerRadius = [self.innerRadius copyWithZone: zone];
	copySolidgauge.overshoot = [self.overshoot copyWithZone: zone];
	copySolidgauge.dataLabels = [self.dataLabels copyWithZone: zone];
	copySolidgauge.radius = [self.radius copyWithZone: zone];
	copySolidgauge.linecap = [self.linecap copyWithZone: zone];
	copySolidgauge.threshold = [self.threshold copyWithZone: zone];
	copySolidgauge.tooltip = [self.tooltip copyWithZone: zone];
	copySolidgauge.showInLegend = [self.showInLegend copyWithZone: zone];
	copySolidgauge.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copySolidgauge.selected = [self.selected copyWithZone: zone];
	copySolidgauge.colorIndex = [self.colorIndex copyWithZone: zone];
	copySolidgauge.clip = [self.clip copyWithZone: zone];
	copySolidgauge.color = [self.color copyWithZone: zone];
	copySolidgauge.pointInterval = [self.pointInterval copyWithZone: zone];
	copySolidgauge.point = [self.point copyWithZone: zone];
	copySolidgauge.label = [self.label copyWithZone: zone];
	copySolidgauge.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copySolidgauge.cursor = [self.cursor copyWithZone: zone];
	copySolidgauge.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copySolidgauge.custom = [self.custom copyWithZone: zone];
	copySolidgauge.animation = [self.animation copyWithZone: zone];
	copySolidgauge.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copySolidgauge.boostBlending = [self.boostBlending copyWithZone: zone];
	copySolidgauge.events = [self.events copyWithZone: zone];
	copySolidgauge.opacity = [self.opacity copyWithZone: zone];
	copySolidgauge.definition = [self.definition copyWithZone: zone];
	copySolidgauge.keys = [self.keys copyWithZone: zone];
	copySolidgauge.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copySolidgauge.accessibility = [self.accessibility copyWithZone: zone];
	copySolidgauge.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copySolidgauge.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copySolidgauge.lineWidth = [self.lineWidth copyWithZone: zone];
	copySolidgauge.crisp = [self.crisp copyWithZone: zone];
	copySolidgauge.visible = [self.visible copyWithZone: zone];
	copySolidgauge.linkedTo = [self.linkedTo copyWithZone: zone];
	copySolidgauge.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copySolidgauge.className = [self.className copyWithZone: zone];
	copySolidgauge.pointStart = [self.pointStart copyWithZone: zone];
	copySolidgauge.data = [self.data copyWithZone: zone];
	copySolidgauge.id = [self.id copyWithZone: zone];
	copySolidgauge.index = [self.index copyWithZone: zone];
	copySolidgauge.legendIndex = [self.legendIndex copyWithZone: zone];
	copySolidgauge.name = [self.name copyWithZone: zone];
	copySolidgauge.type = [self.type copyWithZone: zone];
	copySolidgauge.xAxis = [self.xAxis copyWithZone: zone];
	copySolidgauge.yAxis = [self.yAxis copyWithZone: zone];
	copySolidgauge.zIndex = [self.zIndex copyWithZone: zone];
	return copySolidgauge;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.rounded) {
		params[@"rounded"] = self.rounded;
	}
	if (self.innerRadius) {
		params[@"innerRadius"] = self.innerRadius;
	}
	if (self.overshoot) {
		params[@"overshoot"] = self.overshoot;
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	return params;
}

# pragma mark - Setters

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	NSNumber *oldValue = _colorByPoint;
	_colorByPoint = colorByPoint;
	[self updateNSObject:oldValue newValue:colorByPoint propertyName:@"colorByPoint"];
}

-(void)setRounded:(NSNumber *)rounded {
	NSNumber *oldValue = _rounded;
	_rounded = rounded;
	[self updateNSObject:oldValue newValue:rounded propertyName:@"rounded"];
}

-(void)setInnerRadius:(id)innerRadius {
	id oldValue = _innerRadius;
	_innerRadius = innerRadius;
	[self updateNSObject:oldValue newValue:innerRadius propertyName:@"innerRadius"];
}

-(void)setOvershoot:(NSNumber *)overshoot {
	NSNumber *oldValue = _overshoot;
	_overshoot = overshoot;
	[self updateNSObject:oldValue newValue:overshoot propertyName:@"overshoot"];
}

-(void)setRadius:(id)radius {
	id oldValue = _radius;
	_radius = radius;
	[self updateNSObject:oldValue newValue:radius propertyName:@"radius"];
}

@end