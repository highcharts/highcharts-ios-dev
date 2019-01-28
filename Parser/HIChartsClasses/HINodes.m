#import "HIChartsJSONSerializableSubclass.h"
#import "HINodes.h"

@implementation HINodes

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HINodes *copyNodes = [[HINodes allocWithZone: zone] init];
	copyNodes.color = [self.color copyWithZone: zone];
	copyNodes.colorIndex = [self.colorIndex copyWithZone: zone];
	copyNodes.name = [self.name copyWithZone: zone];
	copyNodes.id = [self.id copyWithZone: zone];
	copyNodes.column = [self.column copyWithZone: zone];
	copyNodes.offset = [self.offset copyWithZone: zone];
	return copyNodes;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.column) {
		params[@"column"] = self.column;
	}
	if (self.offset) {
		params[@"offset"] = self.offset;
	}
	return params;
}

# pragma mark - Setters

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setColorIndex:(NSNumber *)colorIndex {
	NSNumber *oldValue = _colorIndex;
	_colorIndex = colorIndex;
	[self updateNSObject:oldValue newValue:colorIndex propertyName:@"colorIndex"];
}

-(void)setName:(NSString *)name {
	NSString *oldValue = _name;
	_name = name;
	[self updateNSObject:oldValue newValue:name propertyName:@"name"];
}

-(void)setId:(NSString *)id {
	NSString *oldValue = _id;
	_id = id;
	[self updateNSObject:oldValue newValue:id propertyName:@"id"];
}

-(void)setColumn:(NSNumber *)column {
	NSNumber *oldValue = _column;
	_column = column;
	[self updateNSObject:oldValue newValue:column propertyName:@"column"];
}

-(void)setOffset:(NSNumber *)offset {
	NSNumber *oldValue = _offset;
	_offset = offset;
	[self updateNSObject:oldValue newValue:offset propertyName:@"offset"];
}

@end