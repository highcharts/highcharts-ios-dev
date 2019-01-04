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
	_horizontalLine = horizontalLine;
	[self updateNSObject:@"horizontalLine"];
}

-(void)setBackgroundColors:(NSString *)backgroundColors {
	_backgroundColors = backgroundColors;
	[self updateNSObject:@"backgroundColors"];
}

-(void)setSeries:(NSString *)series {
	_series = series;
	[self updateNSObject:@"series"];
}

-(void)setLabels:(NSString *)labels {
	_labels = labels;
	[self updateNSObject:@"labels"];
}

-(void)setHeight:(NSString *)height {
	_height = height;
	[self updateNSObject:@"height"];
}

-(void)setAddButton:(NSString *)addButton {
	_addButton = addButton;
	[self updateNSObject:@"addButton"];
}

-(void)setVerticalCounter:(NSString *)verticalCounter {
	_verticalCounter = verticalCounter;
	[self updateNSObject:@"verticalCounter"];
}

-(void)setStroke:(NSString *)stroke {
	_stroke = stroke;
	[self updateNSObject:@"stroke"];
}

-(void)setFibonacci:(NSString *)fibonacci {
	_fibonacci = fibonacci;
	[self updateNSObject:@"fibonacci"];
}

-(void)setMeasure:(NSString *)measure {
	_measure = measure;
	[self updateNSObject:@"measure"];
}

-(void)setRemoveButton:(NSString *)removeButton {
	_removeButton = removeButton;
	[self updateNSObject:@"removeButton"];
}

-(void)setVerticalArrow:(NSString *)verticalArrow {
	_verticalArrow = verticalArrow;
	[self updateNSObject:@"verticalArrow"];
}

-(void)setFill:(NSString *)fill {
	_fill = fill;
	[self updateNSObject:@"fill"];
}

-(void)setBorderColor:(NSString *)borderColor {
	_borderColor = borderColor;
	[self updateNSObject:@"borderColor"];
}

-(void)setShapes:(NSString *)shapes {
	_shapes = shapes;
	[self updateNSObject:@"shapes"];
}

-(void)setStyle:(NSString *)style {
	_style = style;
	[self updateNSObject:@"style"];
}

-(void)setCrosshairX:(NSString *)crosshairX {
	_crosshairX = crosshairX;
	[self updateNSObject:@"crosshairX"];
}

-(void)setCrosshairY:(NSString *)crosshairY {
	_crosshairY = crosshairY;
	[self updateNSObject:@"crosshairY"];
}

-(void)setArrowLine:(NSString *)arrowLine {
	_arrowLine = arrowLine;
	[self updateNSObject:@"arrowLine"];
}

-(void)setTypeOptions:(NSString *)typeOptions {
	_typeOptions = typeOptions;
	[self updateNSObject:@"typeOptions"];
}

-(void)setLabel:(NSString *)label {
	_label = label;
	[self updateNSObject:@"label"];
}

-(void)setConnector:(NSString *)connector {
	_connector = connector;
	[self updateNSObject:@"connector"];
}

-(void)setArrowRay:(NSString *)arrowRay {
	_arrowRay = arrowRay;
	[self updateNSObject:@"arrowRay"];
}

-(void)setFontSize:(NSString *)fontSize {
	_fontSize = fontSize;
	[self updateNSObject:@"fontSize"];
}

-(void)setBackgroundColor:(NSString *)backgroundColor {
	_backgroundColor = backgroundColor;
	[self updateNSObject:@"backgroundColor"];
}

-(void)setArrowSegment:(NSString *)arrowSegment {
	_arrowSegment = arrowSegment;
	[self updateNSObject:@"arrowSegment"];
}

-(void)setRay:(NSString *)ray {
	_ray = ray;
	[self updateNSObject:@"ray"];
}

-(void)setVerticalLabel:(NSString *)verticalLabel {
	_verticalLabel = verticalLabel;
	[self updateNSObject:@"verticalLabel"];
}

-(void)setBorderRadius:(NSString *)borderRadius {
	_borderRadius = borderRadius;
	[self updateNSObject:@"borderRadius"];
}

-(void)setVolume:(NSString *)volume {
	_volume = volume;
	[self updateNSObject:@"volume"];
}

-(void)setStrokeWidth:(NSString *)strokeWidth {
	_strokeWidth = strokeWidth;
	[self updateNSObject:@"strokeWidth"];
}

