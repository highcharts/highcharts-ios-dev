#import "HICondition.h"

@implementation HICondition

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.callback) {
		params[@"callback"] = [self.callback getFunction];
	}
	if (self.maxWidth) {
		params[@"maxWidth"] = self.maxWidth;
	}
	if (self.maxHeight) {
		params[@"maxHeight"] = self.maxHeight;
	}
	if (self.minWidth) {
		params[@"minWidth"] = self.minWidth;
	}
	if (self.minHeight) {
		params[@"minHeight"] = self.minHeight;
	}
	return params;
}

# pragma mark - Setters

-(void)setCallback:(HIFunction *)callback {
	HIFunction *oldValue = _callback;
	if(self.callback) {
		[self removeObserver:self forKeyPath:@"callback.isUpdated"];
	}
	_callback = callback;
	[self updateHIObject:oldValue newValue:callback propertyName:@"callback"];
}

-(void)setMaxWidth:(NSNumber *)maxWidth {
	_maxWidth = maxWidth;
	[self updateNSObject:@"maxWidth"];
}

-(void)setMaxHeight:(NSNumber *)maxHeight {
	_maxHeight = maxHeight;
	[self updateNSObject:@"maxHeight"];
}

-(void)setMinWidth:(NSNumber *)minWidth {
	_minWidth = minWidth;
	[self updateNSObject:@"minWidth"];
}

-(void)setMinHeight:(NSNumber *)minHeight {
	_minHeight = minHeight;
	[self updateNSObject:@"minHeight"];
}

@end