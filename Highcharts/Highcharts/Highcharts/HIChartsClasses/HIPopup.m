#import "HIChartsJSONSerializableSubclass.h"
#import "HIPopup.h"

@implementation HIPopup

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPopup *copyPopup = [[HIPopup allocWithZone: zone] init];
	copyPopup.horizontalLine = [self.horizontalLine copyWithZone: zone];
	copyPopup.backgroundColors = [self.backgroundColors copyWithZone: zone];
	copyPopup.series = [self.series copyWithZone: zone];
	copyPopup.labels = [self.labels copyWithZone: zone];
	copyPopup.height = [self.height copyWithZone: zone];
	copyPopup.addButton = [self.addButton copyWithZone: zone];
	copyPopup.verticalCounter = [self.verticalCounter copyWithZone: zone];
	copyPopup.stroke = [self.stroke copyWithZone: zone];
	copyPopup.fibonacci = [self.fibonacci copyWithZone: zone];
	copyPopup.measure = [self.measure copyWithZone: zone];
	copyPopup.removeButton = [self.removeButton copyWithZone: zone];
	copyPopup.verticalArrow = [self.verticalArrow copyWithZone: zone];
	copyPopup.fill = [self.fill copyWithZone: zone];
	copyPopup.borderColor = [self.borderColor copyWithZone: zone];
	copyPopup.shapes = [self.shapes copyWithZone: zone];
	copyPopup.style = [self.style copyWithZone: zone];
	copyPopup.crosshairX = [self.crosshairX copyWithZone: zone];
	copyPopup.crosshairY = [self.crosshairY copyWithZone: zone];
	copyPopup.arrowLine = [self.arrowLine copyWithZone: zone];
	copyPopup.typeOptions = [self.typeOptions copyWithZone: zone];
	copyPopup.label = [self.label copyWithZone: zone];
	copyPopup.connector = [self.connector copyWithZone: zone];
	copyPopup.arrowRay = [self.arrowRay copyWithZone: zone];
	copyPopup.fontSize = [self.fontSize copyWithZone: zone];
	copyPopup.backgroundColor = [self.backgroundColor copyWithZone: zone];
	copyPopup.arrowSegment = [self.arrowSegment copyWithZone: zone];
	copyPopup.ray = [self.ray copyWithZone: zone];
	copyPopup.verticalLabel = [self.verticalLabel copyWithZone: zone];
	copyPopup.borderRadius = [self.borderRadius copyWithZone: zone];
	copyPopup.volume = [self.volume copyWithZone: zone];
	copyPopup.strokeWidth = [self.strokeWidth copyWithZone: zone];
	copyPopup.format = [self.format copyWithZone: zone];
	copyPopup.labelOptions = [self.labelOptions copyWithZone: zone];
	copyPopup.elliott5 = [self.elliott5 copyWithZone: zone];
	copyPopup.elliott3 = [self.elliott3 copyWithZone: zone];
	copyPopup.padding = [self.padding copyWithZone: zone];
	copyPopup.simpleShapes = [self.simpleShapes copyWithZone: zone];
	copyPopup.verticalLine = [self.verticalLine copyWithZone: zone];
	copyPopup.parallelChannel = [self.parallelChannel copyWithZone: zone];
	copyPopup.background = [self.background copyWithZone: zone];
	copyPopup.saveButton = [self.saveButton copyWithZone: zone];
	copyPopup.line = [self.line copyWithZone: zone];
	copyPopup.segment = [self.segment copyWithZone: zone];
	copyPopup.circle = [self.circle copyWithZone: zone];
	copyPopup.color = [self.color copyWithZone: zone];
	copyPopup.measureX = [self.measureX copyWithZone: zone];
	copyPopup.measureY = [self.measureY copyWithZone: zone];
	copyPopup.innerBackground = [self.innerBackground copyWithZone: zone];
	copyPopup.name = [self.name copyWithZone: zone];
	copyPopup.measureXY = [self.measureXY copyWithZone: zone];
	copyPopup.outerBackground = [self.outerBackground copyWithZone: zone];
	copyPopup.rectangle = [self.rectangle copyWithZone: zone];
	copyPopup.lines = [self.lines copyWithZone: zone];
	copyPopup.pitchfork = [self.pitchfork copyWithZone: zone];
	copyPopup.crooked5 = [self.crooked5 copyWithZone: zone];
	copyPopup.tunnel = [self.tunnel copyWithZone: zone];
	copyPopup.flags = [self.flags copyWithZone: zone];
	copyPopup.borderWidth = [self.borderWidth copyWithZone: zone];
	copyPopup.crooked3 = [self.crooked3 copyWithZone: zone];
	copyPopup.title = [self.title copyWithZone: zone];
	copyPopup.editButton = [self.editButton copyWithZone: zone];
	copyPopup.shapeOptions = [self.shapeOptions copyWithZone: zone];
	copyPopup.infinityLine = [self.infinityLine copyWithZone: zone];
	return copyPopup;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.horizontalLine) {
		params[@"horizontalLine"] = self.horizontalLine;
	}
	if (self.backgroundColors) {
		params[@"backgroundColors"] = self.backgroundColors;
	}
	if (self.series) {
		params[@"series"] = self.series;
	}
	if (self.labels) {
		params[@"labels"] = self.labels;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.addButton) {
		params[@"addButton"] = self.addButton;
	}
	if (self.verticalCounter) {
		params[@"verticalCounter"] = self.verticalCounter;
	}
	if (self.stroke) {
		params[@"stroke"] = self.stroke;
	}
	if (self.fibonacci) {
		params[@"fibonacci"] = self.fibonacci;
	}
	if (self.measure) {
		params[@"measure"] = self.measure;
	}
	if (self.removeButton) {
		params[@"removeButton"] = self.removeButton;
	}
	if (self.verticalArrow) {
		params[@"verticalArrow"] = self.verticalArrow;
	}
	if (self.fill) {
		params[@"fill"] = self.fill;
	}
	if (self.borderColor) {
		params[@"borderColor"] = self.borderColor;
	}
	if (self.shapes) {
		params[@"shapes"] = self.shapes;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.crosshairX) {
		params[@"crosshairX"] = self.crosshairX;
	}
	if (self.crosshairY) {
		params[@"crosshairY"] = self.crosshairY;
	}
	if (self.arrowLine) {
		params[@"arrowLine"] = self.arrowLine;
	}
	if (self.typeOptions) {
		params[@"typeOptions"] = self.typeOptions;
	}
	if (self.label) {
		params[@"label"] = self.label;
	}
	if (self.connector) {
		params[@"connector"] = self.connector;
	}
	if (self.arrowRay) {
		params[@"arrowRay"] = self.arrowRay;
	}
	if (self.fontSize) {
		params[@"fontSize"] = self.fontSize;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = self.backgroundColor;
	}
	if (self.arrowSegment) {
		params[@"arrowSegment"] = self.arrowSegment;
	}
	if (self.ray) {
		params[@"ray"] = self.ray;
	}
	if (self.verticalLabel) {
		params[@"verticalLabel"] = self.verticalLabel;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.volume) {
		params[@"volume"] = self.volume;
	}
	if (self.strokeWidth) {
		params[@"strokeWidth"] = self.strokeWidth;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.labelOptions) {
		params[@"labelOptions"] = self.labelOptions;
	}
	if (self.elliott5) {
		params[@"elliott5"] = self.elliott5;
	}
	if (self.elliott3) {
		params[@"elliott3"] = self.elliott3;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.simpleShapes) {
		params[@"simpleShapes"] = self.simpleShapes;
	}
	if (self.verticalLine) {
		params[@"verticalLine"] = self.verticalLine;
	}
	if (self.parallelChannel) {
		params[@"parallelChannel"] = self.parallelChannel;
	}
	if (self.background) {
		params[@"background"] = self.background;
	}
	if (self.saveButton) {
		params[@"saveButton"] = self.saveButton;
	}
	if (self.line) {
		params[@"line"] = self.line;
	}
	if (self.segment) {
		params[@"segment"] = self.segment;
	}
	if (self.circle) {
		params[@"circle"] = self.circle;
	}
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.measureX) {
		params[@"measureX"] = self.measureX;
	}
	if (self.measureY) {
		params[@"measureY"] = self.measureY;
	}
	if (self.innerBackground) {
		params[@"innerBackground"] = self.innerBackground;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.measureXY) {
		params[@"measureXY"] = self.measureXY;
	}
	if (self.outerBackground) {
		params[@"outerBackground"] = self.outerBackground;
	}
	if (self.rectangle) {
		params[@"rectangle"] = self.rectangle;
	}
	if (self.lines) {
		params[@"lines"] = self.lines;
	}
	if (self.pitchfork) {
		params[@"pitchfork"] = self.pitchfork;
	}
	if (self.crooked5) {
		params[@"crooked5"] = self.crooked5;
	}
	if (self.tunnel) {
		params[@"tunnel"] = self.tunnel;
	}
	if (self.flags) {
		params[@"flags"] = self.flags;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.crooked3) {
		params[@"crooked3"] = self.crooked3;
	}
	if (self.title) {
		params[@"title"] = self.title;
	}
	if (self.editButton) {
		params[@"editButton"] = self.editButton;
	}
	if (self.shapeOptions) {
		params[@"shapeOptions"] = self.shapeOptions;
	}
	if (self.infinityLine) {
		params[@"infinityLine"] = self.infinityLine;
	}
	return params;
}

