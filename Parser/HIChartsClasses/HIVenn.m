#import "HIChartsJSONSerializableSubclass.h"
#import "HIVenn.h"

@implementation HIVenn

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"venn";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIVenn *copyVenn = [[HIVenn allocWithZone: zone] init];
	copyVenn.states = [self.states copyWithZone: zone];
	copyVenn.data = [self.data copyWithZone: zone];
	copyVenn.id = [self.id copyWithZone: zone];
	copyVenn.index = [self.index copyWithZone: zone];
	copyVenn.legendIndex = [self.legendIndex copyWithZone: zone];
	copyVenn.name = [self.name copyWithZone: zone];
	copyVenn.type = [self.type copyWithZone: zone];
	copyVenn.zIndex = [self.zIndex copyWithZone: zone];
	copyVenn.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyVenn.opacity = [self.opacity copyWithZone: zone];
	copyVenn.borderDashStyle = [self.borderDashStyle copyWithZone: zone];
	copyVenn.clip = [self.clip copyWithZone: zone];
	copyVenn.legendSymbol = [self.legendSymbol copyWithZone: zone];
	copyVenn.brighten = [self.brighten copyWithZone: zone];
	copyVenn.tooltip = [self.tooltip copyWithZone: zone];
	copyVenn.dataLabels = [self.dataLabels copyWithZone: zone];
	copyVenn.showInLegend = [self.showInLegend copyWithZone: zone];
	copyVenn.cluster = [self.cluster copyWithZone: zone];
	copyVenn.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyVenn.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyVenn.colorIndex = [self.colorIndex copyWithZone: zone];
	copyVenn.color = [self.color copyWithZone: zone];
	copyVenn.colorKey = [self.colorKey copyWithZone: zone];
	copyVenn.point = [self.point copyWithZone: zone];
	copyVenn.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyVenn.cursor = [self.cursor copyWithZone: zone];
	copyVenn.dashStyle = [self.dashStyle copyWithZone: zone];
	copyVenn.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyVenn.custom = [self.custom copyWithZone: zone];
	copyVenn.onPoint = [self.onPoint copyWithZone: zone];
	copyVenn.animation = [self.animation copyWithZone: zone];
	copyVenn.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyVenn.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyVenn.events = [self.events copyWithZone: zone];
	copyVenn.animationLimit = [self.animationLimit copyWithZone: zone];
	copyVenn.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyVenn.definition = [self.definition copyWithZone: zone];
	copyVenn.keys = [self.keys copyWithZone: zone];
	copyVenn.selected = [self.selected copyWithZone: zone];
	copyVenn.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyVenn.accessibility = [self.accessibility copyWithZone: zone];
	copyVenn.step = [self.step copyWithZone: zone];
	copyVenn.sonification = [self.sonification copyWithZone: zone];
	copyVenn.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyVenn.colorAxis = [self.colorAxis copyWithZone: zone];
	copyVenn.crisp = [self.crisp copyWithZone: zone];
	copyVenn.visible = [self.visible copyWithZone: zone];
	copyVenn.className = [self.className copyWithZone: zone];
	return copyVenn;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.borderDashStyle) {
		params[@"borderDashStyle"] = self.borderDashStyle;
	}
	if (self.brighten) {
		params[@"brighten"] = self.brighten;
	}
	if (self.cluster) {
		params[@"cluster"] = [self.cluster getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	NSNumber *oldValue = _colorByPoint;
	_colorByPoint = colorByPoint;
	[self updateNSObject:oldValue newValue:colorByPoint propertyName:@"colorByPoint"];
}

-(void)setBorderDashStyle:(NSString *)borderDashStyle {
	NSString *oldValue = _borderDashStyle;
	_borderDashStyle = borderDashStyle;
	[self updateNSObject:oldValue newValue:borderDashStyle propertyName:@"borderDashStyle"];
}

-(void)setBrighten:(NSNumber *)brighten {
	NSNumber *oldValue = _brighten;
	_brighten = brighten;
	[self updateNSObject:oldValue newValue:brighten propertyName:@"brighten"];
}

-(void)setCluster:(HICluster *)cluster {
	HICluster *oldValue = _cluster;
	_cluster = cluster;
	[self updateHIObject:oldValue newValue:cluster propertyName:@"cluster"];
}

@end