-(void)setFormat:(NSString *)format {
	_format = format;
	[self updateNSObject:@"format"];
}

-(void)setLabelOptions:(NSString *)labelOptions {
	_labelOptions = labelOptions;
	[self updateNSObject:@"labelOptions"];
}

-(void)setElliott5:(NSString *)elliott5 {
	_elliott5 = elliott5;
	[self updateNSObject:@"elliott5"];
}

-(void)setElliott3:(NSString *)elliott3 {
	_elliott3 = elliott3;
	[self updateNSObject:@"elliott3"];
}

-(void)setPadding:(NSString *)padding {
	_padding = padding;
	[self updateNSObject:@"padding"];
}

-(void)setSimpleShapes:(NSString *)simpleShapes {
	_simpleShapes = simpleShapes;
	[self updateNSObject:@"simpleShapes"];
}

-(void)setVerticalLine:(NSString *)verticalLine {
	_verticalLine = verticalLine;
	[self updateNSObject:@"verticalLine"];
}

-(void)setParallelChannel:(NSString *)parallelChannel {
	_parallelChannel = parallelChannel;
	[self updateNSObject:@"parallelChannel"];
}

-(void)setBackground:(NSString *)background {
	_background = background;
	[self updateNSObject:@"background"];
}

-(void)setSaveButton:(NSString *)saveButton {
	_saveButton = saveButton;
	[self updateNSObject:@"saveButton"];
}

-(void)setLine:(NSString *)line {
	_line = line;
	[self updateNSObject:@"line"];
}

-(void)setSegment:(NSString *)segment {
	_segment = segment;
	[self updateNSObject:@"segment"];
}

-(void)setCircle:(NSString *)circle {
	_circle = circle;
	[self updateNSObject:@"circle"];
}

-(void)setColor:(NSString *)color {
	_color = color;
	[self updateNSObject:@"color"];
}

-(void)setMeasureX:(NSString *)measureX {
	_measureX = measureX;
	[self updateNSObject:@"measureX"];
}

-(void)setMeasureY:(NSString *)measureY {
	_measureY = measureY;
	[self updateNSObject:@"measureY"];
}

-(void)setInnerBackground:(NSString *)innerBackground {
	_innerBackground = innerBackground;
	[self updateNSObject:@"innerBackground"];
}

-(void)setName:(NSString *)name {
	_name = name;
	[self updateNSObject:@"name"];
}

-(void)setMeasureXY:(NSString *)measureXY {
	_measureXY = measureXY;
	[self updateNSObject:@"measureXY"];
}

-(void)setOuterBackground:(NSString *)outerBackground {
	_outerBackground = outerBackground;
	[self updateNSObject:@"outerBackground"];
}

-(void)setRectangle:(NSString *)rectangle {
	_rectangle = rectangle;
	[self updateNSObject:@"rectangle"];
}

-(void)setLines:(NSString *)lines {
	_lines = lines;
	[self updateNSObject:@"lines"];
}

-(void)setPitchfork:(NSString *)pitchfork {
	_pitchfork = pitchfork;
	[self updateNSObject:@"pitchfork"];
}

-(void)setCrooked5:(NSString *)crooked5 {
	_crooked5 = crooked5;
	[self updateNSObject:@"crooked5"];
}

-(void)setTunnel:(NSString *)tunnel {
	_tunnel = tunnel;
	[self updateNSObject:@"tunnel"];
}

-(void)setFlags:(NSString *)flags {
	_flags = flags;
	[self updateNSObject:@"flags"];
}

-(void)setBorderWidth:(NSString *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setCrooked3:(NSString *)crooked3 {
	_crooked3 = crooked3;
	[self updateNSObject:@"crooked3"];
}

-(void)setTitle:(NSString *)title {
	_title = title;
	[self updateNSObject:@"title"];
}

-(void)setEditButton:(NSString *)editButton {
	_editButton = editButton;
	[self updateNSObject:@"editButton"];
}

-(void)setShapeOptions:(NSString *)shapeOptions {
	_shapeOptions = shapeOptions;
	[self updateNSObject:@"shapeOptions"];
}

-(void)setInfinityLine:(NSString *)infinityLine {
	_infinityLine = infinityLine;
	[self updateNSObject:@"infinityLine"];
}

@end