# pragma mark - Setters

-(void)setHorizontalLine:(NSString *)horizontalLine {
	NSString *oldValue = _horizontalLine;
	_horizontalLine = horizontalLine;
	[self updateNSObject:oldValue newValue:horizontalLine propertyName:@"horizontalLine"];
}

-(void)setBackgroundColors:(NSString *)backgroundColors {
	NSString *oldValue = _backgroundColors;
	_backgroundColors = backgroundColors;
	[self updateNSObject:oldValue newValue:backgroundColors propertyName:@"backgroundColors"];
}

-(void)setSeries:(NSString *)series {
	NSString *oldValue = _series;
	_series = series;
	[self updateNSObject:oldValue newValue:series propertyName:@"series"];
}

-(void)setLabels:(NSString *)labels {
	NSString *oldValue = _labels;
	_labels = labels;
	[self updateNSObject:oldValue newValue:labels propertyName:@"labels"];
}

-(void)setHeight:(NSString *)height {
	NSString *oldValue = _height;
	_height = height;
	[self updateNSObject:oldValue newValue:height propertyName:@"height"];
}

-(void)setAddButton:(NSString *)addButton {
	NSString *oldValue = _addButton;
	_addButton = addButton;
	[self updateNSObject:oldValue newValue:addButton propertyName:@"addButton"];
}

