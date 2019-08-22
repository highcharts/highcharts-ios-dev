#import "HIChartsJSONSerializableSubclass.h"
#import "HITimeline.h"

@implementation HITimeline

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"timeline";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HITimeline *copyTimeline = [[HITimeline allocWithZone: zone] init];
	copyTimeline.data = [self.data copyWithZone: zone];
	copyTimeline.id = [self.id copyWithZone: zone];
	copyTimeline.index = [self.index copyWithZone: zone];
	copyTimeline.legendIndex = [self.legendIndex copyWithZone: zone];
	copyTimeline.name = [self.name copyWithZone: zone];
	copyTimeline.type = [self.type copyWithZone: zone];
	copyTimeline.xAxis = [self.xAxis copyWithZone: zone];
	copyTimeline.yAxis = [self.yAxis copyWithZone: zone];
	copyTimeline.zIndex = [self.zIndex copyWithZone: zone];
	copyTimeline.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyTimeline.ignoreHiddenPoint = [self.ignoreHiddenPoint copyWithZone: zone];
	copyTimeline.tooltip = [self.tooltip copyWithZone: zone];
	copyTimeline.dataLabels = [self.dataLabels copyWithZone: zone];
	copyTimeline.states = [self.states copyWithZone: zone];
	copyTimeline.marker = [self.marker copyWithZone: zone];
	copyTimeline.legendType = [self.legendType copyWithZone: zone];
	copyTimeline.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyTimeline.showInLegend = [self.showInLegend copyWithZone: zone];
	copyTimeline.linecap = [self.linecap copyWithZone: zone];
	copyTimeline.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyTimeline.selected = [self.selected copyWithZone: zone];
	copyTimeline.colorIndex = [self.colorIndex copyWithZone: zone];
	copyTimeline.clip = [self.clip copyWithZone: zone];
	copyTimeline.color = [self.color copyWithZone: zone];
	copyTimeline.dragDrop = [self.dragDrop copyWithZone: zone];
	copyTimeline.point = [self.point copyWithZone: zone];
	copyTimeline.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyTimeline.className = [self.className copyWithZone: zone];
	copyTimeline.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyTimeline.label = [self.label copyWithZone: zone];
	copyTimeline.animation = [self.animation copyWithZone: zone];
	copyTimeline.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyTimeline.boostBlending = [self.boostBlending copyWithZone: zone];
	copyTimeline.events = [self.events copyWithZone: zone];
	copyTimeline.opacity = [self.opacity copyWithZone: zone];
	copyTimeline.definition = [self.definition copyWithZone: zone];
	copyTimeline.keys = [self.keys copyWithZone: zone];
	copyTimeline.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyTimeline.accessibility = [self.accessibility copyWithZone: zone];
	copyTimeline.shadow = [self.shadow copyWithZone: zone];
	copyTimeline.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyTimeline.visible = [self.visible copyWithZone: zone];
	copyTimeline.linkedTo = [self.linkedTo copyWithZone: zone];
	copyTimeline.cursor = [self.cursor copyWithZone: zone];
	return copyTimeline;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.ignoreHiddenPoint) {
		params[@"ignoreHiddenPoint"] = self.ignoreHiddenPoint;
	}
	if (self.legendType) {
		params[@"legendType"] = self.legendType;
	}
	return params;
}

# pragma mark - Setters

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	NSNumber *oldValue = _colorByPoint;
	_colorByPoint = colorByPoint;
	[self updateNSObject:oldValue newValue:colorByPoint propertyName:@"colorByPoint"];
}

-(void)setIgnoreHiddenPoint:(NSNumber *)ignoreHiddenPoint {
	NSNumber *oldValue = _ignoreHiddenPoint;
	_ignoreHiddenPoint = ignoreHiddenPoint;
	[self updateNSObject:oldValue newValue:ignoreHiddenPoint propertyName:@"ignoreHiddenPoint"];
}

-(void)setLegendType:(NSString *)legendType {
	NSString *oldValue = _legendType;
	_legendType = legendType;
	[self updateNSObject:oldValue newValue:legendType propertyName:@"legendType"];
}

@end