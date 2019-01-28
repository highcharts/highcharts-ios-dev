#import "HIChartsJSONSerializableSubclass.h"
#import "HIVector.h"

@implementation HIVector

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"vector";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIVector *copyVector = [[HIVector allocWithZone: zone] init];
	copyVector.states = [self.states copyWithZone: zone];
	copyVector.vectorLength = [self.vectorLength copyWithZone: zone];
	copyVector.lineWidth = [self.lineWidth copyWithZone: zone];
	copyVector.tooltip = [self.tooltip copyWithZone: zone];
	copyVector.rotationOrigin = [self.rotationOrigin copyWithZone: zone];
	copyVector.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyVector.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyVector.point = [self.point copyWithZone: zone];
	copyVector.selected = [self.selected copyWithZone: zone];
	copyVector.colorIndex = [self.colorIndex copyWithZone: zone];
	copyVector.clip = [self.clip copyWithZone: zone];
	copyVector.negativeColor = [self.negativeColor copyWithZone: zone];
	copyVector.color = [self.color copyWithZone: zone];
	copyVector.pointInterval = [self.pointInterval copyWithZone: zone];
	copyVector.softThreshold = [self.softThreshold copyWithZone: zone];
	copyVector.dragDrop = [self.dragDrop copyWithZone: zone];
	copyVector.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyVector.className = [self.className copyWithZone: zone];
	copyVector.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyVector.label = [self.label copyWithZone: zone];
	copyVector.animation = [self.animation copyWithZone: zone];
	copyVector.threshold = [self.threshold copyWithZone: zone];
	copyVector.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyVector.events = [self.events copyWithZone: zone];
	copyVector.animationLimit = [self.animationLimit copyWithZone: zone];
	copyVector.definition = [self.definition copyWithZone: zone];
	copyVector.keys = [self.keys copyWithZone: zone];
	copyVector.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyVector.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyVector.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyVector.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyVector.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyVector.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyVector.zones = [self.zones copyWithZone: zone];
	copyVector.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyVector.visible = [self.visible copyWithZone: zone];
	copyVector.linkedTo = [self.linkedTo copyWithZone: zone];
	copyVector.dataLabels = [self.dataLabels copyWithZone: zone];
	copyVector.cursor = [self.cursor copyWithZone: zone];
	copyVector.pointStart = [self.pointStart copyWithZone: zone];
	copyVector.showInLegend = [self.showInLegend copyWithZone: zone];
	copyVector.data = [self.data copyWithZone: zone];
	copyVector.id = [self.id copyWithZone: zone];
	copyVector.index = [self.index copyWithZone: zone];
	copyVector.legendIndex = [self.legendIndex copyWithZone: zone];
	copyVector.name = [self.name copyWithZone: zone];
	copyVector.stack = [self.stack copyWithZone: zone];
	copyVector.type = [self.type copyWithZone: zone];
	copyVector.xAxis = [self.xAxis copyWithZone: zone];
	copyVector.yAxis = [self.yAxis copyWithZone: zone];
	copyVector.zIndex = [self.zIndex copyWithZone: zone];
	return copyVector;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.vectorLength) {
		params[@"vectorLength"] = self.vectorLength;
	}
	if (self.rotationOrigin) {
		params[@"rotationOrigin"] = self.rotationOrigin;
	}
	return params;
}

# pragma mark - Setters

-(void)setVectorLength:(NSNumber *)vectorLength {
	NSNumber *oldValue = _vectorLength;
	_vectorLength = vectorLength;
	[self updateNSObject:oldValue newValue:vectorLength propertyName:@"vectorLength"];
}

-(void)setRotationOrigin:(NSString *)rotationOrigin {
	NSString *oldValue = _rotationOrigin;
	_rotationOrigin = rotationOrigin;
	[self updateNSObject:oldValue newValue:rotationOrigin propertyName:@"rotationOrigin"];
}

@end