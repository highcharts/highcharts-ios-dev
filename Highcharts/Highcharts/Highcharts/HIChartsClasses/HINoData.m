#import "HIChartsJSONSerializableSubclass.h"
#import "HINoData.h"

@implementation HINoData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.position) {
		params[@"position"] = [self.position getParams];
	}
	if (self.attr) {
		params[@"attr"] = self.attr;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setUseHTML:(NSNumber *)useHTML {
	_useHTML = useHTML;
	[self updateNSObject:@"useHTML"];
}

-(void)setPosition:(HIPosition *)position {
	HIPosition *oldValue = _position;
	if(self.position) {
		[self removeObserver:self forKeyPath:@"position.isUpdated"];
	}
	_position = position;
	[self updateHIObject:oldValue newValue:position propertyName:@"position"];
}

-(void)setAttr:(id)attr {
	_attr = attr;
	[self updateNSObject:@"attr"];
}

-(void)setStyle:(HIStyle *)style {
	HIStyle *oldValue = _style;
	if(self.style) {
		[self removeObserver:self forKeyPath:@"style.isUpdated"];
	}
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

@end