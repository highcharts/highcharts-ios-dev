#import "HIChartsJSONSerializableSubclass.h"
#import "HIEvents.h"

@implementation HIEvents

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIEvents *copyEvents = [[HIEvents allocWithZone: zone] init];
	copyEvents.legendItemClick = [self.legendItemClick copyWithZone: zone];
	copyEvents.checkboxClick = [self.checkboxClick copyWithZone: zone];
	copyEvents.pointInBreak = [self.pointInBreak copyWithZone: zone];
	copyEvents.afterBreaks = [self.afterBreaks copyWithZone: zone];
	copyEvents.pointBreak = [self.pointBreak copyWithZone: zone];
	copyEvents.setExtremes = [self.setExtremes copyWithZone: zone];
	copyEvents.afterSetExtremes = [self.afterSetExtremes copyWithZone: zone];
	copyEvents.load = [self.load copyWithZone: zone];
	copyEvents.selection = [self.selection copyWithZone: zone];
	copyEvents.render = [self.render copyWithZone: zone];
	copyEvents.addSeries = [self.addSeries copyWithZone: zone];
	copyEvents.drillup = [self.drillup copyWithZone: zone];
	copyEvents.beforePrint = [self.beforePrint copyWithZone: zone];
	copyEvents.drillupall = [self.drillupall copyWithZone: zone];
	copyEvents.drilldown = [self.drilldown copyWithZone: zone];
	copyEvents.redraw = [self.redraw copyWithZone: zone];
	copyEvents.click = [self.click copyWithZone: zone];
	copyEvents.afterPrint = [self.afterPrint copyWithZone: zone];
	copyEvents.unselect = [self.unselect copyWithZone: zone];
	copyEvents.update = [self.update copyWithZone: zone];
	copyEvents.remove = [self.remove copyWithZone: zone];
	copyEvents.mouseOut = [self.mouseOut copyWithZone: zone];
	copyEvents.mouseOver = [self.mouseOver copyWithZone: zone];
	copyEvents.select = [self.select copyWithZone: zone];
	copyEvents.hide = [self.hide copyWithZone: zone];
	copyEvents.show = [self.show copyWithZone: zone];
	copyEvents.afterAnimate = [self.afterAnimate copyWithZone: zone];
	return copyEvents;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.legendItemClick) {
		params[@"legendItemClick"] = [self.legendItemClick getFunction];
	}
	if (self.checkboxClick) {
		params[@"checkboxClick"] = [self.checkboxClick getFunction];
	}
	if (self.pointInBreak) {
		params[@"pointInBreak"] = [self.pointInBreak getFunction];
	}
	if (self.afterBreaks) {
		params[@"afterBreaks"] = [self.afterBreaks getFunction];
	}
	if (self.pointBreak) {
		params[@"pointBreak"] = [self.pointBreak getFunction];
	}
	if (self.setExtremes) {
		params[@"setExtremes"] = [self.setExtremes getFunction];
	}
	if (self.afterSetExtremes) {
		params[@"afterSetExtremes"] = [self.afterSetExtremes getFunction];
	}
	if (self.load) {
		params[@"load"] = [self.load getFunction];
	}
	if (self.selection) {
		params[@"selection"] = [self.selection getFunction];
	}
	if (self.render) {
		params[@"render"] = [self.render getFunction];
	}
	if (self.addSeries) {
		params[@"addSeries"] = [self.addSeries getFunction];
	}
	if (self.drillup) {
		params[@"drillup"] = [self.drillup getFunction];
	}
	if (self.beforePrint) {
		params[@"beforePrint"] = [self.beforePrint getFunction];
	}
	if (self.drillupall) {
		params[@"drillupall"] = [self.drillupall getFunction];
	}
	if (self.drilldown) {
		params[@"drilldown"] = [self.drilldown getFunction];
	}
	if (self.redraw) {
		params[@"redraw"] = [self.redraw getFunction];
	}
	if (self.click) {
		params[@"click"] = [self.click getFunction];
	}
	if (self.afterPrint) {
		params[@"afterPrint"] = [self.afterPrint getFunction];
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
	if (self.mouseOut) {
		params[@"mouseOut"] = [self.mouseOut getFunction];
	}
	if (self.mouseOver) {
		params[@"mouseOver"] = [self.mouseOver getFunction];
	}
	if (self.select) {
		params[@"select"] = [self.select getFunction];
	}
	if (self.hide) {
		params[@"hide"] = [self.hide getFunction];
	}
	if (self.show) {
		params[@"show"] = [self.show getFunction];
	}
	if (self.afterAnimate) {
		params[@"afterAnimate"] = [self.afterAnimate getFunction];
	}
	return params;
}

# pragma mark - Setters

