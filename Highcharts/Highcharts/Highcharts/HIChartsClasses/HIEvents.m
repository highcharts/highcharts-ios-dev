#import "HIChartsJSONSerializableSubclass.h"
#import "HIEvents.h"

@implementation HIEvents

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIEvents *copyEvents = [[HIEvents allocWithZone: zone] init];
	copyEvents.checkboxClick = [self.checkboxClick copyWithZone: zone];
	copyEvents.pointInBreak = [self.pointInBreak copyWithZone: zone];
	copyEvents.afterBreaks = [self.afterBreaks copyWithZone: zone];
	copyEvents.pointBreak = [self.pointBreak copyWithZone: zone];
	copyEvents.setExtremes = [self.setExtremes copyWithZone: zone];
	copyEvents.afterSetExtremes = [self.afterSetExtremes copyWithZone: zone];
	copyEvents.mouseover = [self.mouseover copyWithZone: zone];
	copyEvents.mouseout = [self.mouseout copyWithZone: zone];
	copyEvents.click = [self.click copyWithZone: zone];
	copyEvents.mousemove = [self.mousemove copyWithZone: zone];
	copyEvents.load = [self.load copyWithZone: zone];
	copyEvents.selection = [self.selection copyWithZone: zone];
	copyEvents.render = [self.render copyWithZone: zone];
	copyEvents.addSeries = [self.addSeries copyWithZone: zone];
	copyEvents.drillup = [self.drillup copyWithZone: zone];
	copyEvents.beforePrint = [self.beforePrint copyWithZone: zone];
	copyEvents.drillupall = [self.drillupall copyWithZone: zone];
	copyEvents.drilldown = [self.drilldown copyWithZone: zone];
	copyEvents.redraw = [self.redraw copyWithZone: zone];
	copyEvents.afterPrint = [self.afterPrint copyWithZone: zone];
	copyEvents.unselect = [self.unselect copyWithZone: zone];
	copyEvents.drop = [self.drop copyWithZone: zone];
	copyEvents.update = [self.update copyWithZone: zone];
	copyEvents.remove = [self.remove copyWithZone: zone];
	copyEvents.drag = [self.drag copyWithZone: zone];
	copyEvents.mouseOut = [self.mouseOut copyWithZone: zone];
	copyEvents.mouseOver = [self.mouseOver copyWithZone: zone];
	copyEvents.select = [self.select copyWithZone: zone];
	copyEvents.dragStart = [self.dragStart copyWithZone: zone];
	copyEvents.setRootNode = [self.setRootNode copyWithZone: zone];
	copyEvents.selectButton = [self.selectButton copyWithZone: zone];
	copyEvents.showPopup = [self.showPopup copyWithZone: zone];
	copyEvents.hidePopup = [self.hidePopup copyWithZone: zone];
	copyEvents.deselectButton = [self.deselectButton copyWithZone: zone];
	copyEvents.legendItemClick = [self.legendItemClick copyWithZone: zone];
	copyEvents.hide = [self.hide copyWithZone: zone];
	copyEvents.show = [self.show copyWithZone: zone];
	copyEvents.afterAnimate = [self.afterAnimate copyWithZone: zone];
	copyEvents.add = [self.add copyWithZone: zone];
	copyEvents.afterUpdate = [self.afterUpdate copyWithZone: zone];
	return copyEvents;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
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
	if (self.mouseover) {
		params[@"mouseover"] = [self.mouseover getFunction];
	}
	if (self.mouseout) {
		params[@"mouseout"] = [self.mouseout getFunction];
	}
	if (self.click) {
		params[@"click"] = [self.click getFunction];
	}
	if (self.mousemove) {
		params[@"mousemove"] = [self.mousemove getFunction];
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
	if (self.afterPrint) {
		params[@"afterPrint"] = [self.afterPrint getFunction];
	}
	if (self.unselect) {
		params[@"unselect"] = [self.unselect getFunction];
	}
	if (self.drop) {
		params[@"drop"] = [self.drop getFunction];
	}
	if (self.update) {
		params[@"update"] = [self.update getFunction];
	}
	if (self.remove) {
		params[@"remove"] = [self.remove getFunction];
	}
	if (self.drag) {
		params[@"drag"] = [self.drag getFunction];
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
	if (self.dragStart) {
		params[@"dragStart"] = [self.dragStart getFunction];
	}
	if (self.setRootNode) {
		params[@"setRootNode"] = [self.setRootNode getFunction];
	}
	if (self.selectButton) {
		params[@"selectButton"] = [self.selectButton getFunction];
	}
	if (self.showPopup) {
		params[@"showPopup"] = [self.showPopup getFunction];
	}
	if (self.hidePopup) {
		params[@"hidePopup"] = [self.hidePopup getFunction];
	}
	if (self.deselectButton) {
		params[@"deselectButton"] = [self.deselectButton getFunction];
	}
	if (self.legendItemClick) {
		params[@"legendItemClick"] = [self.legendItemClick getFunction];
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
	if (self.add) {
		params[@"add"] = [self.add getFunction];
	}
	if (self.afterUpdate) {
		params[@"afterUpdate"] = [self.afterUpdate getFunction];
	}
	return params;
}

# pragma mark - Setters

-(void)setCheckboxClick:(HIFunction *)checkboxClick {
	HIFunction *oldValue = _checkboxClick;
	_checkboxClick = checkboxClick;
	[self updateHIObject:oldValue newValue:checkboxClick propertyName:@"checkboxClick"];
}

-(void)setPointInBreak:(HIFunction *)pointInBreak {
	HIFunction *oldValue = _pointInBreak;
	_pointInBreak = pointInBreak;
	[self updateHIObject:oldValue newValue:pointInBreak propertyName:@"pointInBreak"];
}

-(void)setAfterBreaks:(HIFunction *)afterBreaks {
	HIFunction *oldValue = _afterBreaks;
	_afterBreaks = afterBreaks;
	[self updateHIObject:oldValue newValue:afterBreaks propertyName:@"afterBreaks"];
}

-(void)setPointBreak:(HIFunction *)pointBreak {
	HIFunction *oldValue = _pointBreak;
	_pointBreak = pointBreak;
	[self updateHIObject:oldValue newValue:pointBreak propertyName:@"pointBreak"];
}

-(void)setSetExtremes:(HIFunction *)setExtremes {
	HIFunction *oldValue = _setExtremes;
	_setExtremes = setExtremes;
	[self updateHIObject:oldValue newValue:setExtremes propertyName:@"setExtremes"];
}

-(void)setAfterSetExtremes:(HIFunction *)afterSetExtremes {
	HIFunction *oldValue = _afterSetExtremes;
	_afterSetExtremes = afterSetExtremes;
	[self updateHIObject:oldValue newValue:afterSetExtremes propertyName:@"afterSetExtremes"];
}

-(void)setMouseover:(HIFunction *)mouseover {
	HIFunction *oldValue = _mouseover;
	_mouseover = mouseover;
	[self updateHIObject:oldValue newValue:mouseover propertyName:@"mouseover"];
}

-(void)setMouseout:(HIFunction *)mouseout {
	HIFunction *oldValue = _mouseout;
	_mouseout = mouseout;
	[self updateHIObject:oldValue newValue:mouseout propertyName:@"mouseout"];
}

-(void)setClick:(HIFunction *)click {
	HIFunction *oldValue = _click;
	_click = click;
	[self updateHIObject:oldValue newValue:click propertyName:@"click"];
}

-(void)setMousemove:(HIFunction *)mousemove {
	HIFunction *oldValue = _mousemove;
	_mousemove = mousemove;
	[self updateHIObject:oldValue newValue:mousemove propertyName:@"mousemove"];
}

-(void)setLoad:(HIFunction *)load {
	HIFunction *oldValue = _load;
	_load = load;
	[self updateHIObject:oldValue newValue:load propertyName:@"load"];
}

-(void)setSelection:(HIFunction *)selection {
	HIFunction *oldValue = _selection;
	_selection = selection;
	[self updateHIObject:oldValue newValue:selection propertyName:@"selection"];
}

-(void)setRender:(HIFunction *)render {
	HIFunction *oldValue = _render;
	_render = render;
	[self updateHIObject:oldValue newValue:render propertyName:@"render"];
}

-(void)setAddSeries:(HIFunction *)addSeries {
	HIFunction *oldValue = _addSeries;
	_addSeries = addSeries;
	[self updateHIObject:oldValue newValue:addSeries propertyName:@"addSeries"];
}

-(void)setDrillup:(HIFunction *)drillup {
	HIFunction *oldValue = _drillup;
	_drillup = drillup;
	[self updateHIObject:oldValue newValue:drillup propertyName:@"drillup"];
}

-(void)setBeforePrint:(HIFunction *)beforePrint {
	HIFunction *oldValue = _beforePrint;
	_beforePrint = beforePrint;
	[self updateHIObject:oldValue newValue:beforePrint propertyName:@"beforePrint"];
}

-(void)setDrillupall:(HIFunction *)drillupall {
	HIFunction *oldValue = _drillupall;
	_drillupall = drillupall;
	[self updateHIObject:oldValue newValue:drillupall propertyName:@"drillupall"];
}

-(void)setDrilldown:(HIFunction *)drilldown {
	HIFunction *oldValue = _drilldown;
	_drilldown = drilldown;
	[self updateHIObject:oldValue newValue:drilldown propertyName:@"drilldown"];
}

-(void)setRedraw:(HIFunction *)redraw {
	HIFunction *oldValue = _redraw;
	_redraw = redraw;
	[self updateHIObject:oldValue newValue:redraw propertyName:@"redraw"];
}

-(void)setAfterPrint:(HIFunction *)afterPrint {
	HIFunction *oldValue = _afterPrint;
	_afterPrint = afterPrint;
	[self updateHIObject:oldValue newValue:afterPrint propertyName:@"afterPrint"];
}

-(void)setUnselect:(HIFunction *)unselect {
	HIFunction *oldValue = _unselect;
	_unselect = unselect;
	[self updateHIObject:oldValue newValue:unselect propertyName:@"unselect"];
}

-(void)setDrop:(HIFunction *)drop {
	HIFunction *oldValue = _drop;
	_drop = drop;
	[self updateHIObject:oldValue newValue:drop propertyName:@"drop"];
}

-(void)setUpdate:(HIFunction *)update {
	HIFunction *oldValue = _update;
	_update = update;
	[self updateHIObject:oldValue newValue:update propertyName:@"update"];
}

-(void)setRemove:(HIFunction *)remove {
	HIFunction *oldValue = _remove;
	_remove = remove;
	[self updateHIObject:oldValue newValue:remove propertyName:@"remove"];
}

-(void)setDrag:(HIFunction *)drag {
	HIFunction *oldValue = _drag;
	_drag = drag;
	[self updateHIObject:oldValue newValue:drag propertyName:@"drag"];
}

-(void)setMouseOut:(HIFunction *)mouseOut {
	HIFunction *oldValue = _mouseOut;
	_mouseOut = mouseOut;
	[self updateHIObject:oldValue newValue:mouseOut propertyName:@"mouseOut"];
}

-(void)setMouseOver:(HIFunction *)mouseOver {
	HIFunction *oldValue = _mouseOver;
	_mouseOver = mouseOver;
	[self updateHIObject:oldValue newValue:mouseOver propertyName:@"mouseOver"];
}

-(void)setSelect:(HIFunction *)select {
	HIFunction *oldValue = _select;
	_select = select;
	[self updateHIObject:oldValue newValue:select propertyName:@"select"];
}

-(void)setDragStart:(HIFunction *)dragStart {
	HIFunction *oldValue = _dragStart;
	_dragStart = dragStart;
	[self updateHIObject:oldValue newValue:dragStart propertyName:@"dragStart"];
}

-(void)setSetRootNode:(HIFunction *)setRootNode {
	HIFunction *oldValue = _setRootNode;
	_setRootNode = setRootNode;
	[self updateHIObject:oldValue newValue:setRootNode propertyName:@"setRootNode"];
}

-(void)setSelectButton:(HIFunction *)selectButton {
	HIFunction *oldValue = _selectButton;
	_selectButton = selectButton;
	[self updateHIObject:oldValue newValue:selectButton propertyName:@"selectButton"];
}

-(void)setShowPopup:(HIFunction *)showPopup {
	HIFunction *oldValue = _showPopup;
	_showPopup = showPopup;
	[self updateHIObject:oldValue newValue:showPopup propertyName:@"showPopup"];
}

-(void)setHidePopup:(HIFunction *)hidePopup {
	HIFunction *oldValue = _hidePopup;
	_hidePopup = hidePopup;
	[self updateHIObject:oldValue newValue:hidePopup propertyName:@"hidePopup"];
}

-(void)setDeselectButton:(HIFunction *)deselectButton {
	HIFunction *oldValue = _deselectButton;
	_deselectButton = deselectButton;
	[self updateHIObject:oldValue newValue:deselectButton propertyName:@"deselectButton"];
}

-(void)setLegendItemClick:(HIFunction *)legendItemClick {
	HIFunction *oldValue = _legendItemClick;
	_legendItemClick = legendItemClick;
	[self updateHIObject:oldValue newValue:legendItemClick propertyName:@"legendItemClick"];
}

-(void)setHide:(HIFunction *)hide {
	HIFunction *oldValue = _hide;
	_hide = hide;
	[self updateHIObject:oldValue newValue:hide propertyName:@"hide"];
}

-(void)setShow:(HIFunction *)show {
	HIFunction *oldValue = _show;
	_show = show;
	[self updateHIObject:oldValue newValue:show propertyName:@"show"];
}

-(void)setAfterAnimate:(HIFunction *)afterAnimate {
	HIFunction *oldValue = _afterAnimate;
	_afterAnimate = afterAnimate;
	[self updateHIObject:oldValue newValue:afterAnimate propertyName:@"afterAnimate"];
}

-(void)setAdd:(HIFunction *)add {
	HIFunction *oldValue = _add;
	_add = add;
	[self updateHIObject:oldValue newValue:add propertyName:@"add"];
}

-(void)setAfterUpdate:(HIFunction *)afterUpdate {
	HIFunction *oldValue = _afterUpdate;
	_afterUpdate = afterUpdate;
	[self updateHIObject:oldValue newValue:afterUpdate propertyName:@"afterUpdate"];
}

@end