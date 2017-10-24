#import "HIEvents.h"

@implementation HIEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.mouseOver) {
		params[@"mouseOver"] = [self.mouseOver getFunction];
	}
	if (self.click) {
		params[@"click"] = [self.click getFunction];
	}
	if (self.select) {
		params[@"select"] = [self.select getFunction];
	}
	if (self.mouseOut) {
		params[@"mouseOut"] = [self.mouseOut getFunction];
	}
	if (self.unselect) {
		params[@"unselect"] = [self.unselect getFunction];
	}
	if (self.update) {
		params[@"update"] = [self.update getFunction];
	}
	if (self.remove) {
		params[@"remove"] = [self.remove getFunction];
	}
	if (self.show) {
		params[@"show"] = [self.show getFunction];
	}
	if (self.checkboxClick) {
		params[@"checkboxClick"] = [self.checkboxClick getFunction];
	}
	if (self.hide) {
		params[@"hide"] = [self.hide getFunction];
	}
	if (self.afterAnimate) {
		params[@"afterAnimate"] = [self.afterAnimate getFunction];
	}
	if (self.legendItemClick) {
		params[@"legendItemClick"] = [self.legendItemClick getFunction];
	}
	if (self.afterSetExtremes) {
		params[@"afterSetExtremes"] = [self.afterSetExtremes getFunction];
	}
	if (self.pointInBreak) {
		params[@"pointInBreak"] = [self.pointInBreak getFunction];
	}
	if (self.setExtremes) {
		params[@"setExtremes"] = [self.setExtremes getFunction];
	}
	if (self.pointBreak) {
		params[@"pointBreak"] = [self.pointBreak getFunction];
	}
	if (self.afterBreaks) {
		params[@"afterBreaks"] = [self.afterBreaks getFunction];
	}
	return params;
}

@end