-(void)setLegendItemClick:(HIFunction *)legendItemClick {
	HIFunction *oldValue = _legendItemClick;
	if(self.legendItemClick) {
		[self removeObserver:self forKeyPath:@"legendItemClick.isUpdated"];
	}
	_legendItemClick = legendItemClick;
	[self updateHIObject:oldValue newValue:legendItemClick propertyName:@"legendItemClick"];
}

-(void)setCheckboxClick:(HIFunction *)checkboxClick {
	HIFunction *oldValue = _checkboxClick;
	if(self.checkboxClick) {
		[self removeObserver:self forKeyPath:@"checkboxClick.isUpdated"];
	}
	_checkboxClick = checkboxClick;
	[self updateHIObject:oldValue newValue:checkboxClick propertyName:@"checkboxClick"];
}

-(void)setPointInBreak:(HIFunction *)pointInBreak {
	HIFunction *oldValue = _pointInBreak;
	if(self.pointInBreak) {
		[self removeObserver:self forKeyPath:@"pointInBreak.isUpdated"];
	}
	_pointInBreak = pointInBreak;
	[self updateHIObject:oldValue newValue:pointInBreak propertyName:@"pointInBreak"];
}

-(void)setAfterBreaks:(HIFunction *)afterBreaks {
	HIFunction *oldValue = _afterBreaks;
	if(self.afterBreaks) {
		[self removeObserver:self forKeyPath:@"afterBreaks.isUpdated"];
	}
	_afterBreaks = afterBreaks;
	[self updateHIObject:oldValue newValue:afterBreaks propertyName:@"afterBreaks"];
}

-(void)setPointBreak:(HIFunction *)pointBreak {
	HIFunction *oldValue = _pointBreak;
	if(self.pointBreak) {
		[self removeObserver:self forKeyPath:@"pointBreak.isUpdated"];
	}
	_pointBreak = pointBreak;
	[self updateHIObject:oldValue newValue:pointBreak propertyName:@"pointBreak"];
}

-(void)setSetExtremes:(HIFunction *)setExtremes {
	HIFunction *oldValue = _setExtremes;
	if(self.setExtremes) {
		[self removeObserver:self forKeyPath:@"setExtremes.isUpdated"];
	}
	_setExtremes = setExtremes;
	[self updateHIObject:oldValue newValue:setExtremes propertyName:@"setExtremes"];
}

-(void)setAfterSetExtremes:(HIFunction *)afterSetExtremes {
	HIFunction *oldValue = _afterSetExtremes;
	if(self.afterSetExtremes) {
		[self removeObserver:self forKeyPath:@"afterSetExtremes.isUpdated"];
	}
	_afterSetExtremes = afterSetExtremes;
	[self updateHIObject:oldValue newValue:afterSetExtremes propertyName:@"afterSetExtremes"];
}

-(void)setLoad:(HIFunction *)load {
	HIFunction *oldValue = _load;
	if(self.load) {
		[self removeObserver:self forKeyPath:@"load.isUpdated"];
	}
	_load = load;
	[self updateHIObject:oldValue newValue:load propertyName:@"load"];
}

-(void)setSelection:(HIFunction *)selection {
	HIFunction *oldValue = _selection;
	if(self.selection) {
		[self removeObserver:self forKeyPath:@"selection.isUpdated"];
	}
	_selection = selection;
	[self updateHIObject:oldValue newValue:selection propertyName:@"selection"];
}

-(void)setRender:(HIFunction *)render {
	HIFunction *oldValue = _render;
	if(self.render) {
		[self removeObserver:self forKeyPath:@"render.isUpdated"];
	}
	_render = render;
	[self updateHIObject:oldValue newValue:render propertyName:@"render"];
}

-(void)setAddSeries:(HIFunction *)addSeries {
	HIFunction *oldValue = _addSeries;
	if(self.addSeries) {
		[self removeObserver:self forKeyPath:@"addSeries.isUpdated"];
	}
	_addSeries = addSeries;
	[self updateHIObject:oldValue newValue:addSeries propertyName:@"addSeries"];
}

-(void)setDrillup:(HIFunction *)drillup {
	HIFunction *oldValue = _drillup;
	if(self.drillup) {
		[self removeObserver:self forKeyPath:@"drillup.isUpdated"];
	}
	_drillup = drillup;
	[self updateHIObject:oldValue newValue:drillup propertyName:@"drillup"];
}

-(void)setBeforePrint:(HIFunction *)beforePrint {
	HIFunction *oldValue = _beforePrint;
	if(self.beforePrint) {
		[self removeObserver:self forKeyPath:@"beforePrint.isUpdated"];
	}
	_beforePrint = beforePrint;
	[self updateHIObject:oldValue newValue:beforePrint propertyName:@"beforePrint"];
}