-(void)setVerticalCounter:(NSString *)verticalCounter {
	NSString *oldValue = _verticalCounter;
	_verticalCounter = verticalCounter;
	[self updateNSObject:oldValue newValue:verticalCounter propertyName:@"verticalCounter"];
}

-(void)setStroke:(NSString *)stroke {
	NSString *oldValue = _stroke;
	_stroke = stroke;
	[self updateNSObject:oldValue newValue:stroke propertyName:@"stroke"];
}

-(void)setFibonacci:(NSString *)fibonacci {
	NSString *oldValue = _fibonacci;
	_fibonacci = fibonacci;
	[self updateNSObject:oldValue newValue:fibonacci propertyName:@"fibonacci"];
}

-(void)setMeasure:(NSString *)measure {
	NSString *oldValue = _measure;
	_measure = measure;
	[self updateNSObject:oldValue newValue:measure propertyName:@"measure"];
}

-(void)setRemoveButton:(NSString *)removeButton {
	NSString *oldValue = _removeButton;
	_removeButton = removeButton;
	[self updateNSObject:oldValue newValue:removeButton propertyName:@"removeButton"];
}

-(void)setVerticalArrow:(NSString *)verticalArrow {
	NSString *oldValue = _verticalArrow;
	_verticalArrow = verticalArrow;
	[self updateNSObject:oldValue newValue:verticalArrow propertyName:@"verticalArrow"];
}

