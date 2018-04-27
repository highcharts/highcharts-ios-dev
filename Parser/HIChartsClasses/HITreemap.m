#import "HIChartsJSONSerializableSubclass.h"
#import "HITreemap.h"

@implementation HITreemap

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"treemap";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	HITreemap *copyTreemap = [[HITreemap allocWithZone: zone] init];
	copyTreemap.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyTreemap.borderColor = [self.borderColor copyWithZone: zone];
	copyTreemap.opacity = [self.opacity copyWithZone: zone];
	copyTreemap.ignoreHiddenPoint = [self.ignoreHiddenPoint copyWithZone: zone];
	copyTreemap.allowDrillToNode = [self.allowDrillToNode copyWithZone: zone];
	copyTreemap.sortIndex = [self.sortIndex copyWithZone: zone];
	copyTreemap.interactByLeaf = [self.interactByLeaf copyWithZone: zone];
	copyTreemap.colors = [self.colors copyWithZone: zone];
	copyTreemap.layoutAlgorithm = [self.layoutAlgorithm copyWithZone: zone];
	copyTreemap.levelIsConstant = [self.levelIsConstant copyWithZone: zone];
	copyTreemap.layoutStartingDirection = [self.layoutStartingDirection copyWithZone: zone];
	copyTreemap.levels = [self.levels copyWithZone: zone];
	copyTreemap.drillUpButton = [self.drillUpButton copyWithZone: zone];
	copyTreemap.alternateStartingDirection = [self.alternateStartingDirection copyWithZone: zone];
	return copyTreemap;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	if (self.ignoreHiddenPoint) {
		params[@"ignoreHiddenPoint"] = self.ignoreHiddenPoint;
	}
	if (self.allowDrillToNode) {
		params[@"allowDrillToNode"] = self.allowDrillToNode;
	}
	if (self.sortIndex) {
		params[@"sortIndex"] = self.sortIndex;
	}
	if (self.interactByLeaf) {
		params[@"interactByLeaf"] = self.interactByLeaf;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.layoutAlgorithm) {
		params[@"layoutAlgorithm"] = self.layoutAlgorithm;
	}
	if (self.levelIsConstant) {
		params[@"levelIsConstant"] = self.levelIsConstant;
	}
	if (self.layoutStartingDirection) {
		params[@"layoutStartingDirection"] = self.layoutStartingDirection;
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
	if (self.drillUpButton) {
		params[@"drillUpButton"] = [self.drillUpButton getParams];
	}
	if (self.alternateStartingDirection) {
		params[@"alternateStartingDirection"] = self.alternateStartingDirection;
	}
	return params;
}

# pragma mark - Setters

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	_colorByPoint = colorByPoint;
	[self updateNSObject:@"colorByPoint"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setOpacity:(NSNumber *)opacity {
	_opacity = opacity;
	[self updateNSObject:@"opacity"];
}

-(void)setIgnoreHiddenPoint:(NSNumber *)ignoreHiddenPoint {
	_ignoreHiddenPoint = ignoreHiddenPoint;
	[self updateNSObject:@"ignoreHiddenPoint"];
}

-(void)setAllowDrillToNode:(NSNumber *)allowDrillToNode {
	_allowDrillToNode = allowDrillToNode;
	[self updateNSObject:@"allowDrillToNode"];
}

-(void)setSortIndex:(NSNumber *)sortIndex {
	_sortIndex = sortIndex;
	[self updateNSObject:@"sortIndex"];
}

-(void)setInteractByLeaf:(NSNumber *)interactByLeaf {
	_interactByLeaf = interactByLeaf;
	[self updateNSObject:@"interactByLeaf"];
}

-(void)setColors:(NSArray<HIColor *> *)colors {
	NSArray<HIColor *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
}

-(void)setLayoutAlgorithm:(NSString *)layoutAlgorithm {
	_layoutAlgorithm = layoutAlgorithm;
	[self updateNSObject:@"layoutAlgorithm"];
}

-(void)setLevelIsConstant:(NSNumber *)levelIsConstant {
	_levelIsConstant = levelIsConstant;
	[self updateNSObject:@"levelIsConstant"];
}

-(void)setLayoutStartingDirection:(NSString *)layoutStartingDirection {
	_layoutStartingDirection = layoutStartingDirection;
	[self updateNSObject:@"layoutStartingDirection"];
}

-(void)setLevels:(NSArray <HILevels *> *)levels {
	NSArray <HILevels *> *oldValue = _levels;
	_levels = levels;
	[self updateArrayObject:oldValue newValue:levels propertyName:@"levels"];
}

-(void)setDrillUpButton:(HIDrillUpButton *)drillUpButton {
	HIDrillUpButton *oldValue = _drillUpButton;
	if(self.drillUpButton) {
		[self removeObserver:self forKeyPath:@"drillUpButton.isUpdated"];
	}
	_drillUpButton = drillUpButton;
	[self updateHIObject:oldValue newValue:drillUpButton propertyName:@"drillUpButton"];
}

-(void)setAlternateStartingDirection:(NSNumber *)alternateStartingDirection {
	_alternateStartingDirection = alternateStartingDirection;
	[self updateNSObject:@"alternateStartingDirection"];
}

@end