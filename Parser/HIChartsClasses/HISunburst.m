#import "HIChartsJSONSerializableSubclass.h"
#import "HISunburst.h"

@implementation HISunburst

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"sunburst";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISunburst *copySunburst = [[HISunburst allocWithZone: zone] init];
	copySunburst.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copySunburst.rootId = [self.rootId copyWithZone: zone];
	copySunburst.levelSize = [self.levelSize copyWithZone: zone];
	copySunburst.center = [self.center copyWithZone: zone];
	copySunburst.slicedOffset = [self.slicedOffset copyWithZone: zone];
	copySunburst.dataLabels = [self.dataLabels copyWithZone: zone];
	copySunburst.levelIsConstant = [self.levelIsConstant copyWithZone: zone];
	copySunburst.levels = [self.levels copyWithZone: zone];
	copySunburst.allowDrillToNode = [self.allowDrillToNode copyWithZone: zone];
	copySunburst.borderColor = [self.borderColor copyWithZone: zone];
	copySunburst.point = [self.point copyWithZone: zone];
	copySunburst.showInLegend = [self.showInLegend copyWithZone: zone];
	copySunburst.tooltip = [self.tooltip copyWithZone: zone];
	copySunburst.colors = [self.colors copyWithZone: zone];
	copySunburst.states = [self.states copyWithZone: zone];
	copySunburst.borderWidth = [self.borderWidth copyWithZone: zone];
	copySunburst.startAngle = [self.startAngle copyWithZone: zone];
	copySunburst.size = [self.size copyWithZone: zone];
	copySunburst.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copySunburst.events = [self.events copyWithZone: zone];
	copySunburst.selected = [self.selected copyWithZone: zone];
	copySunburst.colorIndex = [self.colorIndex copyWithZone: zone];
	copySunburst.color = [self.color copyWithZone: zone];
	copySunburst.dragDrop = [self.dragDrop copyWithZone: zone];
	copySunburst.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copySunburst.className = [self.className copyWithZone: zone];
	copySunburst.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copySunburst.label = [self.label copyWithZone: zone];
	copySunburst.animation = [self.animation copyWithZone: zone];
	copySunburst.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copySunburst.definition = [self.definition copyWithZone: zone];
	copySunburst.keys = [self.keys copyWithZone: zone];
	copySunburst.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copySunburst.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copySunburst.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copySunburst.shadow = [self.shadow copyWithZone: zone];
	copySunburst.visible = [self.visible copyWithZone: zone];
	copySunburst.linkedTo = [self.linkedTo copyWithZone: zone];
	copySunburst.cursor = [self.cursor copyWithZone: zone];
	copySunburst.data = [self.data copyWithZone: zone];
	copySunburst.id = [self.id copyWithZone: zone];
	copySunburst.index = [self.index copyWithZone: zone];
	copySunburst.legendIndex = [self.legendIndex copyWithZone: zone];
	copySunburst.name = [self.name copyWithZone: zone];
	copySunburst.type = [self.type copyWithZone: zone];
	copySunburst.xAxis = [self.xAxis copyWithZone: zone];
	copySunburst.yAxis = [self.yAxis copyWithZone: zone];
	copySunburst.zIndex = [self.zIndex copyWithZone: zone];
	return copySunburst;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.rootId) {
		params[@"rootId"] = self.rootId;
	}
	if (self.levelSize) {
		params[@"levelSize"] = [self.levelSize getParams];
	}
	if (self.center) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.center) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"center"] = array;
	}
	if (self.slicedOffset) {
		params[@"slicedOffset"] = self.slicedOffset;
	}
	if (self.levelIsConstant) {
		params[@"levelIsConstant"] = self.levelIsConstant;
	}
	if (self.levels) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.levels) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"levels"] = array;
	}
	if (self.allowDrillToNode) {
		params[@"allowDrillToNode"] = self.allowDrillToNode;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.colors) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"colors"] = array;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.startAngle) {
		params[@"startAngle"] = self.startAngle;
	}
	if (self.size) {
		params[@"size"] = self.size;
	}
	return params;
}

# pragma mark - Setters

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	_colorByPoint = colorByPoint;
	[self updateNSObject:@"colorByPoint"];
}

-(void)setRootId:(NSString *)rootId {
	_rootId = rootId;
	[self updateNSObject:@"rootId"];
}

-(void)setLevelSize:(HILevelSize *)levelSize {
	HILevelSize *oldValue = _levelSize;
	if(self.levelSize) {
		[self removeObserver:self forKeyPath:@"levelSize.isUpdated"];
	}
	_levelSize = levelSize;
	[self updateHIObject:oldValue newValue:levelSize propertyName:@"levelSize"];
}

-(void)setCenter:(NSArray *)center {
	NSArray *oldValue = _center;
	_center = center;
	[self updateArrayObject:oldValue newValue:center propertyName:@"center"];
}

-(void)setSlicedOffset:(NSNumber *)slicedOffset {
	_slicedOffset = slicedOffset;
	[self updateNSObject:@"slicedOffset"];
}

-(void)setLevelIsConstant:(NSNumber *)levelIsConstant {
	_levelIsConstant = levelIsConstant;
	[self updateNSObject:@"levelIsConstant"];
}

-(void)setLevels:(NSArray <HILevels *> *)levels {
	NSArray <HILevels *> *oldValue = _levels;
	_levels = levels;
	[self updateArrayObject:oldValue newValue:levels propertyName:@"levels"];
}

-(void)setAllowDrillToNode:(NSNumber *)allowDrillToNode {
	_allowDrillToNode = allowDrillToNode;
	[self updateNSObject:@"allowDrillToNode"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setColors:(NSArray<NSString *> *)colors {
	NSArray<NSString *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setStartAngle:(NSNumber *)startAngle {
	_startAngle = startAngle;
	[self updateNSObject:@"startAngle"];
}

-(void)setSize:(id)size {
	_size = size;
	[self updateNSObject:@"size"];
}

@end