-(void)setDrillupall:(HIFunction *)drillupall {
	HIFunction *oldValue = _drillupall;
	if(self.drillupall) {
		[self removeObserver:self forKeyPath:@"drillupall.isUpdated"];
	}
	_drillupall = drillupall;
	[self updateHIObject:oldValue newValue:drillupall propertyName:@"drillupall"];
}

-(void)setDrilldown:(HIFunction *)drilldown {
	HIFunction *oldValue = _drilldown;
	if(self.drilldown) {
		[self removeObserver:self forKeyPath:@"drilldown.isUpdated"];
	}
	_drilldown = drilldown;
	[self updateHIObject:oldValue newValue:drilldown propertyName:@"drilldown"];
}

-(void)setRedraw:(HIFunction *)redraw {
	HIFunction *oldValue = _redraw;
	if(self.redraw) {
		[self removeObserver:self forKeyPath:@"redraw.isUpdated"];
	}
	_redraw = redraw;
	[self updateHIObject:oldValue newValue:redraw propertyName:@"redraw"];
}

-(void)setClick:(HIFunction *)click {
	HIFunction *oldValue = _click;
	if(self.click) {
		[self removeObserver:self forKeyPath:@"click.isUpdated"];
	}
	_click = click;
	[self updateHIObject:oldValue newValue:click propertyName:@"click"];
}

-(void)setAfterPrint:(HIFunction *)afterPrint {
	HIFunction *oldValue = _afterPrint;
	if(self.afterPrint) {
		[self removeObserver:self forKeyPath:@"afterPrint.isUpdated"];
	}
	_afterPrint = afterPrint;
	[self updateHIObject:oldValue newValue:afterPrint propertyName:@"afterPrint"];
}

-(void)setUnselect:(HIFunction *)unselect {
	HIFunction *oldValue = _unselect;
	if(self.unselect) {
		[self removeObserver:self forKeyPath:@"unselect.isUpdated"];
	}
	_unselect = unselect;
	[self updateHIObject:oldValue newValue:unselect propertyName:@"unselect"];
}

-(void)setUpdate:(HIFunction *)update {
	HIFunction *oldValue = _update;
	if(self.update) {
		[self removeObserver:self forKeyPath:@"update.isUpdated"];
	}
	_update = update;
	[self updateHIObject:oldValue newValue:update propertyName:@"update"];
}

-(void)setRemove:(HIFunction *)remove {
	HIFunction *oldValue = _remove;
	if(self.remove) {
		[self removeObserver:self forKeyPath:@"remove.isUpdated"];
	}
	_remove = remove;
	[self updateHIObject:oldValue newValue:remove propertyName:@"remove"];
}

-(void)setMouseOut:(HIFunction *)mouseOut {
	HIFunction *oldValue = _mouseOut;
	if(self.mouseOut) {
		[self removeObserver:self forKeyPath:@"mouseOut.isUpdated"];
	}
	_mouseOut = mouseOut;
	[self updateHIObject:oldValue newValue:mouseOut propertyName:@"mouseOut"];
}

-(void)setMouseOver:(HIFunction *)mouseOver {
	HIFunction *oldValue = _mouseOver;
	if(self.mouseOver) {
		[self removeObserver:self forKeyPath:@"mouseOver.isUpdated"];
	}
	_mouseOver = mouseOver;
	[self updateHIObject:oldValue newValue:mouseOver propertyName:@"mouseOver"];
}

-(void)setSelect:(HIFunction *)select {
	HIFunction *oldValue = _select;
	if(self.select) {
		[self removeObserver:self forKeyPath:@"select.isUpdated"];
	}
	_select = select;
	[self updateHIObject:oldValue newValue:select propertyName:@"select"];
}

-(void)setHide:(HIFunction *)hide {
	HIFunction *oldValue = _hide;
	if(self.hide) {
		[self removeObserver:self forKeyPath:@"hide.isUpdated"];
	}
	_hide = hide;
	[self updateHIObject:oldValue newValue:hide propertyName:@"hide"];
}

-(void)setShow:(HIFunction *)show {
	HIFunction *oldValue = _show;
	if(self.show) {
		[self removeObserver:self forKeyPath:@"show.isUpdated"];
	}
	_show = show;
	[self updateHIObject:oldValue newValue:show propertyName:@"show"];
}

-(void)setAfterAnimate:(HIFunction *)afterAnimate {
	HIFunction *oldValue = _afterAnimate;
	if(self.afterAnimate) {
		[self removeObserver:self forKeyPath:@"afterAnimate.isUpdated"];
	}
	_afterAnimate = afterAnimate;
	[self updateHIObject:oldValue newValue:afterAnimate propertyName:@"afterAnimate"];
}

@end