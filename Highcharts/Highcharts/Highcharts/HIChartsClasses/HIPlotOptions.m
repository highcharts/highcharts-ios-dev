#import "HIChartsJSONSerializableSubclass.h"
#import "HIPlotOptions.h"

@implementation HIPlotOptions

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPlotOptions *copyPlotOptions = [[HIPlotOptions allocWithZone: zone] init];
	copyPlotOptions.gauge = [self.gauge copyWithZone: zone];
	copyPlotOptions.variablepie = [self.variablepie copyWithZone: zone];
	copyPlotOptions.dumbbell = [self.dumbbell copyWithZone: zone];
	copyPlotOptions.streamgraph = [self.streamgraph copyWithZone: zone];
	copyPlotOptions.networkgraph = [self.networkgraph copyWithZone: zone];
	copyPlotOptions.bar = [self.bar copyWithZone: zone];
	copyPlotOptions.variwide = [self.variwide copyWithZone: zone];
	copyPlotOptions.areasplinerange = [self.areasplinerange copyWithZone: zone];
	copyPlotOptions.item = [self.item copyWithZone: zone];
	copyPlotOptions.vector = [self.vector copyWithZone: zone];
	copyPlotOptions.columnpyramid = [self.columnpyramid copyWithZone: zone];
	copyPlotOptions.arearange = [self.arearange copyWithZone: zone];
	copyPlotOptions.bellcurve = [self.bellcurve copyWithZone: zone];
	copyPlotOptions.series = [self.series copyWithZone: zone];
	copyPlotOptions.pyramid3d = [self.pyramid3d copyWithZone: zone];
	copyPlotOptions.pareto = [self.pareto copyWithZone: zone];
	copyPlotOptions.dependencywheel = [self.dependencywheel copyWithZone: zone];
	copyPlotOptions.heatmap = [self.heatmap copyWithZone: zone];
	copyPlotOptions.solidgauge = [self.solidgauge copyWithZone: zone];
	copyPlotOptions.timeline = [self.timeline copyWithZone: zone];
	copyPlotOptions.funnel3d = [self.funnel3d copyWithZone: zone];
	copyPlotOptions.lollipop = [self.lollipop copyWithZone: zone];
	copyPlotOptions.column = [self.column copyWithZone: zone];
	copyPlotOptions.treemap = [self.treemap copyWithZone: zone];
	copyPlotOptions.waterfall = [self.waterfall copyWithZone: zone];
	copyPlotOptions.columnrange = [self.columnrange copyWithZone: zone];
	copyPlotOptions.packedBubble = [self.packedBubble copyWithZone: zone];
	copyPlotOptions.venn = [self.venn copyWithZone: zone];
	copyPlotOptions.spline = [self.spline copyWithZone: zone];
	copyPlotOptions.area = [self.area copyWithZone: zone];
	copyPlotOptions.xrange = [self.xrange copyWithZone: zone];
	copyPlotOptions.bubble = [self.bubble copyWithZone: zone];
	copyPlotOptions.funnel = [self.funnel copyWithZone: zone];
	copyPlotOptions.histogram = [self.histogram copyWithZone: zone];
	copyPlotOptions.line = [self.line copyWithZone: zone];
	copyPlotOptions.sunburst = [self.sunburst copyWithZone: zone];
	copyPlotOptions.wordcloud = [self.wordcloud copyWithZone: zone];
	copyPlotOptions.scatter = [self.scatter copyWithZone: zone];
	copyPlotOptions.sankey = [self.sankey copyWithZone: zone];
	copyPlotOptions.cylinder = [self.cylinder copyWithZone: zone];
	copyPlotOptions.pyramid = [self.pyramid copyWithZone: zone];
	copyPlotOptions.tilemap = [self.tilemap copyWithZone: zone];
	copyPlotOptions.pie = [self.pie copyWithZone: zone];
	copyPlotOptions.areaspline = [self.areaspline copyWithZone: zone];
	copyPlotOptions.polygon = [self.polygon copyWithZone: zone];
	copyPlotOptions.packedbubble = [self.packedbubble copyWithZone: zone];
	copyPlotOptions.scatter3d = [self.scatter3d copyWithZone: zone];
	copyPlotOptions.boxplot = [self.boxplot copyWithZone: zone];
	copyPlotOptions.errorbar = [self.errorbar copyWithZone: zone];
	copyPlotOptions.windbarb = [self.windbarb copyWithZone: zone];
	copyPlotOptions.bullet = [self.bullet copyWithZone: zone];
	copyPlotOptions.organization = [self.organization copyWithZone: zone];
	return copyPlotOptions;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.gauge) {
		params[@"gauge"] = [self.gauge getParams];
	}
	if (self.variablepie) {
		params[@"variablepie"] = [self.variablepie getParams];
	}
	if (self.dumbbell) {
		params[@"dumbbell"] = [self.dumbbell getParams];
	}
	if (self.streamgraph) {
		params[@"streamgraph"] = [self.streamgraph getParams];
	}
	if (self.networkgraph) {
		params[@"networkgraph"] = [self.networkgraph getParams];
	}
	if (self.bar) {
		params[@"bar"] = [self.bar getParams];
	}
	if (self.variwide) {
		params[@"variwide"] = [self.variwide getParams];
	}
	if (self.areasplinerange) {
		params[@"areasplinerange"] = [self.areasplinerange getParams];
	}
	if (self.item) {
		params[@"item"] = [self.item getParams];
	}
	if (self.vector) {
		params[@"vector"] = [self.vector getParams];
	}
	if (self.columnpyramid) {
		params[@"columnpyramid"] = [self.columnpyramid getParams];
	}
	if (self.arearange) {
		params[@"arearange"] = [self.arearange getParams];
	}
	if (self.bellcurve) {
		params[@"bellcurve"] = [self.bellcurve getParams];
	}
	if (self.series) {
		params[@"series"] = [self.series getParams];
	}
	if (self.pyramid3d) {
		params[@"pyramid3d"] = [self.pyramid3d getParams];
	}
	if (self.pareto) {
		params[@"pareto"] = [self.pareto getParams];
	}
	if (self.dependencywheel) {
		params[@"dependencywheel"] = [self.dependencywheel getParams];
	}
	if (self.heatmap) {
		params[@"heatmap"] = [self.heatmap getParams];
	}
	if (self.solidgauge) {
		params[@"solidgauge"] = [self.solidgauge getParams];
	}
	if (self.timeline) {
		params[@"timeline"] = [self.timeline getParams];
	}
	if (self.funnel3d) {
		params[@"funnel3d"] = [self.funnel3d getParams];
	}
	if (self.lollipop) {
		params[@"lollipop"] = [self.lollipop getParams];
	}
	if (self.column) {
		params[@"column"] = [self.column getParams];
	}
	if (self.treemap) {
		params[@"treemap"] = [self.treemap getParams];
	}
	if (self.waterfall) {
		params[@"waterfall"] = [self.waterfall getParams];
	}
	if (self.columnrange) {
		params[@"columnrange"] = [self.columnrange getParams];
	}
	if (self.packedBubble) {
		params[@"packedBubble"] = [self.packedBubble getParams];
	}
	if (self.venn) {
		params[@"venn"] = [self.venn getParams];
	}
	if (self.spline) {
		params[@"spline"] = [self.spline getParams];
	}
	if (self.area) {
		params[@"area"] = [self.area getParams];
	}
	if (self.xrange) {
		params[@"xrange"] = [self.xrange getParams];
	}
	if (self.bubble) {
		params[@"bubble"] = [self.bubble getParams];
	}
	if (self.funnel) {
		params[@"funnel"] = [self.funnel getParams];
	}
	if (self.histogram) {
		params[@"histogram"] = [self.histogram getParams];
	}
	if (self.line) {
		params[@"line"] = [self.line getParams];
	}
	if (self.sunburst) {
		params[@"sunburst"] = [self.sunburst getParams];
	}
	if (self.wordcloud) {
		params[@"wordcloud"] = [self.wordcloud getParams];
	}
	if (self.scatter) {
		params[@"scatter"] = [self.scatter getParams];
	}
	if (self.sankey) {
		params[@"sankey"] = [self.sankey getParams];
	}
	if (self.cylinder) {
		params[@"cylinder"] = [self.cylinder getParams];
	}
	if (self.pyramid) {
		params[@"pyramid"] = [self.pyramid getParams];
	}
	if (self.tilemap) {
		params[@"tilemap"] = [self.tilemap getParams];
	}
	if (self.pie) {
		params[@"pie"] = [self.pie getParams];
	}
	if (self.areaspline) {
		params[@"areaspline"] = [self.areaspline getParams];
	}
	if (self.polygon) {
		params[@"polygon"] = [self.polygon getParams];
	}
	if (self.packedbubble) {
		params[@"packedbubble"] = [self.packedbubble getParams];
	}
	if (self.scatter3d) {
		params[@"scatter3d"] = [self.scatter3d getParams];
	}
	if (self.boxplot) {
		params[@"boxplot"] = [self.boxplot getParams];
	}
	if (self.errorbar) {
		params[@"errorbar"] = [self.errorbar getParams];
	}
	if (self.windbarb) {
		params[@"windbarb"] = [self.windbarb getParams];
	}
	if (self.bullet) {
		params[@"bullet"] = [self.bullet getParams];
	}
	if (self.organization) {
		params[@"organization"] = [self.organization getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setGauge:(HIGauge *)gauge {
	HIGauge *oldValue = _gauge;
	_gauge = gauge;
	[self updateHIObject:oldValue newValue:gauge propertyName:@"gauge"];
}

-(void)setVariablepie:(HIVariablepie *)variablepie {
	HIVariablepie *oldValue = _variablepie;
	_variablepie = variablepie;
	[self updateHIObject:oldValue newValue:variablepie propertyName:@"variablepie"];
}

-(void)setDumbbell:(HIDumbbell *)dumbbell {
	HIDumbbell *oldValue = _dumbbell;
	_dumbbell = dumbbell;
	[self updateHIObject:oldValue newValue:dumbbell propertyName:@"dumbbell"];
}

-(void)setStreamgraph:(HIStreamgraph *)streamgraph {
	HIStreamgraph *oldValue = _streamgraph;
	_streamgraph = streamgraph;
	[self updateHIObject:oldValue newValue:streamgraph propertyName:@"streamgraph"];
}

-(void)setNetworkgraph:(HINetworkgraph *)networkgraph {
	HINetworkgraph *oldValue = _networkgraph;
	_networkgraph = networkgraph;
	[self updateHIObject:oldValue newValue:networkgraph propertyName:@"networkgraph"];
}

-(void)setBar:(HIBar *)bar {
	HIBar *oldValue = _bar;
	_bar = bar;
	[self updateHIObject:oldValue newValue:bar propertyName:@"bar"];
}

-(void)setVariwide:(HIVariwide *)variwide {
	HIVariwide *oldValue = _variwide;
	_variwide = variwide;
	[self updateHIObject:oldValue newValue:variwide propertyName:@"variwide"];
}

-(void)setAreasplinerange:(HIAreasplinerange *)areasplinerange {
	HIAreasplinerange *oldValue = _areasplinerange;
	_areasplinerange = areasplinerange;
	[self updateHIObject:oldValue newValue:areasplinerange propertyName:@"areasplinerange"];
}

-(void)setItem:(HIItem *)item {
	HIItem *oldValue = _item;
	_item = item;
	[self updateHIObject:oldValue newValue:item propertyName:@"item"];
}

-(void)setVector:(HIVector *)vector {
	HIVector *oldValue = _vector;
	_vector = vector;
	[self updateHIObject:oldValue newValue:vector propertyName:@"vector"];
}

-(void)setColumnpyramid:(HIColumnpyramid *)columnpyramid {
	HIColumnpyramid *oldValue = _columnpyramid;
	_columnpyramid = columnpyramid;
	[self updateHIObject:oldValue newValue:columnpyramid propertyName:@"columnpyramid"];
}

-(void)setArearange:(HIArearange *)arearange {
	HIArearange *oldValue = _arearange;
	_arearange = arearange;
	[self updateHIObject:oldValue newValue:arearange propertyName:@"arearange"];
}

-(void)setBellcurve:(HIBellcurve *)bellcurve {
	HIBellcurve *oldValue = _bellcurve;
	_bellcurve = bellcurve;
	[self updateHIObject:oldValue newValue:bellcurve propertyName:@"bellcurve"];
}

-(void)setSeries:(HISeries *)series {
	HISeries *oldValue = _series;
	_series = series;
	[self updateHIObject:oldValue newValue:series propertyName:@"series"];
}

-(void)setPyramid3d:(HIPyramid3d *)pyramid3d {
	HIPyramid3d *oldValue = _pyramid3d;
	_pyramid3d = pyramid3d;
	[self updateHIObject:oldValue newValue:pyramid3d propertyName:@"pyramid3d"];
}

-(void)setPareto:(HIPareto *)pareto {
	HIPareto *oldValue = _pareto;
	_pareto = pareto;
	[self updateHIObject:oldValue newValue:pareto propertyName:@"pareto"];
}

-(void)setDependencywheel:(HIDependencywheel *)dependencywheel {
	HIDependencywheel *oldValue = _dependencywheel;
	_dependencywheel = dependencywheel;
	[self updateHIObject:oldValue newValue:dependencywheel propertyName:@"dependencywheel"];
}

-(void)setHeatmap:(HIHeatmap *)heatmap {
	HIHeatmap *oldValue = _heatmap;
	_heatmap = heatmap;
	[self updateHIObject:oldValue newValue:heatmap propertyName:@"heatmap"];
}

-(void)setSolidgauge:(HISolidgauge *)solidgauge {
	HISolidgauge *oldValue = _solidgauge;
	_solidgauge = solidgauge;
	[self updateHIObject:oldValue newValue:solidgauge propertyName:@"solidgauge"];
}

-(void)setTimeline:(HITimeline *)timeline {
	HITimeline *oldValue = _timeline;
	_timeline = timeline;
	[self updateHIObject:oldValue newValue:timeline propertyName:@"timeline"];
}

-(void)setFunnel3d:(HIFunnel3d *)funnel3d {
	HIFunnel3d *oldValue = _funnel3d;
	_funnel3d = funnel3d;
	[self updateHIObject:oldValue newValue:funnel3d propertyName:@"funnel3d"];
}

-(void)setLollipop:(HILollipop *)lollipop {
	HILollipop *oldValue = _lollipop;
	_lollipop = lollipop;
	[self updateHIObject:oldValue newValue:lollipop propertyName:@"lollipop"];
}

-(void)setColumn:(HIColumn *)column {
	HIColumn *oldValue = _column;
	_column = column;
	[self updateHIObject:oldValue newValue:column propertyName:@"column"];
}

-(void)setTreemap:(HITreemap *)treemap {
	HITreemap *oldValue = _treemap;
	_treemap = treemap;
	[self updateHIObject:oldValue newValue:treemap propertyName:@"treemap"];
}

-(void)setWaterfall:(HIWaterfall *)waterfall {
	HIWaterfall *oldValue = _waterfall;
	_waterfall = waterfall;
	[self updateHIObject:oldValue newValue:waterfall propertyName:@"waterfall"];
}

-(void)setColumnrange:(HIColumnrange *)columnrange {
	HIColumnrange *oldValue = _columnrange;
	_columnrange = columnrange;
	[self updateHIObject:oldValue newValue:columnrange propertyName:@"columnrange"];
}

-(void)setPackedBubble:(HIPackedbubble *)packedBubble {
    HIPackedbubble *oldValue = _packedBubble;
	_packedBubble = packedBubble;
	[self updateHIObject:oldValue newValue:packedBubble propertyName:@"packedBubble"];
}

-(void)setVenn:(HIVenn *)venn {
	HIVenn *oldValue = _venn;
	_venn = venn;
	[self updateHIObject:oldValue newValue:venn propertyName:@"venn"];
}

-(void)setSpline:(HISpline *)spline {
	HISpline *oldValue = _spline;
	_spline = spline;
	[self updateHIObject:oldValue newValue:spline propertyName:@"spline"];
}

-(void)setArea:(HIArea *)area {
	HIArea *oldValue = _area;
	_area = area;
	[self updateHIObject:oldValue newValue:area propertyName:@"area"];
}

-(void)setXrange:(HIXrange *)xrange {
	HIXrange *oldValue = _xrange;
	_xrange = xrange;
	[self updateHIObject:oldValue newValue:xrange propertyName:@"xrange"];
}

-(void)setBubble:(HIBubble *)bubble {
	HIBubble *oldValue = _bubble;
	_bubble = bubble;
	[self updateHIObject:oldValue newValue:bubble propertyName:@"bubble"];
}

-(void)setFunnel:(HIFunnel *)funnel {
	HIFunnel *oldValue = _funnel;
	_funnel = funnel;
	[self updateHIObject:oldValue newValue:funnel propertyName:@"funnel"];
}

-(void)setHistogram:(HIHistogram *)histogram {
	HIHistogram *oldValue = _histogram;
	_histogram = histogram;
	[self updateHIObject:oldValue newValue:histogram propertyName:@"histogram"];
}

-(void)setLine:(HILine *)line {
	HILine *oldValue = _line;
	_line = line;
	[self updateHIObject:oldValue newValue:line propertyName:@"line"];
}

-(void)setSunburst:(HISunburst *)sunburst {
	HISunburst *oldValue = _sunburst;
	_sunburst = sunburst;
	[self updateHIObject:oldValue newValue:sunburst propertyName:@"sunburst"];
}

-(void)setWordcloud:(HIWordcloud *)wordcloud {
	HIWordcloud *oldValue = _wordcloud;
	_wordcloud = wordcloud;
	[self updateHIObject:oldValue newValue:wordcloud propertyName:@"wordcloud"];
}

-(void)setScatter:(HIScatter *)scatter {
	HIScatter *oldValue = _scatter;
	_scatter = scatter;
	[self updateHIObject:oldValue newValue:scatter propertyName:@"scatter"];
}

-(void)setSankey:(HISankey *)sankey {
	HISankey *oldValue = _sankey;
	_sankey = sankey;
	[self updateHIObject:oldValue newValue:sankey propertyName:@"sankey"];
}

-(void)setCylinder:(HICylinder *)cylinder {
	HICylinder *oldValue = _cylinder;
	_cylinder = cylinder;
	[self updateHIObject:oldValue newValue:cylinder propertyName:@"cylinder"];
}

-(void)setPyramid:(HIPyramid *)pyramid {
	HIPyramid *oldValue = _pyramid;
	_pyramid = pyramid;
	[self updateHIObject:oldValue newValue:pyramid propertyName:@"pyramid"];
}

-(void)setTilemap:(HITilemap *)tilemap {
	HITilemap *oldValue = _tilemap;
	_tilemap = tilemap;
	[self updateHIObject:oldValue newValue:tilemap propertyName:@"tilemap"];
}

-(void)setPie:(HIPie *)pie {
	HIPie *oldValue = _pie;
	_pie = pie;
	[self updateHIObject:oldValue newValue:pie propertyName:@"pie"];
}

-(void)setAreaspline:(HIAreaspline *)areaspline {
	HIAreaspline *oldValue = _areaspline;
	_areaspline = areaspline;
	[self updateHIObject:oldValue newValue:areaspline propertyName:@"areaspline"];
}

-(void)setPolygon:(HIPolygon *)polygon {
	HIPolygon *oldValue = _polygon;
	_polygon = polygon;
	[self updateHIObject:oldValue newValue:polygon propertyName:@"polygon"];
}

-(void)setPackedbubble:(HIPackedbubble *)packedbubble {
	HIPackedbubble *oldValue = _packedbubble;
	_packedbubble = packedbubble;
	[self updateHIObject:oldValue newValue:packedbubble propertyName:@"packedbubble"];
}

-(void)setScatter3d:(HIScatter3d *)scatter3d {
	HIScatter3d *oldValue = _scatter3d;
	_scatter3d = scatter3d;
	[self updateHIObject:oldValue newValue:scatter3d propertyName:@"scatter3d"];
}

-(void)setBoxplot:(HIBoxplot *)boxplot {
	HIBoxplot *oldValue = _boxplot;
	_boxplot = boxplot;
	[self updateHIObject:oldValue newValue:boxplot propertyName:@"boxplot"];
}

-(void)setErrorbar:(HIErrorbar *)errorbar {
	HIErrorbar *oldValue = _errorbar;
	_errorbar = errorbar;
	[self updateHIObject:oldValue newValue:errorbar propertyName:@"errorbar"];
}

-(void)setWindbarb:(HIWindbarb *)windbarb {
	HIWindbarb *oldValue = _windbarb;
	_windbarb = windbarb;
	[self updateHIObject:oldValue newValue:windbarb propertyName:@"windbarb"];
}

-(void)setBullet:(HIBullet *)bullet {
	HIBullet *oldValue = _bullet;
	_bullet = bullet;
	[self updateHIObject:oldValue newValue:bullet propertyName:@"bullet"];
}

-(void)setOrganization:(HIOrganization *)organization {
	HIOrganization *oldValue = _organization;
	_organization = organization;
	[self updateHIObject:oldValue newValue:organization propertyName:@"organization"];
}

@end
