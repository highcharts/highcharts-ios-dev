#import "HIChartsJSONSerializableSubclass.h"
#import "HISankey.h"

@implementation HISankey

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"sankey";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.curveFactor) {
		params[@"curveFactor"] = self.curveFactor;
	}
	if (self.nodePadding) {
		params[@"nodePadding"] = self.nodePadding;
	}
	if (self.nodeWidth) {
		params[@"nodeWidth"] = self.nodeWidth;
	}
	if (self.linkOpacity) {
		params[@"linkOpacity"] = self.linkOpacity;
	}
	if (self.minPointLength) {
		params[@"minPointLength"] = self.minPointLength;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.nodes) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.nodes) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"nodes"] = array;
	}
	return params;
}

# pragma mark - Setters

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	_colorByPoint = colorByPoint;
	[self updateNSObject:@"colorByPoint"];
}

-(void)setCurveFactor:(NSNumber *)curveFactor {
	_curveFactor = curveFactor;
	[self updateNSObject:@"curveFactor"];
}

-(void)setNodePadding:(NSNumber *)nodePadding {
	_nodePadding = nodePadding;
	[self updateNSObject:@"nodePadding"];
}

-(void)setNodeWidth:(NSNumber *)nodeWidth {
	_nodeWidth = nodeWidth;
	[self updateNSObject:@"nodeWidth"];
}

-(void)setLinkOpacity:(NSNumber *)linkOpacity {
	_linkOpacity = linkOpacity;
	[self updateNSObject:@"linkOpacity"];
}

-(void)setMinPointLength:(NSNumber *)minPointLength {
	_minPointLength = minPointLength;
	[self updateNSObject:@"minPointLength"];
}

-(void)setColors:(NSArray<HIColor *> *)colors {
	NSArray<HIColor *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
}

-(void)setNodes:(NSArray <HINodes *> *)nodes {
	NSArray <HINodes *> *oldValue = _nodes;
	_nodes = nodes;
	[self updateArrayObject:oldValue newValue:nodes propertyName:@"nodes"];
}

@end