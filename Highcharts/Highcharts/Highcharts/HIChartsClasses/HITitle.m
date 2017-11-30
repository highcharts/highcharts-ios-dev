#import "HITitle.h"

@implementation HITitle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.reserveSpace) {
		params[@"reserveSpace"] = self.reserveSpace;
	}
	if (self.margin) {
		params[@"margin"] = self.margin;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.skew3d) {
		params[@"skew3d"] = self.skew3d;
	}
	if (self.offset) {
		params[@"offset"] = self.offset;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.position3d) {
		params[@"position3d"] = self.position3d;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.floating) {
		params[@"floating"] = self.floating;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.widthAdjust) {
		params[@"widthAdjust"] = self.widthAdjust;
	}
	return params;
}

#pragma mark - Setters / Getters

-(void)setText:(NSString *)text {
    if (self.text) {
        if (![self.text isEqualToString:text]) {
            NSLog(@"IT IS NOT THE SAME TEXT!");
            _text = text;
            self.isUpdated = YES;
            NSLog(@"UPDATED %d", self.isUpdated);
        }
        else {
            NSLog(@"IT IS THE SAME TEXT! Not updated!");
        }
    }
    else {
        NSLog(@"FIRST SET TITLE TEXT");
        _text = text;
    }
    self.isUpdated = NO;
}

@end