-(void)setFill:(NSString *)fill {
	NSString *oldValue = _fill;
	_fill = fill;
	[self updateNSObject:oldValue newValue:fill propertyName:@"fill"];
}

-(void)setBorderColor:(NSString *)borderColor {
	NSString *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateNSObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setShapes:(NSString *)shapes {
	NSString *oldValue = _shapes;
	_shapes = shapes;
	[self updateNSObject:oldValue newValue:shapes propertyName:@"shapes"];
}

-(void)setStyle:(NSString *)style {
	NSString *oldValue = _style;
	_style = style;
	[self updateNSObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setCrosshairX:(NSString *)crosshairX {
	NSString *oldValue = _crosshairX;
	_crosshairX = crosshairX;
	[self updateNSObject:oldValue newValue:crosshairX propertyName:@"crosshairX"];
}

-(void)setCrosshairY:(NSString *)crosshairY {
	NSString *oldValue = _crosshairY;
	_crosshairY = crosshairY;
	[self updateNSObject:oldValue newValue:crosshairY propertyName:@"crosshairY"];
}

-(void)setArrowLine:(NSString *)arrowLine {
	NSString *oldValue = _arrowLine;
	_arrowLine = arrowLine;
	[self updateNSObject:oldValue newValue:arrowLine propertyName:@"arrowLine"];
}

-(void)setTypeOptions:(NSString *)typeOptions {
	NSString *oldValue = _typeOptions;
	_typeOptions = typeOptions;
	[self updateNSObject:oldValue newValue:typeOptions propertyName:@"typeOptions"];
}

-(void)setLabel:(NSString *)label {
	NSString *oldValue = _label;
	_label = label;
	[self updateNSObject:oldValue newValue:label propertyName:@"label"];
}

-(void)setConnector:(NSString *)connector {
	NSString *oldValue = _connector;
	_connector = connector;
	[self updateNSObject:oldValue newValue:connector propertyName:@"connector"];
}

-(void)setArrowRay:(NSString *)arrowRay {
	NSString *oldValue = _arrowRay;
	_arrowRay = arrowRay;
	[self updateNSObject:oldValue newValue:arrowRay propertyName:@"arrowRay"];
}

-(void)setFontSize:(NSString *)fontSize {
	NSString *oldValue = _fontSize;
	_fontSize = fontSize;
	[self updateNSObject:oldValue newValue:fontSize propertyName:@"fontSize"];
}

-(void)setBackgroundColor:(NSString *)backgroundColor {
	NSString *oldValue = _backgroundColor;
	_backgroundColor = backgroundColor;
	[self updateNSObject:oldValue newValue:backgroundColor propertyName:@"backgroundColor"];
}

-(void)setArrowSegment:(NSString *)arrowSegment {
	NSString *oldValue = _arrowSegment;
	_arrowSegment = arrowSegment;
	[self updateNSObject:oldValue newValue:arrowSegment propertyName:@"arrowSegment"];
}

-(void)setRay:(NSString *)ray {
	NSString *oldValue = _ray;
	_ray = ray;
	[self updateNSObject:oldValue newValue:ray propertyName:@"ray"];
}

-(void)setVerticalLabel:(NSString *)verticalLabel {
	NSString *oldValue = _verticalLabel;
	_verticalLabel = verticalLabel;
	[self updateNSObject:oldValue newValue:verticalLabel propertyName:@"verticalLabel"];
}

-(void)setBorderRadius:(NSString *)borderRadius {
	NSString *oldValue = _borderRadius;
	_borderRadius = borderRadius;
	[self updateNSObject:oldValue newValue:borderRadius propertyName:@"borderRadius"];
}

-(void)setVolume:(NSString *)volume {
	NSString *oldValue = _volume;
	_volume = volume;
	[self updateNSObject:oldValue newValue:volume propertyName:@"volume"];
}

-(void)setStrokeWidth:(NSString *)strokeWidth {
	NSString *oldValue = _strokeWidth;
	_strokeWidth = strokeWidth;
	[self updateNSObject:oldValue newValue:strokeWidth propertyName:@"strokeWidth"];
}

-(void)setFormat:(NSString *)format {
	NSString *oldValue = _format;
	_format = format;
	[self updateNSObject:oldValue newValue:format propertyName:@"format"];
}

-(void)setLabelOptions:(NSString *)labelOptions {
	NSString *oldValue = _labelOptions;
	_labelOptions = labelOptions;
	[self updateNSObject:oldValue newValue:labelOptions propertyName:@"labelOptions"];
}

-(void)setElliott5:(NSString *)elliott5 {
	NSString *oldValue = _elliott5;
	_elliott5 = elliott5;
	[self updateNSObject:oldValue newValue:elliott5 propertyName:@"elliott5"];
}

-(void)setElliott3:(NSString *)elliott3 {
	NSString *oldValue = _elliott3;
	_elliott3 = elliott3;
	[self updateNSObject:oldValue newValue:elliott3 propertyName:@"elliott3"];
}

-(void)setPadding:(NSString *)padding {
	NSString *oldValue = _padding;
	_padding = padding;
	[self updateNSObject:oldValue newValue:padding propertyName:@"padding"];
}

-(void)setSimpleShapes:(NSString *)simpleShapes {
	NSString *oldValue = _simpleShapes;
	_simpleShapes = simpleShapes;
	[self updateNSObject:oldValue newValue:simpleShapes propertyName:@"simpleShapes"];
}

-(void)setVerticalLine:(NSString *)verticalLine {
	NSString *oldValue = _verticalLine;
	_verticalLine = verticalLine;
	[self updateNSObject:oldValue newValue:verticalLine propertyName:@"verticalLine"];
}

-(void)setParallelChannel:(NSString *)parallelChannel {
	NSString *oldValue = _parallelChannel;
	_parallelChannel = parallelChannel;
	[self updateNSObject:oldValue newValue:parallelChannel propertyName:@"parallelChannel"];
}

-(void)setBackground:(NSString *)background {
	NSString *oldValue = _background;
	_background = background;
	[self updateNSObject:oldValue newValue:background propertyName:@"background"];
}

-(void)setSaveButton:(NSString *)saveButton {
	NSString *oldValue = _saveButton;
	_saveButton = saveButton;
	[self updateNSObject:oldValue newValue:saveButton propertyName:@"saveButton"];
}

-(void)setLine:(NSString *)line {
	NSString *oldValue = _line;
	_line = line;
	[self updateNSObject:oldValue newValue:line propertyName:@"line"];
}

-(void)setSegment:(NSString *)segment {
	NSString *oldValue = _segment;
	_segment = segment;
	[self updateNSObject:oldValue newValue:segment propertyName:@"segment"];
}

-(void)setCircle:(NSString *)circle {
	NSString *oldValue = _circle;
	_circle = circle;
	[self updateNSObject:oldValue newValue:circle propertyName:@"circle"];
}

-(void)setColor:(NSString *)color {
	NSString *oldValue = _color;
	_color = color;
	[self updateNSObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setMeasureX:(NSString *)measureX {
	NSString *oldValue = _measureX;
	_measureX = measureX;
	[self updateNSObject:oldValue newValue:measureX propertyName:@"measureX"];
}

-(void)setMeasureY:(NSString *)measureY {
	NSString *oldValue = _measureY;
	_measureY = measureY;
	[self updateNSObject:oldValue newValue:measureY propertyName:@"measureY"];
}

-(void)setInnerBackground:(NSString *)innerBackground {
	NSString *oldValue = _innerBackground;
	_innerBackground = innerBackground;
	[self updateNSObject:oldValue newValue:innerBackground propertyName:@"innerBackground"];
}

-(void)setName:(NSString *)name {
	NSString *oldValue = _name;
	_name = name;
	[self updateNSObject:oldValue newValue:name propertyName:@"name"];
}

-(void)setMeasureXY:(NSString *)measureXY {
	NSString *oldValue = _measureXY;
	_measureXY = measureXY;
	[self updateNSObject:oldValue newValue:measureXY propertyName:@"measureXY"];
}

-(void)setOuterBackground:(NSString *)outerBackground {
	NSString *oldValue = _outerBackground;
	_outerBackground = outerBackground;
	[self updateNSObject:oldValue newValue:outerBackground propertyName:@"outerBackground"];
}

-(void)setRectangle:(NSString *)rectangle {
	NSString *oldValue = _rectangle;
	_rectangle = rectangle;
	[self updateNSObject:oldValue newValue:rectangle propertyName:@"rectangle"];
}

-(void)setLines:(NSString *)lines {
	NSString *oldValue = _lines;
	_lines = lines;
	[self updateNSObject:oldValue newValue:lines propertyName:@"lines"];
}

-(void)setPitchfork:(NSString *)pitchfork {
	NSString *oldValue = _pitchfork;
	_pitchfork = pitchfork;
	[self updateNSObject:oldValue newValue:pitchfork propertyName:@"pitchfork"];
}

-(void)setCrooked5:(NSString *)crooked5 {
	NSString *oldValue = _crooked5;
	_crooked5 = crooked5;
	[self updateNSObject:oldValue newValue:crooked5 propertyName:@"crooked5"];
}

-(void)setTunnel:(NSString *)tunnel {
	NSString *oldValue = _tunnel;
	_tunnel = tunnel;
	[self updateNSObject:oldValue newValue:tunnel propertyName:@"tunnel"];
}

-(void)setFlags:(NSString *)flags {
	NSString *oldValue = _flags;
	_flags = flags;
	[self updateNSObject:oldValue newValue:flags propertyName:@"flags"];
}

-(void)setBorderWidth:(NSString *)borderWidth {
	NSString *oldValue = _borderWidth;
	_borderWidth = borderWidth;
	[self updateNSObject:oldValue newValue:borderWidth propertyName:@"borderWidth"];
}

-(void)setCrooked3:(NSString *)crooked3 {
	NSString *oldValue = _crooked3;
	_crooked3 = crooked3;
	[self updateNSObject:oldValue newValue:crooked3 propertyName:@"crooked3"];
}

-(void)setTitle:(NSString *)title {
	NSString *oldValue = _title;
	_title = title;
	[self updateNSObject:oldValue newValue:title propertyName:@"title"];
}

-(void)setEditButton:(NSString *)editButton {
	NSString *oldValue = _editButton;
	_editButton = editButton;
	[self updateNSObject:oldValue newValue:editButton propertyName:@"editButton"];
}

-(void)setShapeOptions:(NSString *)shapeOptions {
	NSString *oldValue = _shapeOptions;
	_shapeOptions = shapeOptions;
	[self updateNSObject:oldValue newValue:shapeOptions propertyName:@"shapeOptions"];
}

-(void)setInfinityLine:(NSString *)infinityLine {
	NSString *oldValue = _infinityLine;
	_infinityLine = infinityLine;
	[self updateNSObject:oldValue newValue:infinityLine propertyName:@"infinityLine"];
}

@end