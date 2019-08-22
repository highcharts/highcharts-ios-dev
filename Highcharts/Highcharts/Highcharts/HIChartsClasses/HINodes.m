#import "HIChartsJSONSerializableSubclass.h"
#import "HINodes.h"

@implementation HINodes

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HINodes *copyNodes = [[HINodes allocWithZone: zone] init];
	copyNodes.colorIndex = [self.colorIndex copyWithZone: zone];
	copyNodes.level = [self.level copyWithZone: zone];
	copyNodes.color = [self.color copyWithZone: zone];
	copyNodes.dataLabels = [self.dataLabels copyWithZone: zone];
	copyNodes.column = [self.column copyWithZone: zone];
	copyNodes.offset = [self.offset copyWithZone: zone];
	copyNodes.id = [self.id copyWithZone: zone];
	copyNodes.name = [self.name copyWithZone: zone];
	copyNodes.image = [self.image copyWithZone: zone];
	copyNodes.title = [self.title copyWithZone: zone];
	copyNodes.layout = [self.layout copyWithZone: zone];
	copyNodes.definition = [self.definition copyWithZone: zone];
	copyNodes.mass = [self.mass copyWithZone: zone];
	return copyNodes;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.level) {
		params[@"level"] = self.level;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.dataLabels) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.dataLabels) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"dataLabels"] = array;
	}
	if (self.column) {
		params[@"column"] = self.column;
	}
	if (self.offset) {
		params[@"offset"] = self.offset;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.image) {
		params[@"image"] = self.image;
	}
	if (self.title) {
		params[@"title"] = self.title;
	}
	if (self.layout) {
		params[@"layout"] = self.layout;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.mass) {
		params[@"mass"] = self.mass;
	}
	return params;
}

# pragma mark - Setters

-(void)setColorIndex:(NSNumber *)colorIndex {
	NSNumber *oldValue = _colorIndex;
	_colorIndex = colorIndex;
	[self updateNSObject:oldValue newValue:colorIndex propertyName:@"colorIndex"];
}

-(void)setLevel:(NSNumber *)level {
	NSNumber *oldValue = _level;
	_level = level;
	[self updateNSObject:oldValue newValue:level propertyName:@"level"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setDataLabels:(NSArray<HIDataLabelsOptionsObject *> *)dataLabels {
	NSArray<HIDataLabelsOptionsObject *> *oldValue = _dataLabels;
	_dataLabels = dataLabels;
	[self updateArrayObject:oldValue newValue:dataLabels propertyName:@"dataLabels"];
}

-(void)setColumn:(NSNumber *)column {
	NSNumber *oldValue = _column;
	_column = column;
	[self updateNSObject:oldValue newValue:column propertyName:@"column"];
}

-(void)setOffset:(id)offset {
	id oldValue = _offset;
	_offset = offset;
	[self updateNSObject:oldValue newValue:offset propertyName:@"offset"];
}

-(void)setId:(NSString *)id {
	NSString *oldValue = _id;
	_id = id;
	[self updateNSObject:oldValue newValue:id propertyName:@"id"];
}

-(void)setName:(NSString *)name {
	NSString *oldValue = _name;
	_name = name;
	[self updateNSObject:oldValue newValue:name propertyName:@"name"];
}

-(void)setImage:(NSString *)image {
	NSString *oldValue = _image;
	_image = image;
	[self updateNSObject:oldValue newValue:image propertyName:@"image"];
}

-(void)setTitle:(NSString *)title {
	NSString *oldValue = _title;
	_title = title;
	[self updateNSObject:oldValue newValue:title propertyName:@"title"];
}

-(void)setLayout:(NSString *)layout {
	NSString *oldValue = _layout;
	_layout = layout;
	[self updateNSObject:oldValue newValue:layout propertyName:@"layout"];
}

-(void)setDefinition:(NSString *)definition {
	NSString *oldValue = _definition;
	_definition = definition;
	[self updateNSObject:oldValue newValue:definition propertyName:@"definition"];
}

-(void)setMass:(NSNumber *)mass {
	NSNumber *oldValue = _mass;
	_mass = mass;
	[self updateNSObject:oldValue newValue:mass propertyName:@"mass"];
}

@end