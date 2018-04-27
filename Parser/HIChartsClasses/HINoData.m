#import "HIChartsJSONSerializableSubclass.h"
#import "HINoData.h"

@implementation HINoData

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
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
		params[@"attr"] = self.attr;
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

-(void)setStyle:(HIStyle *)style {
	HIStyle *oldValue = _style;
	if(self.style) {
		[self removeObserver:self forKeyPath:@"style.isUpdated"];
	}
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setAttr:(id)attr {
	_attr = attr;
	[self updateNSObject:@"attr"];
}

-(void)setUseHTML:(NSNumber *)useHTML {
	_useHTML = useHTML;
	[self updateNSObject:@"useHTML"];
}

@end