#import "HIChartsJSONSerializableSubclass.h"
#import "HIVariablepie.h"

@implementation HIVariablepie

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"variablepie";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.zMax) {
		params[@"zMax"] = self.zMax;
	}
	if (self.minPointSize) {
		params[@"minPointSize"] = self.minPointSize;
	}
	if (self.sizeBy) {
		params[@"sizeBy"] = self.sizeBy;
	}
	if (self.zMin) {
		params[@"zMin"] = self.zMin;
	}
	if (self.maxPointSize) {
		params[@"maxPointSize"] = self.maxPointSize;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.endAngle) {
		params[@"endAngle"] = self.endAngle;
	}
	if (self.innerSize) {
		params[@"innerSize"] = self.innerSize;
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
	if (self.clip) {
		params[@"clip"] = self.clip;
	}
	if (self.slicedOffset) {
		params[@"slicedOffset"] = self.slicedOffset;
	}
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.minSize) {
		params[@"minSize"] = self.minSize;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.legendType) {
		params[@"legendType"] = self.legendType;
	}
	if (self.startAngle) {
		params[@"startAngle"] = self.startAngle;
	}
	if (self.size) {
		params[@"size"] = self.size;
	}
	if (self.ignoreHiddenPoint) {
		params[@"ignoreHiddenPoint"] = self.ignoreHiddenPoint;
	}
	return params;
}

# pragma mark - Setters

-(void)setZMax:(NSNumber *)zMax {
	_zMax = zMax;
	[self updateNSObject:@"zMax"];
}

-(void)setMinPointSize:(id)minPointSize {
	_minPointSize = minPointSize;
	[self updateNSObject:@"minPointSize"];
}

-(void)setSizeBy:(NSString *)sizeBy {
	_sizeBy = sizeBy;
	[self updateNSObject:@"sizeBy"];
}

-(void)setZMin:(NSNumber *)zMin {
	_zMin = zMin;
	[self updateNSObject:@"zMin"];
}

-(void)setMaxPointSize:(id)maxPointSize {
	_maxPointSize = maxPointSize;
	[self updateNSObject:@"maxPointSize"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setEndAngle:(NSNumber *)endAngle {
	_endAngle = endAngle;
	[self updateNSObject:@"endAngle"];
}

-(void)setInnerSize:(id)innerSize {
	_innerSize = innerSize;
	[self updateNSObject:@"innerSize"];
}

-(void)setCenter:(NSArray *)center {
	NSArray *oldValue = _center;
	_center = center;
	[self updateArrayObject:oldValue newValue:center propertyName:@"center"];
}

-(void)setClip:(NSNumber *)clip {
	_clip = clip;
	[self updateNSObject:@"clip"];
}

-(void)setSlicedOffset:(NSNumber *)slicedOffset {
	_slicedOffset = slicedOffset;
	[self updateNSObject:@"slicedOffset"];
}

-(void)setDepth:(NSNumber *)depth {
	_depth = depth;
	[self updateNSObject:@"depth"];
}

-(void)setColors:(NSArray<HIColor *> *)colors {
	NSArray<HIColor *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
}

-(void)setMinSize:(NSNumber *)minSize {
	_minSize = minSize;
	[self updateNSObject:@"minSize"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setLegendType:(NSString *)legendType {
	_legendType = legendType;
	[self updateNSObject:@"legendType"];
}

-(void)setStartAngle:(NSNumber *)startAngle {
	_startAngle = startAngle;
	[self updateNSObject:@"startAngle"];
}

-(void)setSize:(id)size {
	_size = size;
	[self updateNSObject:@"size"];
}

-(void)setIgnoreHiddenPoint:(NSNumber *)ignoreHiddenPoint {
	_ignoreHiddenPoint = ignoreHiddenPoint;
	[self updateNSObject:@"ignoreHiddenPoint"];
}

@end