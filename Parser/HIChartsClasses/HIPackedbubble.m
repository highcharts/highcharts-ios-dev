#import "HIChartsJSONSerializableSubclass.h"
#import "HIPackedbubble.h"

@implementation HIPackedbubble

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"packedbubble";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPackedbubble *copyPackedbubble = [[HIPackedbubble allocWithZone: zone] init];
	copyPackedbubble.marker = [self.marker copyWithZone: zone];
	copyPackedbubble.data = [self.data copyWithZone: zone];
	copyPackedbubble.id = [self.id copyWithZone: zone];
	copyPackedbubble.index = [self.index copyWithZone: zone];
	copyPackedbubble.legendIndex = [self.legendIndex copyWithZone: zone];
	copyPackedbubble.name = [self.name copyWithZone: zone];
	copyPackedbubble.type = [self.type copyWithZone: zone];
	copyPackedbubble.xAxis = [self.xAxis copyWithZone: zone];
	copyPackedbubble.yAxis = [self.yAxis copyWithZone: zone];
	copyPackedbubble.zIndex = [self.zIndex copyWithZone: zone];
	copyPackedbubble.minSize = [self.minSize copyWithZone: zone];
	copyPackedbubble.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyPackedbubble.maxSize = [self.maxSize copyWithZone: zone];
	copyPackedbubble.tooltip = [self.tooltip copyWithZone: zone];
	copyPackedbubble.sizeBy = [self.sizeBy copyWithZone: zone];
	copyPackedbubble.animationLimit = [self.animationLimit copyWithZone: zone];
	copyPackedbubble.negativeColor = [self.negativeColor copyWithZone: zone];
	copyPackedbubble.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyPackedbubble.dataLabels = [self.dataLabels copyWithZone: zone];
	copyPackedbubble.displayNegative = [self.displayNegative copyWithZone: zone];
	copyPackedbubble.zThreshold = [self.zThreshold copyWithZone: zone];
	copyPackedbubble.softThreshold = [self.softThreshold copyWithZone: zone];
	copyPackedbubble.states = [self.states copyWithZone: zone];
	copyPackedbubble.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyPackedbubble.lineWidth = [self.lineWidth copyWithZone: zone];
	copyPackedbubble.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyPackedbubble.linecap = [self.linecap copyWithZone: zone];
	copyPackedbubble.point = [self.point copyWithZone: zone];
	copyPackedbubble.selected = [self.selected copyWithZone: zone];
	copyPackedbubble.colorIndex = [self.colorIndex copyWithZone: zone];
	copyPackedbubble.clip = [self.clip copyWithZone: zone];
	copyPackedbubble.color = [self.color copyWithZone: zone];
	copyPackedbubble.pointInterval = [self.pointInterval copyWithZone: zone];
	copyPackedbubble.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyPackedbubble.dragDrop = [self.dragDrop copyWithZone: zone];
	copyPackedbubble.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyPackedbubble.className = [self.className copyWithZone: zone];
	copyPackedbubble.dashStyle = [self.dashStyle copyWithZone: zone];
	copyPackedbubble.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyPackedbubble.label = [self.label copyWithZone: zone];
	copyPackedbubble.stacking = [self.stacking copyWithZone: zone];
	copyPackedbubble.animation = [self.animation copyWithZone: zone];
	copyPackedbubble.threshold = [self.threshold copyWithZone: zone];
	copyPackedbubble.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyPackedbubble.events = [self.events copyWithZone: zone];
	copyPackedbubble.definition = [self.definition copyWithZone: zone];
	copyPackedbubble.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyPackedbubble.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyPackedbubble.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyPackedbubble.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyPackedbubble.zones = [self.zones copyWithZone: zone];
	copyPackedbubble.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyPackedbubble.visible = [self.visible copyWithZone: zone];
	copyPackedbubble.linkedTo = [self.linkedTo copyWithZone: zone];
	copyPackedbubble.cursor = [self.cursor copyWithZone: zone];
	copyPackedbubble.pointStart = [self.pointStart copyWithZone: zone];
	copyPackedbubble.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copyPackedbubble.showInLegend = [self.showInLegend copyWithZone: zone];
	return copyPackedbubble;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.minSize) {
		params[@"minSize"] = self.minSize;
	}
	if (self.maxSize) {
		params[@"maxSize"] = self.maxSize;
	}
	if (self.sizeBy) {
		params[@"sizeBy"] = self.sizeBy;
	}
	if (self.displayNegative) {
		params[@"displayNegative"] = self.displayNegative;
	}
	if (self.zThreshold) {
		params[@"zThreshold"] = self.zThreshold;
	}
	return params;
}

# pragma mark - Setters

-(void)setMinSize:(id)minSize {
	id oldValue = _minSize;
	_minSize = minSize;
	[self updateNSObject:oldValue newValue:minSize propertyName:@"minSize"];
}

-(void)setMaxSize:(id)maxSize {
	id oldValue = _maxSize;
	_maxSize = maxSize;
	[self updateNSObject:oldValue newValue:maxSize propertyName:@"maxSize"];
}

-(void)setSizeBy:(NSString *)sizeBy {
	NSString *oldValue = _sizeBy;
	_sizeBy = sizeBy;
	[self updateNSObject:oldValue newValue:sizeBy propertyName:@"sizeBy"];
}

-(void)setDisplayNegative:(NSNumber *)displayNegative {
	NSNumber *oldValue = _displayNegative;
	_displayNegative = displayNegative;
	[self updateNSObject:oldValue newValue:displayNegative propertyName:@"displayNegative"];
}

-(void)setZThreshold:(NSNumber *)zThreshold {
	NSNumber *oldValue = _zThreshold;
	_zThreshold = zThreshold;
	[self updateNSObject:oldValue newValue:zThreshold propertyName:@"zThreshold"];
}

@end