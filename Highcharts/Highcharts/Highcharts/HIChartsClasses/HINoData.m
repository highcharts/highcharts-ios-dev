#import "HIChartsJSONSerializableSubclass.h"
#import "HINoData.h"

@implementation HINoData

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HINoData *copyNoData = [[HINoData allocWithZone: zone] init];
	copyNoData.position = [self.position copyWithZone: zone];
	copyNoData.style = [self.style copyWithZone: zone];
	copyNoData.attr = [self.attr copyWithZone: zone];
	copyNoData.useHTML = [self.useHTML copyWithZone: zone];
	return copyNoData;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.position) {
		params[@"position"] = [self.position getParams];
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.attr) {
		params[@"attr"] = [self.attr getParams];
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	return params;
}

# pragma mark - Setters

-(void)setPosition:(HIPosition *)position {
	HIPosition *oldValue = _position;
	if(self.position) {
		[self removeObserver:self forKeyPath:@"position.isUpdated"];
	}
	_position = position;
	[self updateHIObject:oldValue newValue:position propertyName:@"position"];
}

-(void)setStyle:(HICSSObject *)style {
	HICSSObject *oldValue = _style;
	if(self.style) {
		[self removeObserver:self forKeyPath:@"style.isUpdated"];
	}
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setAttr:(HISVGAttributes *)attr {
	HISVGAttributes *oldValue = _attr;
	if(self.attr) {
		[self removeObserver:self forKeyPath:@"attr.isUpdated"];
	}
	_attr = attr;
	[self updateHIObject:oldValue newValue:attr propertyName:@"attr"];
}

-(void)setUseHTML:(NSNumber *)useHTML {
	_useHTML = useHTML;
	[self updateNSObject:@"useHTML"];
}

@end