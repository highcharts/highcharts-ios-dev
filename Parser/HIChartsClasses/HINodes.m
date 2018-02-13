#import "HIChartsJSONSerializableSubclass.h"
#import "HINodes.h"

@implementation HINodes

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
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
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	return params;
}

# pragma mark - Setters

-(void)setName:(NSString *)name {
	_name = name;
	[self updateNSObject:@"name"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	if(self.color) {
		[self removeObserver:self forKeyPath:@"color.isUpdated"];
	}
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setColumn:(NSNumber *)column {
	_column = column;
	[self updateNSObject:@"column"];
}

-(void)setOffset:(NSNumber *)offset {
	_offset = offset;
	[self updateNSObject:@"offset"];
}

-(void)setId:(NSString *)id {
	_id = id;
	[self updateNSObject:@"id"];
}

-(void)setColorIndex:(NSNumber *)colorIndex {
	_colorIndex = colorIndex;
	[self updateNSObject:@"colorIndex"];
}

@end