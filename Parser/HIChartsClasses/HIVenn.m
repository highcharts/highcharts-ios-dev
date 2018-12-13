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
	copyVenn.data = [self.data copyWithZone: zone];
	copyVenn.id = [self.id copyWithZone: zone];
	copyVenn.index = [self.index copyWithZone: zone];
	copyVenn.legendIndex = [self.legendIndex copyWithZone: zone];
	copyVenn.name = [self.name copyWithZone: zone];
	copyVenn.type = [self.type copyWithZone: zone];
	copyVenn.zIndex = [self.zIndex copyWithZone: zone];
	copyVenn.borderColor = [self.borderColor copyWithZone: zone];
	copyVenn.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyVenn.opacity = [self.opacity copyWithZone: zone];
	copyVenn.borderDashStyle = [self.borderDashStyle copyWithZone: zone];
	copyVenn.clip = [self.clip copyWithZone: zone];
	copyVenn.brighten = [self.brighten copyWithZone: zone];
	copyVenn.tooltip = [self.tooltip copyWithZone: zone];
	copyVenn.dataLabels = [self.dataLabels copyWithZone: zone];
	copyVenn.states = [self.states copyWithZone: zone];
	copyVenn.borderWidth = [self.borderWidth copyWithZone: zone];
	copyVenn.showInLegend = [self.showInLegend copyWithZone: zone];
	copyVenn.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyVenn.point = [self.point copyWithZone: zone];
	copyVenn.selected = [self.selected copyWithZone: zone];
	copyVenn.colorIndex = [self.colorIndex copyWithZone: zone];
	copyVenn.color = [self.color copyWithZone: zone];
	copyVenn.dragDrop = [self.dragDrop copyWithZone: zone];
	copyVenn.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyVenn.className = [self.className copyWithZone: zone];
	copyVenn.dashStyle = [self.dashStyle copyWithZone: zone];
	copyVenn.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyVenn.animation = [self.animation copyWithZone: zone];
	copyVenn.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyVenn.events = [self.events copyWithZone: zone];
	copyVenn.animationLimit = [self.animationLimit copyWithZone: zone];
	copyVenn.definition = [self.definition copyWithZone: zone];
	copyVenn.keys = [self.keys copyWithZone: zone];
	copyVenn.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyVenn.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyVenn.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyVenn.step = [self.step copyWithZone: zone];
	copyVenn.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyVenn.visible = [self.visible copyWithZone: zone];
	copyVenn.cursor = [self.cursor copyWithZone: zone];
	copyVenn.boostThreshold = [self.boostThreshold copyWithZone: zone];
	return copyVenn;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	if (self.borderDashStyle) {
		params[@"borderDashStyle"] = self.borderDashStyle;
	}
	if (self.brighten) {
		params[@"brighten"] = self.brighten;
	}
	return params;
}

# pragma mark - Setters

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	_colorByPoint = colorByPoint;
	[self updateNSObject:@"colorByPoint"];
}

-(void)setOpacity:(NSNumber *)opacity {
	_opacity = opacity;
	[self updateNSObject:@"opacity"];
}

-(void)setBorderDashStyle:(NSString *)borderDashStyle {
	_borderDashStyle = borderDashStyle;
	[self updateNSObject:@"borderDashStyle"];
}

-(void)setBrighten:(NSNumber *)brighten {
	_brighten = brighten;
	[self updateNSObject:@"brighten"];
}

@end