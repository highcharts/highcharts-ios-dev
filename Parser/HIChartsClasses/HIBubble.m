#import "HIChartsJSONSerializableSubclass.h"
#import "HIBubble.h"

@implementation HIBubble

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"bubble";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIBubble *copyBubble = [[HIBubble allocWithZone: zone] init];
	copyBubble.marker = [self.marker copyWithZone: zone];
	copyBubble.data = [self.data copyWithZone: zone];
	copyBubble.id = [self.id copyWithZone: zone];
	copyBubble.index = [self.index copyWithZone: zone];
	copyBubble.legendIndex = [self.legendIndex copyWithZone: zone];
	copyBubble.name = [self.name copyWithZone: zone];
	copyBubble.type = [self.type copyWithZone: zone];
	copyBubble.xAxis = [self.xAxis copyWithZone: zone];
	copyBubble.yAxis = [self.yAxis copyWithZone: zone];
	copyBubble.zIndex = [self.zIndex copyWithZone: zone];
	copyBubble.animationLimit = [self.animationLimit copyWithZone: zone];
	copyBubble.zMax = [self.zMax copyWithZone: zone];
	copyBubble.sizeBy = [self.sizeBy copyWithZone: zone];
	copyBubble.negativeColor = [self.negativeColor copyWithZone: zone];
	copyBubble.zMin = [self.zMin copyWithZone: zone];
	copyBubble.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyBubble.tooltip = [self.tooltip copyWithZone: zone];
	copyBubble.dataLabels = [self.dataLabels copyWithZone: zone];
	copyBubble.minSize = [self.minSize copyWithZone: zone];
	copyBubble.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyBubble.maxSize = [self.maxSize copyWithZone: zone];
	copyBubble.softThreshold = [self.softThreshold copyWithZone: zone];
	copyBubble.zThreshold = [self.zThreshold copyWithZone: zone];
	copyBubble.displayNegative = [self.displayNegative copyWithZone: zone];
	copyBubble.sizeByAbsoluteValue = [self.sizeByAbsoluteValue copyWithZone: zone];
	copyBubble.states = [self.states copyWithZone: zone];
	copyBubble.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyBubble.lineWidth = [self.lineWidth copyWithZone: zone];
	copyBubble.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyBubble.linecap = [self.linecap copyWithZone: zone];
	copyBubble.selected = [self.selected copyWithZone: zone];
	copyBubble.colorIndex = [self.colorIndex copyWithZone: zone];
	copyBubble.clip = [self.clip copyWithZone: zone];
	copyBubble.point = [self.point copyWithZone: zone];
	copyBubble.color = [self.color copyWithZone: zone];
	copyBubble.pointInterval = [self.pointInterval copyWithZone: zone];
	copyBubble.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyBubble.threshold = [self.threshold copyWithZone: zone];
	copyBubble.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyBubble.borderColor = [self.borderColor copyWithZone: zone];
	copyBubble.cursor = [self.cursor copyWithZone: zone];
	copyBubble.dashStyle = [self.dashStyle copyWithZone: zone];
	copyBubble.connectNulls = [self.connectNulls copyWithZone: zone];
	copyBubble.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyBubble.label = [self.label copyWithZone: zone];
	copyBubble.stacking = [self.stacking copyWithZone: zone];
	copyBubble.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyBubble.events = [self.events copyWithZone: zone];
	copyBubble.definition = [self.definition copyWithZone: zone];
	copyBubble.keys = [self.keys copyWithZone: zone];
	copyBubble.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyBubble.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyBubble.step = [self.step copyWithZone: zone];
	copyBubble.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyBubble.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyBubble.animation = [self.animation copyWithZone: zone];
	copyBubble.zones = [self.zones copyWithZone: zone];
	copyBubble.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyBubble.connectEnds = [self.connectEnds copyWithZone: zone];
	copyBubble.visible = [self.visible copyWithZone: zone];
	copyBubble.linkedTo = [self.linkedTo copyWithZone: zone];
	copyBubble.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copyBubble.className = [self.className copyWithZone: zone];
	copyBubble.pointStart = [self.pointStart copyWithZone: zone];
	copyBubble.borderWidth = [self.borderWidth copyWithZone: zone];
	copyBubble.showInLegend = [self.showInLegend copyWithZone: zone];
	return copyBubble;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.zMax) {
		params[@"zMax"] = self.zMax;
	}
	if (self.sizeBy) {
		params[@"sizeBy"] = self.sizeBy;
	}
	if (self.zMin) {
		params[@"zMin"] = self.zMin;
	}
	if (self.minSize) {
		params[@"minSize"] = self.minSize;
	}
	if (self.maxSize) {
		params[@"maxSize"] = self.maxSize;
	}
	if (self.zThreshold) {
		params[@"zThreshold"] = self.zThreshold;
	}
	if (self.displayNegative) {
		params[@"displayNegative"] = self.displayNegative;
	}
	if (self.sizeByAbsoluteValue) {
		params[@"sizeByAbsoluteValue"] = self.sizeByAbsoluteValue;
	}
	return params;
}

# pragma mark - Setters

-(void)setZMax:(NSNumber *)zMax {
	_zMax = zMax;
	[self updateNSObject:@"zMax"];
}

-(void)setSizeBy:(NSString *)sizeBy {
	_sizeBy = sizeBy;
	[self updateNSObject:@"sizeBy"];
}

-(void)setZMin:(NSNumber *)zMin {
	_zMin = zMin;
	[self updateNSObject:@"zMin"];
}

-(void)setMinSize:(id)minSize {
	_minSize = minSize;
	[self updateNSObject:@"minSize"];
}

-(void)setMaxSize:(id)maxSize {
	_maxSize = maxSize;
	[self updateNSObject:@"maxSize"];
}

-(void)setZThreshold:(NSNumber *)zThreshold {
	_zThreshold = zThreshold;
	[self updateNSObject:@"zThreshold"];
}

-(void)setDisplayNegative:(NSNumber *)displayNegative {
	_displayNegative = displayNegative;
	[self updateNSObject:@"displayNegative"];
}

-(void)setSizeByAbsoluteValue:(NSNumber *)sizeByAbsoluteValue {
	_sizeByAbsoluteValue = sizeByAbsoluteValue;
	[self updateNSObject:@"sizeByAbsoluteValue"];
}

@end