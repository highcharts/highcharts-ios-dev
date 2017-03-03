//
//  ChartType.h
//  DevGround
//
//  Created by krzysiek on 21.02.2017.
//  Copyright © 2017 Highsoft AS. All rights reserved.
//

#import <Highcharts/Highcharts.h>

@interface ChartType : NSObject

+(HIOptions *)getChartByType:(NSString *)type;

@end

@implementation ChartType

+(HIOptions *)getChartByType:(NSString *)type
{
    //MARK: Area
    if ([type isEqualToString:@"Area"]) {
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"area";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"US and USSR nuclear stockpiles";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"Source: <a href=\"http://thebulletin.metapress.com/content/c4120650912x74k7/fulltext.pdf\">thebulletin.metapress.com</a>";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.allowDecimals = @false;
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Nuclear weapon states";
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.pointFormat = @"{series.name} produced <b>{point.y:,.0f}</b><br/>warheads in {point.x}";
        
        HIPlotOptions *plotOptions = [[HIPlotOptions alloc]init];
        plotOptions.area = [[HIPlotOptionsArea alloc]init];
        plotOptions.area.pointStart = @1940;
        plotOptions.area.marker = [[HIPlotOptionsAreaMarker alloc]init];
        plotOptions.area.marker.enabled = @false;
        plotOptions.area.marker.symbol = @"circle";
        plotOptions.area.marker.radius = @2;
        plotOptions.area.marker.states = [[HIPlotOptionsAreaMarkerStates alloc]init];
        plotOptions.area.marker.states.hover = [[HIPlotOptionsAreaMarkerStatesHover alloc]init];
        plotOptions.area.marker.states.hover.enabled = @true;
        
        HIArea *series1 = [[HIArea alloc]init];
        series1.name = @"USA";
        series1.data = [NSMutableArray arrayWithObjects:[NSNull null],
                        [NSNull null],
                        [NSNull null],
                        [NSNull null],
                        [NSNull null],
                        @6,
                        @11,
                        @32,
                        @110,
                        @235,
                        @369,
                        @640,
                        @1005,
                        @1436,
                        @2063,
                        @3057,
                        @4618,
                        @6444,
                        @9822,
                        @15468,
                        @20434,
                        @24126,
                        @27387,
                        @29459,
                        @31056,
                        @31982,
                        @32040,
                        @31233,
                        @29224,
                        @27342,
                        @26662,
                        @26956,
                        @27912,
                        @28999,
                        @28965,
                        @27826,
                        @25579,
                        @25722,
                        @24826,
                        @24605,
                        @24304,
                        @23464,
                        @23708,
                        @24099,
                        @24357,
                        @24237,
                        @24401,
                        @24344,
                        @23586,
                        @22380,
                        @21004,
                        @17287,
                        @14747,
                        @13076,
                        @12555,
                        @12144,
                        @11009,
                        @10950,
                        @10871,
                        @10824,
                        @10577,
                        @10527,
                        @10475,
                        @10421,
                        @10358,
                        @10295,
                        @10104, nil];
        
        HIArea *series2 = [[HIArea alloc]init];
        series2.name = @"USSR/Russia";
        series2.data = [NSMutableArray arrayWithObjects:[NSNull null],
                        [NSNull null],
                        [NSNull null],
                        [NSNull null],
                        [NSNull null],
                        [NSNull null],
                        [NSNull null],
                        [NSNull null],
                        [NSNull null],
                        [NSNull null],
                        @5,
                        @25,
                        @50,
                        @120,
                        @150,
                        @200,
                        @426,
                        @660,
                        @869,
                        @1060,
                        @1605,
                        @2471,
                        @3322,
                        @4238,
                        @5221,
                        @6129,
                        @7089,
                        @8339,
                        @9399,
                        @10538,
                        @11643,
                        @13092,
                        @14478,
                        @15915,
                        @17385,
                        @19055,
                        @21205,
                        @23044,
                        @25393,
                        @27935,
                        @30062,
                        @32049,
                        @33952,
                        @35804,
                        @37431,
                        @39197,
                        @45000,
                        @43000,
                        @41000,
                        @39000,
                        @37000,
                        @35000,
                        @33000,
                        @31000,
                        @29000,
                        @27000,
                        @25000,
                        @24000,
                        @23000,
                        @22000,
                        @21000,
                        @20000,
                        @19000,
                        @18000,
                        @18000,
                        @17000,
                        @16000, nil];
        
        HIOptions *options = [[HIOptions alloc]init];
        options.chart = chart;
        options.title = title;
        options.subtitle = subtitle;
        options.xAxis = [NSMutableArray arrayWithObject:xaxis];
        options.yAxis = [NSMutableArray arrayWithObject:yaxis];
        options.tooltip = tooltip;
        options.plotOptions = plotOptions;
        options.series = [NSMutableArray arrayWithObjects:series1, series2, nil];
        
        return options;
    }
    //MARK: Line
    else if ([type isEqualToString:@"Line"]) {
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Monthly Average Temperature";
        title.x = @-20;
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"Source: WorldClimate.com";
        subtitle.x = @-20;
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = [NSMutableArray arrayWithObjects:@"Jan",
                            @"Feb",
                            @"Mar",
                            @"Apr",
                            @"May",
                            @"Jun",
                            @"Jul",
                            @"Aug",
                            @"Sep",
                            @"Oct",
                            @"Nov",
                            @"Dec", nil];
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Temperature (°C)";
        yaxis.plotLines = [NSMutableArray arrayWithObjects:@{
                                                             @"value": @0,
                                                             @"width": @1,
                                                             @"color": @"#808080"
                                                             }, nil];
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.valueSuffix = @"°C";
        
        HILegend *legend = [[HILegend alloc]init];
        legend.layout = @"vertical";
        legend.align = @"right";
        legend.verticalAlign = @"middle";
        legend.borderWidth = @0;
        
        HILine *line1 = [[HILine alloc]init];
        line1.name = @"Tokyo";
        line1.data = [NSMutableArray arrayWithObjects:@7,
                     @6.9,
                     @9.5,
                     @14.5,
                     @18.2,
                     @21.5,
                     @25.2,
                     @26.5,
                     @23.3,
                     @18.3,
                     @13.9,
                      @9.6, nil];
        
        HILine *line2 = [[HILine alloc]init];
        line2.name = @"New York";
        line2.data = [NSMutableArray arrayWithObjects:@7,
                      @-0.2,
                      @0.8,
                      @5.7,
                      @11.3,
                      @17,
                      @22,
                      @24.8,
                      @24.1,
                      @20.1,
                      @14.1,
                      @8.6,
                      @2.5, nil];
        
        HILine *line3 = [[HILine alloc]init];
        line3.name = @"Berlin";
        line3.data = [NSMutableArray arrayWithObjects:@7,
                      @-0.9,
                      @0.6,
                      @3.5,
                      @8.4,
                      @13.5,
                      @17,
                      @18.6,
                      @17.9,
                      @14.3,
                      @9,
                      @3.9,
                      @1, nil];
        
        HILine *line4 = [[HILine alloc]init];
        line4.name = @"London";
        line4.data = [NSMutableArray arrayWithObjects:@7,
                      @3.9,
                      @4.2,
                      @5.7,
                      @8.5,
                      @11.9,
                      @15.2,
                      @17,
                      @16.6,
                      @14.2,
                      @10.3,
                      @6.6,
                      @4.8, nil];
        
        
        HIOptions *options = [[HIOptions alloc]init];
        options.title = title;
        options.subtitle = subtitle;
        options.xAxis = [NSMutableArray arrayWithObject:xaxis];
        options.yAxis = [NSMutableArray arrayWithObject:yaxis];
        options.tooltip = tooltip;
        options.legend = legend;
        options.series = [NSMutableArray arrayWithObjects:line1, line2, line3, line4, nil];
        
        return options;
    }
    //MARK: Bar
    else if ([type isEqualToString:@"Bar"]) {
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"bar";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Historic World Population by Region";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"Source: <a href=\"https://en.wikipedia.org/wiki/World_population\">Wikipedia.org</a>";
        
        HIXAxis * xaxis = [[HIXAxis alloc]init];
        xaxis.categories = [NSMutableArray arrayWithObjects:@"Africa",
                            @"America",
                            @"Asia",
                            @"Europe",
                            @"Oceania", nil];
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.min = @0;
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Population (millions)";
        yaxis.title.align = @"high";
        yaxis.labels = [[HIYAxisLabels alloc]init];
        yaxis.labels.overflow = @"justify";
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.valueSuffix = @" millions";
        
        HIPlotOptions *plotOptions = [[HIPlotOptions alloc]init];
        plotOptions.bar = [[HIPlotOptionsBar alloc]init];
        plotOptions.bar.dataLabels = [[HIPlotOptionsBarDataLabels alloc]init];
        plotOptions.bar.dataLabels.enabled = @true;
        
        HILegend *legend = [[HILegend alloc]init];
        legend.layout = @"vertical";
        legend.align = @"right";
        legend.verticalAlign = @"top";
        legend.x = @-40;
        legend.y = @80;
        legend.floating = @true;
        legend.borderWidth = @1;
        legend.backgroundColor = [[HIColor alloc]initWithHexValue:@"FFFFFF"];
        legend.shadow = @true;
        
        HICredits *credits = [[HICredits alloc]init];
        credits.enabled = @false;
        
        HIBar *bar1 = [[HIBar alloc]init];
        bar1.name = @"Year 1800";
        bar1.data = [NSMutableArray arrayWithObjects:@107,
                        @31,
                        @635,
                        @203,
                        @2, nil];
        
        HIBar *bar2 = [[HIBar alloc]init];
        bar2.name = @"Year 1900";
        bar2.data = [NSMutableArray arrayWithObjects:@133,
                        @156,
                        @947,
                        @408,
                        @6, nil];
        
        HIBar *bar3 = [[HIBar alloc]init];
        bar3.name = @"Year 2012";
        bar3.data = [NSMutableArray arrayWithObjects:@1052,
                        @954,
                        @4250,
                        @740,
                        @38, nil];
        
        HIOptions *options = [[HIOptions alloc]init];
        options.chart = chart;
        options.title = title;
        options.subtitle = subtitle;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.tooltip = tooltip;
        options.plotOptions = plotOptions;
        options.legend = legend;
        options.credits = credits;
        options.series = [NSMutableArray arrayWithObjects:bar1, bar2, bar3, nil];
        
        return options;
    }
    //MARK: Column
    else if ([type isEqualToString:@"Column"]) {
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"column";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Monthly Average Rainfall";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"Source: WorldClimate.com";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = [NSMutableArray arrayWithObjects:@"Jan",
                            @"Feb",
                            @"Mar",
                            @"Apr",
                            @"May",
                            @"Jun",
                            @"Jul",
                            @"Aug",
                            @"Sep",
                            @"Oct",
                            @"Nov",
                            @"Dec", nil];
        xaxis.crosshair = [[HIXAxisCrosshair alloc]init];
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.min = @0;
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Rainfall (mm)";
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.headerFormat = @"<span style=\"font-size:10px\">{point.key}</span><table>";
        tooltip.pointFormat = @"<tr><td style=\"color:{series.color};padding:0\">{series.name}: </td><td style=\"padding:0\"><b>{point.y:.1f} mm</b></td></tr>";
        tooltip.footerFormat = @"</table>";
        tooltip.shared = @true;
        tooltip.useHTML = @true;
        
        HIPlotOptions *plotOptions = [[HIPlotOptions alloc]init];
        plotOptions.column = [[HIPlotOptionsColumn alloc]init];
        plotOptions.column.pointPadding = @0.2;
        plotOptions.column.borderWidth = @0;
        
        HIColumn *column1 = [[HIColumn alloc]init];
        column1.name = @"Tokyo";
        column1.data = [NSMutableArray arrayWithObjects:@49.9,
                        @71.5,
                        @106.4,
                        @129.2,
                        @144,
                        @176,
                        @135.6,
                        @148.5,
                        @216.4,
                        @194.1,
                        @95.6,
                        @54.4, nil];
        
        HIColumn *column2 = [[HIColumn alloc]init];
        column2.name = @"New York";
        column2.data = [NSMutableArray arrayWithObjects:@83.6,
                        @78.8,
                        @98.5,
                        @93.4,
                        @106,
                        @84.5,
                        @105,
                        @104.3,
                        @91.2,
                        @83.5,
                        @106.6,
                        @92.3, nil];
        
        HIColumn *column3 = [[HIColumn alloc]init];
        column3.name = @"London";
        column3.data = [NSMutableArray arrayWithObjects:@48.9,
                        @38.8,
                        @39.3,
                        @41.4,
                        @47,
                        @48.3,
                        @59,
                        @59.6,
                        @52.4,
                        @65.2,
                        @59.3,
                        @51.2, nil];
        
        HIColumn *column4 = [[HIColumn alloc]init];
        column4.name = @"Berlin";
        column4.data = [NSMutableArray arrayWithObjects:@42.4,
                        @33.2,
                        @34.5,
                        @39.7,
                        @52.6,
                        @75.5,
                        @57.4,
                        @60.4,
                        @47.6,
                        @39.1,
                        @46.8,
                        @51.1, nil];
        
        HIOptions *options = [[HIOptions alloc]init];
        options.chart = chart;
        options.title = title;
        options.subtitle = subtitle;
        options.xAxis = [NSMutableArray arrayWithObject:xaxis];
        options.yAxis = [NSMutableArray arrayWithObject:yaxis];
        options.tooltip = tooltip;
        options.plotOptions = plotOptions;
        options.series = [NSMutableArray arrayWithObjects:column1, column2, column3, column4, nil];
        
        return options;
    }
    //MARK: Pie
    else if ([type isEqualToString:@"Pie"]) {
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"pie";
        chart.plotShadow = @false;
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Browser market shares January, 2015 to May, 2015";
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.pointFormat = @"{series.name}: <b>{point.percentage:.1f}%</b>";
        
        HIPlotOptions *plotOptions = [[HIPlotOptions alloc]init];
        plotOptions.pie = [[HIPlotOptionsPie alloc]init];
        plotOptions.pie.allowPointSelect = @true;
        plotOptions.pie.cursor = @"pointer";
        plotOptions.pie.dataLabels = [[HIPlotOptionsPieDataLabels alloc]init];
        plotOptions.pie.dataLabels.enabled = @true;
        plotOptions.pie.dataLabels.format = @"<b>{point.name}</b>: {point.percentage:.1f} %";
        plotOptions.pie.dataLabels.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"black", @"color", nil];
        
        HIPie *pie = [[HIPie alloc]init];
        pie.name = @"Brands";
        pie.data = [NSMutableArray arrayWithObjects:@{
                                                      @"name": @"Microsoft Internet Explorer",
                                                      @"y": @56.33
                                                      },
                    @{
                      @"name": @"Chrome",
                      @"y": @24.03,
                      @"sliced": @true,
                      @"selected": @true
                      },
                    @{
                      @"name": @"Firefox",
                      @"y": @10.38
                      },
                    @{
                      @"name": @"Safari",
                      @"y": @4.77
                      },
                    @{
                      @"name": @"Opera",
                      @"y": @0.91
                      },
                    @{
                      @"name": @"Proprietary or Undetectable",
                      @"y": @0.2
                      }, nil];
        
        HIOptions *options = [[HIOptions alloc]init];
        options.chart = chart;
        options.title = title;
        options.tooltip = tooltip;
        options.plotOptions = plotOptions;
        options.series = [NSMutableArray arrayWithObjects:pie, nil];
        
        return options;
    }
    //MARK: Bubble
    else if ([type isEqualToString:@"Bubble"]) {
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"bubble";
        chart.plotBorderWidth = @1;
        chart.zoomType = @"xy";
        
        HILegend *legend = [[HILegend alloc]init];
        legend.enabled = @false;
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Sugar and fat intake per country";
        
        HISubtitle *subtitile = [[HISubtitle alloc]init];
        subtitile.text = @"Source: <a href=\"http://www.euromonitor.com/\">Euromonitor</a> and <a href=\"https://data.oecd.org/\">OECD</a>";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.gridLineWidth = @1;
        xaxis.title = [[HIXAxisTitle alloc]init];
        xaxis.title.text = @"Daily fat intake";
        xaxis.labels = [[HIXAxisLabels alloc]init];
        xaxis.labels.format = @"{value} gr";
        HIXAxisPlotLines *plotLines = [[HIXAxisPlotLines alloc]init];
        plotLines.color = [[HIColor alloc]initWithHexValue:@"FFFFFF"];
        plotLines.dashStyle = @"dot";
        plotLines.width = @2;
        plotLines.value = @65;
        plotLines.label = [[HIXAxisPlotLinesLabel alloc]init];
        plotLines.label.rotation = @0;
        plotLines.label.y = @15;
        plotLines.label.style = @{@"fontStyle": @"italic"};
        plotLines.label.text = @"Safe fat intake 65g/day";
        plotLines.zIndex = @3;
        xaxis.plotLines = [NSMutableArray arrayWithObject:plotLines];
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.startOnTick = @false;
        yaxis.endOnTick = @false;
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Daily sugar intake";
        yaxis.labels = [[HIYAxisLabels alloc]init];
        yaxis.labels.format = @"{value} gr";
        yaxis.maxPadding = @0.2;
        HIYAxisPlotLines *yplotLines = [[HIYAxisPlotLines alloc]init];
        yplotLines.color = [[HIColor alloc]initWithHexValue:@"FFFFFF"];
        yplotLines.dashStyle = @"dot";
        yplotLines.width = @2;
        yplotLines.value = @50;
        yplotLines.label = [[HIYAxisPlotLinesLabel alloc]init];
        yplotLines.label.align = @"right";
        yplotLines.label.x = @-10;
        yplotLines.label.style = @{@"fontStyle": @"italic"};
        yplotLines.label.text = @"Safe sugar intake 50g/day";
        yplotLines.zIndex = @3;
        yaxis.plotLines = [NSMutableArray arrayWithObject:yplotLines];
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.useHTML = @true;
        tooltip.headerFormat = @"<table>";
        tooltip.pointFormat = @"<tr><th colspan=\"2\"><h3>{point.country}</h3></th></tr><tr><th>Fat intake:</th><td>{point.x}g</td></tr><tr><th>Sugar intake:</th><td>{point.y}g</td></tr><tr><th>Obesity (adults):</th><td>{point.z}%</td></tr>";
        tooltip.footerFormat = @"</table>";
        tooltip.followPointer = @true;
        
        HIPlotOptions *plotOptions = [[HIPlotOptions alloc]init];
        plotOptions.bubble = [[HIPlotOptionsBubble alloc]init];
        plotOptions.bubble.dataLabels = [[HIPlotOptionsBubbleDataLabels alloc]init];
        plotOptions.bubble.dataLabels.enabled = @true;
        plotOptions.bubble.dataLabels.format = @"{point.name}";
        
        HIBubble *series = [[HIBubble alloc]init];
        series.data = [NSMutableArray arrayWithObjects:@{
                                                         @"x": @95,
                                                         @"y": @95,
                                                         @"z": @13.8,
                                                         @"name": @"BE",
                                                         @"country": @"Belgium"
                                                         },
                       @{
                         @"x": @86.5,
                         @"y": @102.9,
                         @"z": @14.7,
                         @"name": @"DE",
                         @"country": @"Germany"
                         },
                       @{
                         @"x": @80.8,
                         @"y": @91.5,
                         @"z": @15.8,
                         @"name": @"FI",
                         @"country": @"Finland"
                         },
                       @{
                         @"x": @80.4,
                         @"y": @102.5,
                         @"z": @12,
                         @"name": @"NL",
                         @"country": @"Netherlands"
                         },
                       @{
                         @"x": @80.3,
                         @"y": @86.1,
                         @"z": @11.8,
                         @"name": @"SE",
                         @"country": @"Sweden"
                         },
                       @{
                         @"x": @78.4,
                         @"y": @70.1,
                         @"z": @16.6,
                         @"name": @"ES",
                         @"country": @"Spain"
                         },
                       @{
                         @"x": @74.2,
                         @"y": @68.5,
                         @"z": @14.5,
                         @"name": @"FR",
                         @"country": @"France"
                         },
                       @{
                         @"x": @73.5,
                         @"y": @83.1,
                         @"z": @10,
                         @"name": @"NO",
                         @"country": @"Norway"
                         },
                       @{
                         @"x": @71,
                         @"y": @93.2,
                         @"z": @24.7,
                         @"name": @"UK",
                         @"country": @"United Kingdom"
                         },
                       @{
                         @"x": @69.2,
                         @"y": @57.6,
                         @"z": @10.4,
                         @"name": @"IT",
                         @"country": @"Italy"
                         },
                       @{
                         @"x": @68.6,
                         @"y": @20,
                         @"z": @16,
                         @"name": @"RU",
                         @"country": @"Russia"
                         },
                       @{
                         @"x": @65.5,
                         @"y": @126.4,
                         @"z": @35.3,
                         @"name": @"US",
                         @"country": @"United States"
                         },
                       @{
                         @"x": @65.4,
                         @"y": @50.8,
                         @"z": @28.5,
                         @"name": @"HU",
                         @"country": @"Hungary"
                         },
                       @{
                         @"x": @63.4,
                         @"y": @51.8,
                         @"z": @15.4,
                         @"name": @"PT",
                         @"country": @"Portugal"
                         },
                       @{
                         @"x": @64,
                         @"y": @82.9,
                         @"z": @31.3,
                         @"name": @"NZ",
                         @"country": @"New Zealand"
                         }, nil];
        
        HIOptions *options = [[HIOptions alloc]init];
        options.chart = chart;
        options.legend = legend;
        options.title = title;
        options.subtitle = subtitile;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.tooltip = tooltip;
        options.plotOptions = plotOptions;
        options.series = [NSMutableArray arrayWithObjects:series, nil];
        
        return options;
        
    }
    //MARK: Polar
    else if ([type isEqualToString:@"Polar"]) {
        HIChart *chart = [[HIChart alloc]init];
        chart.polar = @true;
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Highcharts Polar Chart";
        
        HIPane *pane = [[HIPane alloc]init];
        pane.startAngle = @0;
        pane.endAngle = @360;
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.tickInterval = @45;
        xaxis.min = @0;
        xaxis.max = @360;
        xaxis.labels = [[HIXAxisLabels alloc]init];
        xaxis.labels.format = @"{value}°";
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.min = @0;
        
        HIPlotOptions *plotOptions = [[HIPlotOptions alloc]init];
        plotOptions.series = [[HIPlotOptionsSeries alloc]init];
        plotOptions.series.pointStart = @0;
        plotOptions.series.pointInterval = @45;
        plotOptions.column = [[HIPlotOptionsColumn alloc]init];
        plotOptions.column.pointPadding = @0;
        plotOptions.column.groupPadding = @0;
        
        HIColumn *column = [[HIColumn alloc]init];
        column.name = @"Column";
        column.data = [NSMutableArray arrayWithObjects:@8,
                       @7,
                       @6,
                       @5,
                       @4,
                       @3,
                       @2,
                       @1, nil];
        column.pointPlacement = @"between";
        
        HILine *line = [[HILine alloc]init];
        line.name = @"Line";
        line.data = [NSMutableArray arrayWithObjects:@1,
                     @2,
                     @3,
                     @4,
                     @5,
                     @6,
                     @7,
                     @8, nil];
        
        HIArea *area = [[HIArea alloc]init];
        area.name = @"Area";
        area.data = [NSMutableArray arrayWithObjects:@1,
                     @8,
                     @2,
                     @7,
                     @3,
                     @6,
                     @4,
                     @5, nil];
        
        HIOptions *options = [[HIOptions alloc]init];
        options.chart = chart;
        options.title = title;
        options.pane = pane;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.plotOptions = plotOptions;
        options.series = [NSMutableArray arrayWithObjects:column, line, area, nil];
                
        return options;
        
    }
    //MARK: Funnel
    else if ([type isEqualToString:@"Funnel"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"funnel";
        chart.marginRight = @100;
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Sales funnel";
        title.x = @-50;
        
        HIPlotOptions *plotOptions = [[HIPlotOptions alloc]init];
        plotOptions.funnel = [[HIPlotOptionsFunnel alloc]init];
        plotOptions.funnel.dataLabels = [[HIPlotOptionsFunnelDataLabels alloc]init];
        plotOptions.funnel.dataLabels.enabled = @true;
        plotOptions.funnel.dataLabels.format = @"<b>{point.name}</b> ({point.y:,.0f})";
        plotOptions.funnel.dataLabels.color = [[HIColor alloc]initWithName:@"black"];
        plotOptions.funnel.dataLabels.softConnector = @true;
        plotOptions.funnel.neckWidth = @"30%";
        plotOptions.funnel.neckHeight = @"25%";
        
        HILegend *legend = [[HILegend alloc]init];
        legend.enabled = @false;
        
        HIFunnel *series = [[HIFunnel alloc]init];
        series.name = @"Unique users";
        series.data = [NSMutableArray arrayWithObjects:@[
                                                         @"Website visits",
                                                         @15654
                                                         ],
                       @[
                         @"Downloads",
                         @4064
                         ],
                       @[
                         @"Requested price list",
                         @1987
                         ],
                       @[
                         @"Invoice sent",
                         @976
                         ],
                       @[
                         @"Finalized",
                         @846
                         ], nil];
        options.chart = chart;
        options.title = title;
        options.plotOptions = plotOptions;
        options.legend = legend;
        options.series = [NSMutableArray arrayWithObject:series];
        
        //NSLog(@"%@", [options getParams]);

        return options;
    }
    //MARK: Scatter
    else if ([type isEqualToString:@"Scatter"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"scatter";
        chart.zoomType = @"xy";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Height Versus Weight of 507 Individuals by Gender";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"Source: Heinz  2003";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.title = [[HIXAxisTitle alloc]init];
        xaxis.title.text = @"Height (cm)";
        xaxis.startOnTick = @true;
        xaxis.endOnTick = @true;
        xaxis.showLastLabel = @true;
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Weight (kg)";
        
        HILegend *legend = [[HILegend alloc]init];
        legend.layout = @"vertical";
        legend.align = @"left";
        legend.verticalAlign = @"top";
        legend.x = @100;
        legend.y = @70;
        legend.floating = @true;
        legend.backgroundColor = [[HIColor alloc]initWithHexValue:@"FFFFFF"];
        legend.borderWidth = @1;
        
        HIPlotOptions *plotOptions = [[HIPlotOptions alloc]init];
        plotOptions.scatter = [[HIPlotOptionsScatter alloc]init];
        plotOptions.scatter.marker = [[HIPlotOptionsScatterMarker alloc]init];
        plotOptions.scatter.marker.radius = @5;
        plotOptions.scatter.marker.states = [[HIPlotOptionsScatterMarkerStates alloc]init];
        plotOptions.scatter.marker.states.hover = [[HIPlotOptionsScatterMarkerStatesHover alloc]init];
        plotOptions.scatter.marker.states.hover.enabled = @true;
        plotOptions.scatter.marker.states.hover.lineColor = [[HIColor alloc]initWithRGB:100 green:100 blue:100];
        HIPlotOptionsScatterStates *state = [[HIPlotOptionsScatterStates alloc]init];
        state.hover = [[HIPlotOptionsScatterStatesHover alloc]init];
        state.hover.marker = [[HIPlotOptionsScatterStatesHoverMarker alloc]init];
        state.hover.marker.enabled = @false;
        plotOptions.scatter.states = [NSMutableArray arrayWithObject:state];
        plotOptions.scatter.tooltip = [[HIPlotOptionsScatterTooltip alloc]init];
        plotOptions.scatter.tooltip.headerFormat = @"<b>{series.name}</b><br>";
        plotOptions.scatter.tooltip.pointFormat = @"{point.x} cm, {point.y} kg";
        
        HIScatter *scatter1 = [[HIScatter alloc]init];
        scatter1.name = @"Female";
        scatter1.color = [[HIColor alloc]initWithRGBA:223 green:83 blue:83 alpha:.5];
        scatter1.data = [NSMutableArray arrayWithObjects:@[@161.2, @1.6], @[@167.5, @9.0], @[@159.5, @9.2], @[@157.0, @3.0], @[@155.8, @3.6],
                         @[@170.0, @9.0], @[@159.1, @7.6], @[@166.0, @9.8], @[@176.2, @6.8], @[@160.2, @5.2],
                         @[@172.5, @5.2], @[@170.9, @4.2], @[@172.9, @2.5], @[@153.4, @2.0], @[@160.0, @0.0],
                         @[@147.2, @9.8], @[@168.2, @9.2], @[@175.0, @3.2], @[@157.0, @7.8], @[@167.6, @8.8],
                         @[@159.5, @0.6], @[@175.0, @2.5], @[@166.8, @7.2], @[@176.5, @7.8], @[@170.2, @2.8],
                         @[@174.0, @4.5], @[@173.0, @9.8], @[@179.9, @7.3], @[@170.5, @7.8], @[@160.0, @7.0],
                         @[@154.4, @6.2], @[@162.0, @5.0], @[@176.5, @3.0], @[@160.0, @4.4], @[@152.0, @5.8],
                         @[@162.1, @3.6], @[@170.0, @3.2], @[@160.2, @2.1], @[@161.3, @7.9], @[@166.4, @6.6],
                         @[@168.9, @2.3], @[@163.8, @8.5], @[@167.6, @4.5], @[@160.0, @0.2], @[@161.3, @0.3],
                         @[@167.6, @8.3], @[@165.1, @6.2], @[@160.0, @0.2], @[@170.0, @2.9], @[@157.5, @9.8],
                         @[@167.6, @1.0], @[@160.7, @9.1], @[@163.2, @5.9], @[@152.4, @6.5], @[@157.5, @4.3],
                         @[@168.3, @4.8], @[@180.3, @0.7], @[@165.5, @0.0], @[@165.0, @2.0], @[@164.5, @0.3],
                         @[@156.0, @2.7], @[@160.0, @4.3], @[@163.0, @2.0], @[@165.7, @3.1], @[@161.0, @0.0],
                         @[@162.0, @4.7], @[@166.0, @3.2], @[@174.0, @5.7], @[@172.7, @1.1], @[@167.6, @5.7],
                         @[@151.1, @8.7], @[@164.5, @2.3], @[@163.5, @0.0], @[@152.0, @9.3], @[@169.0, @2.5],
                         @[@164.0, @5.7], @[@161.2, @4.8], @[@155.0, @5.9], @[@170.0, @0.6], @[@176.2, @7.2],
                         @[@170.0, @9.4], @[@162.5, @8.2], @[@170.3, @4.8], @[@164.1, @1.6], @[@169.5, @2.8],
                         @[@163.2, @9.8], @[@154.5, @9.0], @[@159.8, @0.0], @[@173.2, @9.2], @[@170.0, @5.9],
                         @[@161.4, @3.4], @[@169.0, @8.2], @[@166.2, @8.6], @[@159.4, @5.7], @[@162.5, @2.2],
                         @[@159.0, @8.6], @[@162.8, @7.8], @[@159.0, @5.6], @[@179.8, @6.8], @[@162.9, @9.4],
                         @[@161.0, @3.6], @[@151.1, @3.2], @[@168.2, @3.4], @[@168.9, @9.0], @[@173.2, @8.4],
                         @[@171.8, @6.2], @[@178.0, @0.6], @[@164.3, @9.8], @[@163.0, @2.0], @[@168.5, @5.2],
                         @[@166.8, @6.6], @[@172.7, @05.2], @[@163.5, @1.8], @[@169.4, @3.4], @[@167.8, @9.0],
                         @[@159.5, @7.6], @[@167.6, @3.0], @[@161.2, @5.2], @[@160.0, @5.0], @[@163.2, @4.0],
                         @[@162.2, @0.2], @[@161.3, @0.2], @[@149.5, @4.8], @[@157.5, @8.8], @[@163.2, @6.4],
                         @[@172.7, @2.0], @[@155.0, @9.2], @[@156.5, @7.2], @[@164.0, @3.8], @[@160.9, @4.4],
                         @[@162.8, @8.0], @[@167.0, @9.8], @[@160.0, @4.8], @[@160.0, @3.2], @[@168.9, @0.5],
                         @[@158.2, @6.4], @[@156.0, @4.4], @[@160.0, @8.8], @[@167.1, @2.2], @[@158.0, @5.5],
                         @[@167.6, @7.8], @[@156.0, @4.6], @[@162.1, @9.2], @[@173.4, @2.7], @[@159.8, @3.2],
                         @[@170.5, @4.5], @[@159.2, @1.8], @[@157.5, @6.0], @[@161.3, @3.6], @[@162.6, @3.2],
                         @[@160.0, @9.5], @[@168.9, @6.8], @[@165.1, @4.1], @[@162.6, @0.0], @[@165.1, @2.3],
                         @[@166.4, @5.0], @[@160.0, @5.9], @[@152.4, @0.4], @[@170.2, @9.1], @[@162.6, @4.5],
                         @[@170.2, @5.9], @[@158.8, @5.5], @[@172.7, @9.5], @[@167.6, @6.4], @[@162.6, @1.4],
                         @[@167.6, @5.9], @[@156.2, @8.6], @[@175.2, @6.8], @[@172.1, @6.6], @[@162.6, @8.6],
                         @[@160.0, @5.9], @[@165.1, @9.1], @[@182.9, @1.8], @[@166.4, @0.7], @[@165.1, @6.8],
                         @[@177.8, @0.0], @[@165.1, @8.2], @[@175.3, @2.7], @[@154.9, @4.1], @[@158.8, @9.1],
                         @[@172.7, @5.9], @[@168.9, @5.0], @[@161.3, @7.3], @[@167.6, @5.0], @[@165.1, @5.5],
                         @[@175.3, @5.5], @[@157.5, @8.6], @[@163.8, @8.6], @[@167.6, @3.6], @[@165.1, @5.2],
                         @[@165.1, @2.7], @[@168.9, @6.6], @[@162.6, @3.9], @[@164.5, @3.2], @[@176.5, @3.6],
                         @[@168.9, @2.0], @[@175.3, @3.6], @[@159.4, @3.2], @[@160.0, @3.4], @[@170.2, @5.0],
                         @[@162.6, @0.5], @[@167.6, @4.5], @[@162.6, @4.5], @[@160.7, @5.9], @[@160.0, @9.0],
                         @[@157.5, @3.6], @[@162.6, @4.5], @[@152.4, @7.3], @[@170.2, @7.7], @[@165.1, @0.9],
                         @[@172.7, @0.5], @[@165.1, @0.9], @[@170.2, @3.6], @[@170.2, @4.5], @[@170.2, @9.1],
                         @[@161.3, @0.5], @[@167.6, @2.7], @[@167.6, @2.7], @[@165.1, @6.3], @[@162.6, @6.4],
                         @[@152.4, @7.3], @[@168.9, @3.0], @[@170.2, @3.6], @[@175.2, @2.3], @[@175.2, @7.7],
                         @[@160.0, @5.4], @[@165.1, @04.1], @[@174.0, @5.5], @[@170.2, @7.3], @[@160.0, @0.5],
                         @[@167.6, @4.5], @[@167.6, @2.3], @[@167.6, @1.4], @[@154.9, @8.2], @[@162.6, @1.8],
                         @[@175.3, @3.6], @[@171.4, @3.4], @[@157.5, @4.5], @[@165.1, @3.6], @[@160.0, @0.0],
                         @[@174.0, @3.6], @[@162.6, @1.4], @[@174.0, @5.5], @[@162.6, @3.6], @[@161.3, @0.9],
                         @[@156.2, @0.0], @[@149.9, @6.8], @[@169.5, @7.3], @[@160.0, @4.1], @[@175.3, @3.6],
                         @[@169.5, @7.3], @[@160.0, @5.5], @[@172.7, @8.2], @[@162.6, @1.4], @[@157.5, @6.8],
                         @[@176.5, @1.8], @[@164.4, @5.5], @[@160.7, @8.6], @[@174.0, @6.4], @[@163.8, @7.3], nil];
        
        HIScatter *scatter2 = [[HIScatter alloc]init];
        scatter2.name = @"Male";
        scatter2.color = [[HIColor alloc]initWithRGBA:119 green:152 blue:191 alpha:.5];
        scatter2.data = [NSMutableArray arrayWithObjects:@[@174.0, @5.6], @[@175.3, @1.8], @[@193.5, @0.7], @[@186.5, @2.6], @[@187.2, @8.8],
                         @[@181.5, @4.8], @[@184.0, @6.4], @[@184.5, @8.4], @[@175.0, @2.0], @[@184.0, @1.6],
                         @[@180.0, @6.6], @[@177.8, @3.6], @[@192.0, @0.0], @[@176.0, @4.6], @[@174.0, @1.0],
                         @[@184.0, @9.6], @[@192.7, @3.8], @[@171.5, @0.0], @[@173.0, @2.4], @[@176.0, @5.9],
                         @[@176.0, @8.8], @[@180.5, @7.8], @[@172.7, @6.2], @[@176.0, @6.4], @[@173.5, @1.8],
                         @[@178.0, @9.6], @[@180.3, @2.8], @[@180.3, @6.4], @[@164.5, @3.2], @[@173.0, @0.9],
                         @[@183.5, @4.8], @[@175.5, @0.0], @[@188.0, @2.4], @[@189.2, @4.1], @[@172.8, @9.1],
                         @[@170.0, @9.5], @[@182.0, @7.2], @[@170.0, @1.3], @[@177.8, @8.6], @[@184.2, @0.1],
                         @[@186.7, @7.8], @[@171.4, @4.7], @[@172.7, @3.4], @[@175.3, @2.1], @[@180.3, @2.6],
                         @[@182.9, @8.7], @[@188.0, @4.1], @[@177.2, @4.1], @[@172.1, @4.9], @[@167.0, @9.1],
                         @[@169.5, @5.6], @[@174.0, @6.2], @[@172.7, @5.3], @[@182.2, @7.1], @[@164.1, @5.2],
                         @[@163.0, @7.0], @[@171.5, @1.4], @[@184.2, @6.8], @[@174.0, @6.8], @[@174.0, @2.2],
                         @[@177.0, @1.6], @[@186.0, @4.8], @[@167.0, @8.2], @[@171.8, @6.1], @[@182.0, @2.0],
                         @[@167.0, @4.6], @[@177.8, @4.8], @[@164.5, @0.0], @[@192.0, @01.6], @[@175.5, @3.2],
                         @[@171.2, @9.1], @[@181.6, @8.9], @[@167.4, @7.7], @[@181.1, @6.0], @[@177.0, @8.2],
                         @[@174.5, @3.9], @[@177.5, @2.0], @[@170.5, @6.8], @[@182.4, @4.5], @[@197.1, @0.9],
                         @[@180.1, @3.0], @[@175.5, @0.9], @[@180.6, @2.7], @[@184.4, @8.0], @[@175.5, @0.9],
                         @[@180.6, @2.5], @[@177.0, @2.5], @[@177.1, @3.4], @[@181.6, @5.5], @[@176.5, @3.0],
                         @[@175.0, @0.2], @[@174.0, @3.4], @[@165.1, @0.5], @[@177.0, @8.9], @[@192.0, @02.3],
                         @[@176.5, @8.4], @[@169.4, @5.9], @[@182.1, @5.7], @[@179.8, @4.5], @[@175.3, @7.7],
                         @[@184.9, @6.4], @[@177.3, @3.2], @[@167.4, @3.9], @[@178.1, @2.0], @[@168.9, @5.5],
                         @[@157.2, @8.4], @[@180.3, @3.2], @[@170.2, @2.7], @[@177.8, @4.1], @[@172.7, @2.3],
                         @[@165.1, @5.0], @[@186.7, @6.4], @[@165.1, @5.0], @[@174.0, @8.6], @[@175.3, @4.1],
                         @[@185.4, @6.8], @[@177.8, @5.5], @[@180.3, @3.2], @[@180.3, @2.7], @[@177.8, @8.0],
                         @[@177.8, @9.5], @[@177.8, @8.6], @[@177.8, @1.8], @[@177.8, @16.4], @[@163.8, @2.2],
                         @[@188.0, @3.6], @[@198.1, @5.5], @[@175.3, @0.9], @[@166.4, @5.9], @[@190.5, @9.1],
                         @[@166.4, @5.0], @[@177.8, @7.7], @[@179.7, @6.4], @[@172.7, @0.9], @[@190.5, @3.6],
                         @[@185.4, @6.4], @[@168.9, @9.1], @[@167.6, @4.5], @[@175.3, @4.5], @[@170.2, @9.1],
                         @[@190.5, @08.6], @[@177.8, @6.4], @[@190.5, @0.9], @[@177.8, @7.7], @[@184.2, @4.5],
                         @[@176.5, @0.2], @[@177.8, @2.0], @[@180.3, @1.4], @[@171.4, @2.7], @[@172.7, @4.1],
                         @[@172.7, @6.8], @[@177.8, @3.6], @[@177.8, @0.9], @[@182.9, @0.9], @[@170.2, @5.5],
                         @[@167.6, @8.6], @[@175.3, @7.7], @[@165.1, @6.4], @[@185.4, @02.3], @[@181.6, @0.5],
                         @[@172.7, @5.9], @[@190.5, @4.1], @[@179.1, @7.3], @[@175.3, @1.8], @[@170.2, @5.9],
                         @[@193.0, @5.9], @[@171.4, @1.4], @[@177.8, @1.8], @[@177.8, @6.8], @[@167.6, @9.1],
                         @[@167.6, @2.7], @[@180.3, @5.5], @[@182.9, @9.5], @[@176.5, @3.6], @[@186.7, @1.8],
                         @[@188.0, @4.1], @[@188.0, @5.9], @[@177.8, @1.8], @[@174.0, @2.5], @[@177.8, @0.5],
                         @[@171.4, @0.0], @[@185.4, @1.8], @[@185.4, @4.1], @[@188.0, @0.5], @[@188.0, @1.4],
                         @[@182.9, @9.1], @[@176.5, @5.0], @[@175.3, @9.1], @[@175.3, @3.6], @[@188.0, @0.5],
                         @[@188.0, @2.7], @[@175.3, @6.4], @[@170.5, @7.7], @[@179.1, @2.7], @[@177.8, @3.6],
                         @[@175.3, @0.9], @[@182.9, @5.0], @[@170.8, @3.2], @[@188.0, @3.2], @[@180.3, @7.7],
                         @[@177.8, @1.4], @[@185.4, @4.1], @[@168.9, @5.0], @[@185.4, @3.6], @[@180.3, @5.5],
                         @[@174.0, @3.9], @[@167.6, @6.8], @[@182.9, @7.3], @[@160.0, @2.3], @[@180.3, @8.6],
                         @[@167.6, @5.5], @[@186.7, @01.4], @[@175.3, @1.1], @[@175.3, @7.3], @[@175.9, @7.7],
                         @[@175.3, @1.8], @[@179.1, @5.5], @[@181.6, @4.5], @[@177.8, @6.6], @[@182.9, @5.0],
                         @[@177.8, @02.5], @[@184.2, @7.3], @[@179.1, @1.8], @[@176.5, @7.9], @[@188.0, @4.3],
                         @[@174.0, @0.9], @[@167.6, @4.5], @[@170.2, @7.3], @[@167.6, @2.3], @[@188.0, @7.3],
                         @[@174.0, @0.0], @[@176.5, @2.3], @[@180.3, @3.6], @[@167.6, @4.1], @[@188.0, @5.9],
                         @[@180.3, @3.2], @[@167.6, @6.3], @[@183.0, @5.9], @[@183.0, @0.9], @[@179.1, @9.1],
                         @[@170.2, @2.3], @[@177.8, @2.7], @[@179.1, @9.1], @[@190.5, @8.2], @[@177.8, @4.1],
                         @[@180.3, @3.2], @[@180.3, @3.2], nil];
        
        options.chart = chart;
        options.title = title;
        options.subtitle = subtitle;
        options.xAxis = [NSMutableArray arrayWithObject:xaxis];
        options.yAxis = [NSMutableArray arrayWithObject:yaxis];
        options.legend = legend;
        options.plotOptions = plotOptions;
        options.series = [NSMutableArray arrayWithObjects:scatter1, scatter2, nil];
        
        return options;
        
        
    }
    //MARK: Box plot
    else if ([type isEqualToString:@"Box plot"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"boxplot";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Highcharts Box Plot Example";
        
        HILegend *legend = [[HILegend alloc]init];
        legend.enabled = @false;
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = [NSMutableArray arrayWithObjects:@"1",
                            @"2",
                            @"3",
                            @"4",
                            @"5", nil];
        xaxis.title = [[HIXAxisTitle alloc]init];
        xaxis.title.text = @"Experiment No.";
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Observations";
        HIYAxisPlotLines *plotlines = [[HIYAxisPlotLines alloc]init];
        plotlines.value = @932;
        plotlines.color = [[HIColor alloc]initWithName:@"red"];
        plotlines.width = @1;
        plotlines.label = [[HIYAxisPlotLinesLabel alloc]init];
        plotlines.label.text = @"Theoretical mean: 932";
        plotlines.label.align = @"center";
        plotlines.label.style = @{@"color": @"gray"};
        yaxis.plotLines = [NSMutableArray arrayWithObject:plotlines];
        
        HIBoxplot *series1 = [[HIBoxplot alloc]init];
        series1.name = @"Observations";
        series1.data = [NSMutableArray arrayWithObjects:@[
                                                          @760,
                                                          @801,
                                                          @848,
                                                          @895,
                                                          @965
                                                          ],
                        @[
                          @733,
                          @853,
                          @939,
                          @980,
                          @1080
                          ],
                        @[
                          @714,
                          @762,
                          @817,
                          @870,
                          @918
                          ],
                        @[
                          @724,
                          @802,
                          @806,
                          @871,
                          @950
                          ],
                        @[
                          @834,
                          @836,
                          @864,
                          @882,
                          @910
                          ], nil];
        series1.tooltip = [[HIBoxplotTooltip alloc]init];
        series1.tooltip.headerFormat = @"<em>Experiment No {point.key}</em><br/>";
        
        HIScatter *series2 = [[HIScatter alloc]init];
        series2.name = @"Outliner";
        series2.color = [[HIColor alloc]initWithHexValue:@"7cb5ec"];
        series2.data = [NSMutableArray arrayWithObjects:@[
                                                          @0,
                                                          @644
                                                          ],
                        @[
                          @4,
                          @718
                          ],
                        @[
                          @4,
                          @951
                          ],
                        @[
                          @4,
                          @969
                          ], nil];
        series2.marker = [[HIScatterMarker alloc]init];
        series2.marker.fillColor = [[HIColor alloc]initWithName:@"white"];
        series2.marker.lineWidth = @1;
        series2.marker.lineColor = [[HIColor alloc]initWithHexValue:@"7cb5ec"];
        series2.tooltip = [[HIScatterTooltip alloc]init];
        series2.tooltip.pointFormat = @"Observation: {point.y}";
        
        options.chart = chart;
        options.title = title;
        options.legend = legend;
        options.xAxis = [NSMutableArray arrayWithObject:xaxis];
        options.yAxis = [NSMutableArray arrayWithObject:yaxis];
        options.series = [NSMutableArray arrayWithObjects:series1, series2, nil];
        
        return options;
        
    }
    //MARK: Waterfall
    else if ([type isEqualToString:@"Waterfall"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"waterfall";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Waterfall";
        
        HIXAxis *xAxis = [[HIXAxis alloc]init];
        xAxis.type = @"category";
        
        HIYAxis *yAxis = [[HIYAxis alloc]init];
        yAxis.title = [[HIYAxisTitle alloc]init];
        yAxis.title.text = @"USD";
        yAxis.labels = [[HIYAxisLabels alloc]init];
        yAxis.labels.format = @"{value}k";
        
        HILegend *legend = [[HILegend alloc]init];
        legend.enabled = @false;
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.pointFormat = @"<b>${point.y:,.2f}</b> USD";
        
        HIWaterfall *series = [[HIWaterfall alloc]init];
        series.upColor = [[HIColor alloc]initWithHexValue:@"90ed7d"];
        series.color = [[HIColor alloc]initWithHexValue:@"f7a35c"];
        
        //You can add objects by hand or creating data objects - one presented below:
        
        HIWaterfallData *data = [[HIWaterfallData alloc]init];
        data.name = @"Positive Balance";
        data.isIntermediateSum = @true;
        data.color = [[HIColor alloc]initWithHexValue:@"434348"];
        
        series.data = [NSMutableArray arrayWithObjects:@{
                                                         @"name": @"Start",
                                                         @"y": @120
                                                         },
                       @{
                         @"name": @"Product Revenue",
                         @"y": @569
                         },
                       @{
                         @"name": @"Service Revenue",
                         @"y": @231
                         },
                       
                       data,
                       
                       @{
                         @"name": @"Fixed Costs",
                         @"y": @-342
                         },
                       @{
                         @"name": @"Variable Costs",
                         @"y": @-233
                         },
                       @{
                         @"name": @"Balance",
                         @"isSum": @true,
                         @"color": @"#434348"
                         }, nil];
        
        series.dataLabels = [[HIWaterfallDataLabels alloc]init];
        series.dataLabels.enabled = @true;
        series.dataLabels.format = @"{point.y}k";
        series.dataLabels.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"bold",@"fontWeight",  nil];
        series.pointPadding = @0;
        
        options.chart = chart;
        options.title = title;
        options.xAxis = [NSMutableArray arrayWithObject:xAxis];
        options.yAxis = [NSMutableArray arrayWithObject:yAxis];
        options.legend = legend;
        options.tooltip = tooltip;
        options.series = [NSMutableArray arrayWithObject:series];
        
        return options;
    }
    //MARK: Error bar
    else if ([type isEqualToString:@"Error bar"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.zoomType = @"xy";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Temperature vs Rainfall";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = [NSMutableArray arrayWithObjects:@"Jan",
                            @"Feb",
                            @"Mar",
                            @"Apr",
                            @"May",
                            @"Jun",
                            @"Jul",
                            @"Aug",
                            @"Sep",
                            @"Oct",
                            @"Nov",
                            @"Dec", nil];
        
        HIYAxis *yaxis1 = [[HIYAxis alloc]init];
        yaxis1.labels = [[HIYAxisLabels alloc]init];
        yaxis1.labels.format = @"{value} °C";
        yaxis1.labels.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"#434348", @"color", nil];
        yaxis1.title = [[HIYAxisTitle alloc]init];
        yaxis1.title.text = @"Temperature";
        yaxis1.title.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"#434348", @"color", nil];
        
        HIYAxis *yaxis2 = [[HIYAxis alloc]init];
        yaxis2.labels = [[HIYAxisLabels alloc]init];
        yaxis2.labels.format = @"{value} mm";
        yaxis2.labels.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"#7cb5ec", @"color", nil];
        yaxis2.title = [[HIYAxisTitle alloc]init];
        yaxis2.title.text = @"Rainfall";
        yaxis2.title.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"#7cb5ec", @"color", nil];
        yaxis2.opposite = @true;
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.shared = @true;
        
        HIColumn *column = [[HIColumn alloc]init];
        column.name = @"Rainfall";
        column.yAxis = @1;
        column.data = [NSMutableArray arrayWithObjects:@49.9,
                       @71.5,
                       @106.4,
                       @129.2,
                       @144,
                       @176,
                       @135.6,
                       @148.5,
                       @216.4,
                       @194.1,
                       @95.6,
                       @54.4, nil];
        column.tooltip = [[HIColumnTooltip alloc]init];
        column.tooltip.pointFormat = @"<span style=\"font-weight: bold; color: {series.color}\">{series.name}</span>: <b>{point.y:.1f} mm</b> ";
        
        HIErrorbar *errorbar1 = [[HIErrorbar alloc]init];
        errorbar1.name = @"Rainfall error";
        errorbar1.yAxis = @1;
        errorbar1.data = [NSMutableArray arrayWithObjects:@[
                                                           @48,
                                                           @51
                                                           ],
                         @[
                           @68,
                           @73
                           ],
                         @[
                           @92,
                           @110
                           ],
                         @[
                           @128,
                           @136
                           ],
                         @[
                           @140,
                           @150
                           ],
                         @[
                           @171,
                           @179
                           ],
                         @[
                           @135,
                           @143
                           ],
                         @[
                           @142,
                           @149
                           ],
                         @[
                           @204,
                           @220
                           ],
                         @[
                           @189,
                           @199
                           ],
                         @[
                           @95,
                           @110
                           ],
                         @[
                           @52,
                           @56
                           ]
                         , nil];
        errorbar1.tooltip = [[HIErrorbarTooltip alloc]init];
        errorbar1.tooltip.pointFormat = @"(error range: {point.low}-{point.high} mm)<br/>";
        
        HISpline *spline = [[HISpline alloc]init];
        spline.name = @"Temperature";
        spline.data = [NSMutableArray arrayWithObjects:@7,
                       @6.9,
                       @9.5,
                       @14.5,
                       @18.2,
                       @21.5,
                       @25.2,
                       @26.5,
                       @23.3,
                       @18.3,
                       @13.9,
                       @9.6, nil];
        spline.tooltip = [[HISplineTooltip alloc]init];
        spline.tooltip.pointFormat = @"<span style=\"font-weight: bold; color: {series.color}\">{series.name}</span>: <b>{point.y:.1f}°C</b> ";
        
        
        HIErrorbar *errorbar2 = [[HIErrorbar alloc]init];
        errorbar2.name = @"Temperature error";
        errorbar2.data = [NSMutableArray arrayWithObjects:@[
                                                            @6,
                                                            @8
                                                            ],
                          @[
                            @5.9,
                            @7.6
                            ],
                          @[
                            @9.4,
                            @10.4
                            ],
                          @[
                            @14.1,
                            @15.9
                            ],
                          @[
                            @18,
                            @20.1
                            ],
                          @[
                            @21,
                            @24
                            ],
                          @[
                            @23.2,
                            @25.3
                            ],
                          @[
                            @26.1,
                            @27.8
                            ],
                          @[
                            @23.2,
                            @23.9
                            ],
                          @[
                            @18,
                            @21.1
                            ],
                          @[
                            @12.9,
                            @14
                            ],
                          @[
                            @7.6,
                            @10
                            ]
                          , nil];
        errorbar2.tooltip = [[HIErrorbarTooltip alloc]init];
        errorbar2.tooltip.pointFormat = @"(error range: {point.low}-{point.high}°C)<br/>";
        
        options.chart = chart;
        options.title = title;
        options.xAxis = [NSMutableArray arrayWithObject:xaxis];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis1, yaxis2, nil];
        options.tooltip = tooltip;
        options.series = [NSMutableArray arrayWithObjects:column, errorbar1, spline, errorbar2, nil];
        
        return options;
    }
    //MARK: Spline
    else if ([type isEqualToString:@"Spline"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"spline";
        chart.inverted = @true;
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Atmosphere Temperature by Altitude";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"According to the Standard Atmosphere Model";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.reversed = @false;
        xaxis.title = [[HIXAxisTitle alloc]init];
        xaxis.title.text = @"Altitude";
        xaxis.labels = [[HIXAxisLabels alloc]init];
        xaxis.maxPadding = @0.05;
        xaxis.showLastLabel = @true;
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Temperature";
        yaxis.labels = [[HIYAxisLabels alloc]init];
        yaxis.lineWidth = @2;
        
        HILegend *legend = [[HILegend alloc]init];
        legend.enabled = @false;
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.headerFormat = @"<b>{series.name}</b><br/>";
        tooltip.pointFormat = @"{point.x} km: {point.y}°C";
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.spline = [[HIPlotOptionsSpline alloc]init];
        plotoptions.spline.marker = [[HIPlotOptionsSplineMarker alloc]init];
        plotoptions.spline.marker.enabled = @false;
        
        HISpline *series = [[HISpline alloc]init];
        series.name = @"Temperature";
        series.data = [NSMutableArray arrayWithObjects:@[
                                                         @0,
                                                         @15
                                                         ],
                       @[
                         @10,
                         @-50
                         ],
                       @[
                         @20,
                         @-56.5
                         ],
                       @[
                         @30,
                         @-46.5
                         ],
                       @[
                         @40,
                         @-22.1
                         ],
                       @[
                         @50,
                         @-2.5
                         ],
                       @[
                         @60,
                         @-27.7
                         ],
                       @[
                         @70,
                         @-55.7
                         ],
                       @[
                         @80,
                         @-76.5
                         ], nil];
        
        options.chart = chart;
        options.title = title;
        options.subtitle = subtitle;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.legend = legend;
        options.tooltip = tooltip;
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects:series, nil];
        
        return options;
    }
    //MARK: Areaspline
    else if ([type isEqualToString:@"Areaspline"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"areaspline";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Average fruit consumption during one week";
        
        HILegend *legend = [[HILegend alloc]init];
        legend.layout = @"vertical";
        legend.align = @"left";
        legend.verticalAlign = @"top";
        legend.x = @150;
        legend.y = @100;
        legend.floating = @true;
        legend.borderWidth = @1;
        legend.backgroundColor = [[HIColor alloc]initWithHexValue:@"FFFFFF"];
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = [NSMutableArray arrayWithObjects:@"Monday",
                            @"Tuesday",
                            @"Wednesday",
                            @"Thursday",
                            @"Friday",
                            @"Saturday",
                            @"Sunday", nil];
        HIXAxisPlotBands *plotband = [[HIXAxisPlotBands alloc]init];
        plotband.from = @4.5;
        plotband.to = @6.5;
        plotband.color = [[HIColor alloc]initWithRGBA:68 green:170 blue:213 alpha:.2];
        xaxis.plotBands = [NSMutableArray arrayWithObject:plotband];
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Fruit unit";
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.shared = @true;
        tooltip.valueSuffix = @" units";
        
        HICredits *credits = [[HICredits alloc]init];
        credits.enabled = @false;
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.areaspline = [[HIPlotOptionsAreaspline alloc]init];
        plotoptions.areaspline.fillOpacity = @0.5;
        
        HIAreaspline *areaspline1 = [[HIAreaspline alloc]init];
        areaspline1.name = @"John";
        areaspline1.data = [NSMutableArray arrayWithObjects:@3,
                            @4,
                            @3,
                            @5,
                            @4,
                            @10,
                            @12, nil];
        
        HIAreaspline *areaspline2 = [[HIAreaspline alloc]init];
        areaspline2.name = @"Jane";
        areaspline2.data = [NSMutableArray arrayWithObjects:@1,
                            @3,
                            @4,
                            @3,
                            @3,
                            @5,
                            @4, nil];
        
        options.chart = chart;
        options.title = title;
        options.legend = legend;
        options.xAxis = [NSMutableArray arrayWithObject:xaxis];
        options.yAxis = [NSMutableArray arrayWithObject:yaxis];
        options.tooltip = tooltip;
        options.credits = credits;
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects:areaspline1, areaspline2, nil];
        
        return options;
    }
    //MARK: Arearange
    else if ([type isEqualToString:@"Arearange"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"arearange";
        chart.zoomType = @"x";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Temperature variation by day";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.type = @"datetime";
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.title = [[HIYAxisTitle alloc]init];
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.crosshairs = @true;
        tooltip.shared = @true;
        tooltip.valueSuffix = @"°C";
        
        HILegend *legend = [[HILegend alloc]init];
        legend.enabled = @false;
        
        HIArearange *series = [[HIArearange alloc]init];
        series.name = @"Temperatures";
        series.data = [NSMutableArray arrayWithObjects:@[
                                                         @1388538000000,
                                                         @1.1,
                                                         @4.7
                                                         ],
                       @[
                         @1388624400000,
                         @1.8,
                         @6.4
                         ],
                       @[
                         @1388710800000,
                         @1.7,
                         @6.9
                         ],
                       @[
                         @1388797200000,
                         @2.6,
                         @7.4
                         ],
                       @[
                         @1388883600000,
                         @3.3,
                         @9.3
                         ],
                       @[
                         @1388970000000,
                         @3,
                         @7.9
                         ],
                       @[
                         @1389056400000,
                         @3.9,
                         @6
                         ],
                       @[
                         @1389142800000,
                         @3.9,
                         @5.5
                         ],
                       @[
                         @1389229200000,
                         @-0.6,
                         @4.5
                         ],
                       @[
                         @1389315600000,
                         @-0.5,
                         @5.3
                         ],
                       @[
                         @1389402000000,
                         @-0.3,
                         @2.4
                         ],
                       @[
                         @1389488400000,
                         @-6.5,
                         @-0.4
                         ],
                       @[
                         @1389574800000,
                         @-7.3,
                         @-3.4
                         ],
                       @[
                         @1389661200000,
                         @-7.3,
                         @-2.3
                         ],
                       @[
                         @1389747600000,
                         @-7.9,
                         @-4.2
                         ],
                       @[
                         @1389834000000,
                         @-4.7,
                         @0.9
                         ],
                       @[
                         @1389920400000,
                         @-1.2,
                         @0.4
                         ],
                       @[
                         @1390006800000,
                         @-2.3,
                         @-0.1
                         ],
                       @[
                         @1390093200000,
                         @-2,
                         @0.3
                         ],
                       @[
                         @1390179600000,
                         @-5.1,
                         @-2
                         ],
                       @[
                         @1390266000000,
                         @-4.4,
                         @-0.5
                         ],
                       @[
                         @1390352400000,
                         @-6.4,
                         @-2.7
                         ],
                       @[
                         @1390438800000,
                         @-3.2,
                         @-0.5
                         ],
                       @[
                         @1390525200000,
                         @-5.5,
                         @-0.8
                         ],
                       @[
                         @1390611600000,
                         @-4.4,
                         @2.4
                         ],
                       @[
                         @1390698000000,
                         @-4,
                         @1.1
                         ],
                       @[
                         @1390784400000,
                         @-3.4,
                         @0.8
                         ],
                       @[
                         @1390870800000,
                         @-1.7,
                         @2.6
                         ],
                       @[
                         @1390957200000,
                         @-3.1,
                         @3.9
                         ],
                       @[
                         @1391043600000,
                         @-4.8,
                         @-1.9
                         ],
                       @[
                         @1391130000000,
                         @-7,
                         @-2.8
                         ],
                       @[
                         @1391216400000,
                         @-2.7,
                         @2.6
                         ],
                       @[
                         @1391302800000,
                         @-1.3,
                         @8.2
                         ],
                       @[
                         @1391389200000,
                         @1.5,
                         @7.7
                         ],
                       @[
                         @1391475600000,
                         @-0.5,
                         @5.3
                         ],
                       @[
                         @1391562000000,
                         @-0.2,
                         @5.2
                         ],
                       @[
                         @1391648400000,
                         @0.7,
                         @4.8
                         ],
                       @[
                         @1391734800000,
                         @0.9,
                         @5.7
                         ],
                       @[
                         @1391821200000,
                         @1.7,
                         @3.9
                         ],
                       @[
                         @1391907600000,
                         @2.2,
                         @8.8
                         ],
                       @[
                         @1391994000000,
                         @3,
                         @6.6
                         ],
                       @[
                         @1392080400000,
                         @1.4,
                         @5.4
                         ],
                       @[
                         @1392166800000,
                         @0.6,
                         @5.1
                         ],
                       @[
                         @1392253200000,
                         @0.1,
                         @7.8
                         ],
                       @[
                         @1392339600000,
                         @3.4,
                         @7.3
                         ],
                       @[
                         @1392426000000,
                         @2,
                         @5.9
                         ],
                       @[
                         @1392512400000,
                         @1.1,
                         @4.7
                         ],
                       @[
                         @1392598800000,
                         @1.1,
                         @4.4
                         ],
                       @[
                         @1392685200000,
                         @-2.8,
                         @2.6
                         ],
                       @[
                         @1392771600000,
                         @-5,
                         @0.1
                         ],
                       @[
                         @1392858000000,
                         @-5.7,
                         @0.2
                         ],
                       @[
                         @1392944400000,
                         @-0.7,
                         @3.9
                         ],
                       @[
                         @1393030800000,
                         @1.5,
                         @7.8
                         ],
                       @[
                         @1393117200000,
                         @5.5,
                         @8.8
                         ],
                       @[
                         @1393203600000,
                         @5.3,
                         @11.7
                         ],
                       @[
                         @1393290000000,
                         @1.7,
                         @11.1
                         ],
                       @[
                         @1393376400000,
                         @3.4,
                         @9.3
                         ],
                       @[
                         @1393462800000,
                         @3.4,
                         @7.3
                         ],
                       @[
                         @1393549200000,
                         @4.5,
                         @8
                         ],
                       @[
                         @1393635600000,
                         @2.1,
                         @8.9
                         ],
                       @[
                         @1393722000000,
                         @0.6,
                         @6.1
                         ],
                       @[
                         @1393808400000,
                         @1.2,
                         @9.4
                         ],
                       @[
                         @1393894800000,
                         @2.6,
                         @7.3
                         ],
                       @[
                         @1393981200000,
                         @3.9,
                         @9.5
                         ],
                       @[
                         @1394067600000,
                         @5.3,
                         @9.9
                         ],
                       @[
                         @1394154000000,
                         @2.7,
                         @7.1
                         ],
                       @[
                         @1394240400000,
                         @4,
                         @8.6
                         ],
                       @[
                         @1394326800000,
                         @6.1,
                         @10.7
                         ],
                       @[
                         @1394413200000,
                         @4.2,
                         @7.6
                         ],
                       @[
                         @1394499600000,
                         @2.5,
                         @9
                         ],
                       @[
                         @1394586000000,
                         @0.2,
                         @7
                         ],
                       @[
                         @1394672400000,
                         @-1.2,
                         @6.9
                         ],
                       @[
                         @1394758800000,
                         @0.4,
                         @6.7
                         ],
                       @[
                         @1394845200000,
                         @0.2,
                         @5.1
                         ],
                       @[
                         @1394931600000,
                         @-0.1,
                         @6
                         ],
                       @[
                         @1395018000000,
                         @1,
                         @5.6
                         ],
                       @[
                         @1395104400000,
                         @-1.1,
                         @6.3
                         ],
                       @[
                         @1395190800000,
                         @-1.9,
                         @0.3
                         ],
                       @[
                         @1395277200000,
                         @0.3,
                         @4.5
                         ],
                       @[
                         @1395363600000,
                         @2.4,
                         @6.7
                         ],
                       @[
                         @1395450000000,
                         @3.2,
                         @9.2
                         ],
                       @[
                         @1395536400000,
                         @1.7,
                         @3.6
                         ],
                       @[
                         @1395622800000,
                         @-0.3,
                         @7.9
                         ],
                       @[
                         @1395709200000,
                         @-2.4,
                         @8.6
                         ],
                       @[
                         @1395795600000,
                         @-1.7,
                         @10.3
                         ],
                       @[
                         @1395882000000,
                         @4.1,
                         @10
                         ],
                       @[
                         @1395968400000,
                         @4.4,
                         @14
                         ],
                       @[
                         @1396054800000,
                         @3.3,
                         @11
                         ],
                       @[
                         @1396141200000,
                         @3,
                         @12.5
                         ],
                       @[
                         @1396224000000,
                         @1.4,
                         @10.4
                         ],
                       @[
                         @1396310400000,
                         @-1.2,
                         @8.8
                         ],
                       @[
                         @1396396800000,
                         @2.2,
                         @7.6
                         ],
                       @[
                         @1396483200000,
                         @-1,
                         @10.1
                         ],
                       @[
                         @1396569600000,
                         @-1.8,
                         @9.5
                         ],
                       @[
                         @1396656000000,
                         @0.2,
                         @7.7
                         ],
                       @[
                         @1396742400000,
                         @3.7,
                         @6.4
                         ],
                       @[
                         @1396828800000,
                         @5.8,
                         @11.4
                         ],
                       @[
                         @1396915200000,
                         @5.4,
                         @8.7
                         ],
                       @[
                         @1397001600000,
                         @4.5,
                         @12.2
                         ],
                       @[
                         @1397088000000,
                         @3.9,
                         @8.4
                         ],
                       @[
                         @1397174400000,
                         @4.5,
                         @8
                         ],
                       @[
                         @1397260800000,
                         @6.6,
                         @8.4
                         ],
                       @[
                         @1397347200000,
                         @3.7,
                         @7.3
                         ],
                       @[
                         @1397433600000,
                         @3.6,
                         @6.7
                         ],
                       @[
                         @1397520000000,
                         @3.5,
                         @8.3
                         ],
                       @[
                         @1397606400000,
                         @1.5,
                         @10.2
                         ],
                       @[
                         @1397692800000,
                         @4.9,
                         @9.4
                         ],
                       @[
                         @1397779200000,
                         @3.5,
                         @12
                         ],
                       @[
                         @1397865600000,
                         @1.5,
                         @13.1
                         ],
                       @[
                         @1397952000000,
                         @1.7,
                         @15.6
                         ],
                       @[
                         @1398038400000,
                         @1.4,
                         @16
                         ],
                       @[
                         @1398124800000,
                         @3,
                         @18.4
                         ],
                       @[
                         @1398211200000,
                         @5.6,
                         @18.8
                         ],
                       @[
                         @1398297600000,
                         @5.7,
                         @17.2
                         ],
                       @[
                         @1398384000000,
                         @4.5,
                         @16.4
                         ],
                       @[
                         @1398470400000,
                         @3.1,
                         @17.6
                         ],
                       @[
                         @1398556800000,
                         @4.7,
                         @18.9
                         ],
                       @[
                         @1398643200000,
                         @4.9,
                         @16.6
                         ],
                       @[
                         @1398729600000,
                         @6.8,
                         @15.6
                         ],
                       @[
                         @1398816000000,
                         @2.8,
                         @9.2
                         ],
                       @[
                         @1398902400000,
                         @-2.7,
                         @10.5
                         ],
                       @[
                         @1398988800000,
                         @-1.9,
                         @10.9
                         ],
                       @[
                         @1399075200000,
                         @4.5,
                         @8.5
                         ],
                       @[
                         @1399161600000,
                         @-0.6,
                         @10.4
                         ],
                       @[
                         @1399248000000,
                         @4,
                         @9.7
                         ],
                       @[
                         @1399334400000,
                         @5.5,
                         @9.5
                         ],
                       @[
                         @1399420800000,
                         @6.5,
                         @13.2
                         ],
                       @[
                         @1399507200000,
                         @3.2,
                         @14.5
                         ],
                       @[
                         @1399593600000,
                         @2.1,
                         @13.5
                         ],
                       @[
                         @1399680000000,
                         @6.5,
                         @15.6
                         ],
                       @[
                         @1399766400000,
                         @5.7,
                         @16.2
                         ],
                       @[
                         @1399852800000,
                         @6.3,
                         @15.3
                         ],
                       @[
                         @1399939200000,
                         @5.3,
                         @15.3
                         ],
                       @[
                         @1400025600000,
                         @6,
                         @14.1
                         ],
                       @[
                         @1400112000000,
                         @1.9,
                         @7.7
                         ],
                       @[
                         @1400198400000,
                         @7.2,
                         @9.8
                         ],
                       @[
                         @1400284800000,
                         @8.9,
                         @15.2
                         ],
                       @[
                         @1400371200000,
                         @9.1,
                         @20.5
                         ],
                       @[
                         @1400457600000,
                         @8.4,
                         @17.9
                         ],
                       @[
                         @1400544000000,
                         @6.8,
                         @21.5
                         ],
                       @[
                         @1400630400000,
                         @7.6,
                         @14.1
                         ],
                       @[
                         @1400716800000,
                         @11.1,
                         @16.5
                         ],
                       @[
                         @1400803200000,
                         @9.3,
                         @14.3
                         ],
                       @[
                         @1400889600000,
                         @10.4,
                         @19.3
                         ],
                       @[
                         @1400976000000,
                         @5.7,
                         @19.4
                         ],
                       @[
                         @1401062400000,
                         @7.9,
                         @17.9
                         ],
                       @[
                         @1401148800000,
                         @5,
                         @22.5
                         ],
                       @[
                         @1401235200000,
                         @7.6,
                         @22
                         ],
                       @[
                         @1401321600000,
                         @5.7,
                         @21.9
                         ],
                       @[
                         @1401408000000,
                         @4.6,
                         @20
                         ],
                       @[
                         @1401494400000,
                         @7,
                         @22
                         ],
                       @[
                         @1401580800000,
                         @5.1,
                         @20.6
                         ],
                       @[
                         @1401667200000,
                         @6.6,
                         @24.6
                         ],
                       @[
                         @1401753600000,
                         @9.7,
                         @22.2
                         ],
                       @[
                         @1401840000000,
                         @9.6,
                         @21.6
                         ],
                       @[
                         @1401926400000,
                         @13,
                         @20
                         ],
                       @[
                         @1402012800000,
                         @12.9,
                         @18.2
                         ],
                       @[
                         @1402099200000,
                         @8.5,
                         @23.2
                         ],
                       @[
                         @1402185600000,
                         @9.2,
                         @21.4
                         ],
                       @[
                         @1402272000000,
                         @10.5,
                         @22
                         ],
                       @[
                         @1402358400000,
                         @7.3,
                         @23.4
                         ],
                       @[
                         @1402444800000,
                         @12.1,
                         @18.2
                         ],
                       @[
                         @1402531200000,
                         @11.1,
                         @13.3
                         ],
                       @[
                         @1402617600000,
                         @10,
                         @20.7
                         ],
                       @[
                         @1402704000000,
                         @5.8,
                         @23.4
                         ],
                       @[
                         @1402790400000,
                         @7.4,
                         @20.1
                         ],
                       @[
                         @1402876800000,
                         @10.3,
                         @21.9
                         ],
                       @[
                         @1402963200000,
                         @7.8,
                         @16.8
                         ],
                       @[
                         @1403049600000,
                         @11.6,
                         @19.7
                         ],
                       @[
                         @1403136000000,
                         @9.8,
                         @16
                         ],
                       @[
                         @1403222400000,
                         @10.7,
                         @14.4
                         ],
                       @[
                         @1403308800000,
                         @9,
                         @15.5
                         ],
                       @[
                         @1403395200000,
                         @5.1,
                         @13.3
                         ],
                       @[
                         @1403481600000,
                         @10,
                         @19.3
                         ],
                       @[
                         @1403568000000,
                         @5.2,
                         @22.1
                         ],
                       @[
                         @1403654400000,
                         @6.3,
                         @21.3
                         ],
                       @[
                         @1403740800000,
                         @5.5,
                         @21.1
                         ],
                       @[
                         @1403827200000,
                         @8.4,
                         @19.7
                         ],
                       @[
                         @1403913600000,
                         @7.1,
                         @23.3
                         ],
                       @[
                         @1404000000000,
                         @6.1,
                         @20.8
                         ],
                       @[
                         @1404086400000,
                         @8.4,
                         @22.6
                         ],
                       @[
                         @1404172800000,
                         @7.6,
                         @23.3
                         ],
                       @[
                         @1404259200000,
                         @8.1,
                         @21.5
                         ],
                       @[
                         @1404345600000,
                         @11.2,
                         @18.1
                         ],
                       @[
                         @1404432000000,
                         @6.4,
                         @14.9
                         ],
                       @[
                         @1404518400000,
                         @12.7,
                         @23.1
                         ],
                       @[
                         @1404604800000,
                         @15.3,
                         @21.7
                         ],
                       @[
                         @1404691200000,
                         @15.1,
                         @19.4
                         ],
                       @[
                         @1404777600000,
                         @10.8,
                         @22.8
                         ],
                       @[
                         @1404864000000,
                         @15.8,
                         @29.7
                         ],
                       @[
                         @1404950400000,
                         @15.8,
                         @29
                         ],
                       @[
                         @1405036800000,
                         @15.2,
                         @30.5
                         ],
                       @[
                         @1405123200000,
                         @14.9,
                         @28.1
                         ],
                       @[
                         @1405209600000,
                         @13.1,
                         @27.4
                         ],
                       @[
                         @1405296000000,
                         @15.5,
                         @23.5
                         ],
                       @[
                         @1405382400000,
                         @14.7,
                         @20.1
                         ],
                       @[
                         @1405468800000,
                         @14.4,
                         @16.8
                         ],
                       @[
                         @1405555200000,
                         @12.6,
                         @18.5
                         ],
                       @[
                         @1405641600000,
                         @13.9,
                         @24.4
                         ],
                       @[
                         @1405728000000,
                         @11.3,
                         @26.9
                         ],
                       @[
                         @1405814400000,
                         @13.3,
                         @27.4
                         ],
                       @[
                         @1405900800000,
                         @13.3,
                         @29.7
                         ],
                       @[
                         @1405987200000,
                         @14,
                         @28.8
                         ],
                       @[
                         @1406073600000,
                         @14.1,
                         @29.8
                         ],
                       @[
                         @1406160000000,
                         @15.4,
                         @31.1
                         ],
                       @[
                         @1406246400000,
                         @17,
                         @26.5
                         ],
                       @[
                         @1406332800000,
                         @16.6,
                         @27.1
                         ],
                       @[
                         @1406419200000,
                         @13.3,
                         @25.6
                         ],
                       @[
                         @1406505600000,
                         @16.8,
                         @21.9
                         ],
                       @[
                         @1406592000000,
                         @16,
                         @22.8
                         ],
                       @[
                         @1406678400000,
                         @14.4,
                         @19
                         ],
                       @[
                         @1406764800000,
                         @12.8,
                         @18.1
                         ],
                       @[
                         @1406851200000,
                         @12.6,
                         @18
                         ],
                       @[
                         @1406937600000,
                         @11.4,
                         @19.7
                         ],
                       @[
                         @1407024000000,
                         @13.9,
                         @18.9
                         ],
                       @[
                         @1407110400000,
                         @12.5,
                         @19.9
                         ],
                       @[
                         @1407196800000,
                         @12.3,
                         @23.4
                         ],
                       @[
                         @1407283200000,
                         @12.8,
                         @23.3
                         ],
                       @[
                         @1407369600000,
                         @11,
                         @20.4
                         ],
                       @[
                         @1407456000000,
                         @14.7,
                         @22.4
                         ],
                       @[
                         @1407542400000,
                         @11.1,
                         @23.6
                         ],
                       @[
                         @1407628800000,
                         @13.5,
                         @20.7
                         ],
                       @[
                         @1407715200000,
                         @13.7,
                         @23.1
                         ],
                       @[
                         @1407801600000,
                         @12.8,
                         @19.6
                         ],
                       @[
                         @1407888000000,
                         @12.1,
                         @18.7
                         ],
                       @[
                         @1407974400000,
                         @8.8,
                         @22.4
                         ],
                       @[
                         @1408060800000,
                         @8.2,
                         @20.1
                         ],
                       @[
                         @1408147200000,
                         @10.9,
                         @16.3
                         ],
                       @[
                         @1408233600000,
                         @10.7,
                         @16.1
                         ],
                       @[
                         @1408320000000,
                         @11,
                         @18.9
                         ],
                       @[
                         @1408406400000,
                         @12.1,
                         @14.7
                         ],
                       @[
                         @1408492800000,
                         @11.2,
                         @14.4
                         ],
                       @[
                         @1408579200000,
                         @9.9,
                         @16.6
                         ],
                       @[
                         @1408665600000,
                         @6.9,
                         @15.7
                         ],
                       @[
                         @1408752000000,
                         @8.9,
                         @15.3
                         ],
                       @[
                         @1408838400000,
                         @8.2,
                         @17.6
                         ],
                       @[
                         @1408924800000,
                         @8.4,
                         @19.5
                         ],
                       @[
                         @1409011200000,
                         @6.6,
                         @19.9
                         ],
                       @[
                         @1409097600000,
                         @6.4,
                         @19.7
                         ],
                       @[
                         @1409184000000,
                         [NSNull null],
                         [NSNull null]
                         ],
                       @[
                         @1409270400000,
                         [NSNull null],
                         [NSNull null]
                         ],
                       @[
                         @1409356800000,
                         [NSNull null],
                         [NSNull null]
                         ],
                       @[
                         @1409443200000,
                         [NSNull null],
                         [NSNull null]
                         ],
                       @[
                         @1409529600000,
                         [NSNull null],
                         [NSNull null]
                         ],
                       @[
                         @1409616000000,
                         [NSNull null],
                         [NSNull null]
                         ],
                       @[
                         @1409702400000,
                         [NSNull null],
                         [NSNull null]
                         ],
                       @[
                         @1409788800000,
                         [NSNull null],
                         [NSNull null]
                         ],
                       @[
                         @1409875200000,
                         [NSNull null],
                         [NSNull null]
                         ],
                       @[
                         @1409961600000,
                         @13.4,
                         @13.4
                         ],
                       @[
                         @1410048000000,
                         @13.2,
                         @17.1
                         ],
                       @[
                         @1410134400000,
                         @11.9,
                         @18.9
                         ],
                       @[
                         @1410220800000,
                         @9,
                         @15.9
                         ],
                       @[
                         @1410307200000,
                         @5.9,
                         @17.5
                         ],
                       @[
                         @1410393600000,
                         @6.8,
                         @16.2
                         ],
                       @[
                         @1410480000000,
                         @10.3,
                         @19.9
                         ],
                       @[
                         @1410566400000,
                         @8.7,
                         @17.9
                         ],
                       @[
                         @1410652800000,
                         @7.9,
                         @19.1
                         ],
                       @[
                         @1410739200000,
                         @6,
                         @20.1
                         ],
                       @[
                         @1410825600000,
                         @4.7,
                         @19.9
                         ],
                       @[
                         @1410912000000,
                         @4,
                         @18.8
                         ],
                       @[
                         @1410998400000,
                         @4.5,
                         @17.9
                         ],
                       @[
                         @1411084800000,
                         @3.1,
                         @16.1
                         ],
                       @[
                         @1411171200000,
                         @8.5,
                         @12.2
                         ],
                       @[
                         @1411257600000,
                         @7.6,
                         @13.8
                         ],
                       @[
                         @1411344000000,
                         @1.3,
                         @12.6
                         ],
                       @[
                         @1411430400000,
                         @2,
                         @10.9
                         ],
                       @[
                         @1411516800000,
                         @5,
                         @10.8
                         ],
                       @[
                         @1411603200000,
                         @6.4,
                         @10.1
                         ],
                       @[
                         @1411689600000,
                         @8.2,
                         @13.3
                         ],
                       @[
                         @1411776000000,
                         @8.9,
                         @11.8
                         ],
                       @[
                         @1411862400000,
                         @9.9,
                         @15.9
                         ],
                       @[
                         @1411948800000,
                         @5.2,
                         @12.5
                         ],
                       @[
                         @1412035200000,
                         @4.6,
                         @11.7
                         ],
                       @[
                         @1412121600000,
                         @8.8,
                         @12.1
                         ],
                       @[
                         @1412208000000,
                         @3.9,
                         @12.3
                         ],
                       @[
                         @1412294400000,
                         @2.7,
                         @18.1
                         ],
                       @[
                         @1412380800000,
                         @10.2,
                         @18.2
                         ],
                       @[
                         @1412467200000,
                         @9.6,
                         @17.9
                         ],
                       @[
                         @1412553600000,
                         @9.3,
                         @17.5
                         ],
                       @[
                         @1412640000000,
                         @8.1,
                         @12.7
                         ],
                       @[
                         @1412726400000,
                         @6.7,
                         @11.2
                         ],
                       @[
                         @1412812800000,
                         @4,
                         @10
                         ],
                       @[
                         @1412899200000,
                         @6.3,
                         @10.2
                         ],
                       @[
                         @1412985600000,
                         @6.6,
                         @10.7
                         ],
                       @[
                         @1413072000000,
                         @6.6,
                         @10.3
                         ],
                       @[
                         @1413158400000,
                         @5.9,
                         @10.4
                         ],
                       @[
                         @1413244800000,
                         @1.2,
                         @10.6
                         ],
                       @[
                         @1413331200000,
                         @-0.1,
                         @9.2
                         ],
                       @[
                         @1413417600000,
                         @-1,
                         @9.4
                         ],
                       @[
                         @1413504000000,
                         @-1.7,
                         @8.3
                         ],
                       @[
                         @1413590400000,
                         @-0.6,
                         @7.5
                         ],
                       @[
                         @1413676800000,
                         @6.9,
                         @10.1
                         ],
                       @[
                         @1413763200000,
                         @7.7,
                         @10.5
                         ],
                       @[
                         @1413849600000,
                         @3.8,
                         @9.7
                         ],
                       @[
                         @1413936000000,
                         @6.2,
                         @8.6
                         ],
                       @[
                         @1414022400000,
                         @6.5,
                         @9.2
                         ],
                       @[
                         @1414108800000,
                         @7.9,
                         @10.7
                         ],
                       @[
                         @1414195200000,
                         @6.1,
                         @10.9
                         ],
                       @[
                         @1414281600000,
                         @10.3,
                         @13.1
                         ],
                       @[
                         @1414371600000,
                         @7.1,
                         @13.3
                         ],
                       @[
                         @1414458000000,
                         @0,
                         @10.1
                         ],
                       @[
                         @1414544400000,
                         @0,
                         @5.7
                         ],
                       @[
                         @1414630800000,
                         @3.9,
                         @4.6
                         ],
                       @[
                         @1414717200000,
                         @4,
                         @4.8
                         ],
                       @[
                         @1414803600000,
                         @4.8,
                         @11.2
                         ],
                       @[
                         @1414890000000,
                         @7,
                         @8.5
                         ],
                       @[
                         @1414976400000,
                         @3,
                         @9.8
                         ],
                       @[
                         @1415062800000,
                         @2.8,
                         @5.9
                         ],
                       @[
                         @1415149200000,
                         @0.8,
                         @4.8
                         ],
                       @[
                         @1415235600000,
                         @-0.2,
                         @2.9
                         ],
                       @[
                         @1415322000000,
                         @-0.6,
                         @5.5
                         ],
                       @[
                         @1415408400000,
                         @6.6,
                         @10.3
                         ],
                       @[
                         @1415494800000,
                         @5.4,
                         @7.3
                         ],
                       @[
                         @1415581200000,
                         @3,
                         @8.4
                         ],
                       @[
                         @1415667600000,
                         @0.4,
                         @3.2
                         ],
                       @[
                         @1415754000000,
                         @-0.1,
                         @6.8
                         ],
                       @[
                         @1415840400000,
                         @4.8,
                         @8.8
                         ],
                       @[
                         @1415926800000,
                         @4.6,
                         @8.5
                         ],
                       @[
                         @1416013200000,
                         @4.3,
                         @7.7
                         ],
                       @[
                         @1416099600000,
                         @3.3,
                         @7.5
                         ],
                       @[
                         @1416186000000,
                         @-0.4,
                         @3.2
                         ],
                       @[
                         @1416272400000,
                         @1.9,
                         @4.7
                         ],
                       @[
                         @1416358800000,
                         @-0.2,
                         @3.7
                         ],
                       @[
                         @1416445200000,
                         @-1.3,
                         @2.1
                         ],
                       @[
                         @1416531600000,
                         @-1.8,
                         @0.9
                         ],
                       @[
                         @1416618000000,
                         @-2.7,
                         @1.3
                         ],
                       @[
                         @1416704400000,
                         @0.3,
                         @2.5
                         ],
                       @[
                         @1416790800000,
                         @3.4,
                         @6.5
                         ],
                       @[
                         @1416877200000,
                         @0.8,
                         @6.1
                         ],
                       @[
                         @1416963600000,
                         @-1,
                         @1.3
                         ],
                       @[
                         @1417050000000,
                         @0.4,
                         @3.1
                         ],
                       @[
                         @1417136400000,
                         @-1.2,
                         @1.9
                         ],
                       @[
                         @1417222800000,
                         @-1.1,
                         @2.8
                         ],
                       @[
                         @1417309200000,
                         @-0.7,
                         @1.8
                         ],
                       @[
                         @1417395600000,
                         @0.5,
                         @2.5
                         ],
                       @[
                         @1417482000000,
                         @1.4,
                         @3.2
                         ],
                       @[
                         @1417568400000,
                         @4.5,
                         @10.2
                         ],
                       @[
                         @1417654800000,
                         @0.4,
                         @10
                         ],
                       @[
                         @1417741200000,
                         @2.5,
                         @3.7
                         ],
                       @[
                         @1417827600000,
                         @1.1,
                         @5
                         ],
                       @[
                         @1417914000000,
                         @2,
                         @4.4
                         ],
                       @[
                         @1418000400000,
                         @1.4,
                         @2.2
                         ],
                       @[
                         @1418086800000,
                         @0.7,
                         @4.6
                         ],
                       @[
                         @1418173200000,
                         @1.9,
                         @3.9
                         ],
                       @[
                         @1418259600000,
                         @-0.2,
                         @3.7
                         ],
                       @[
                         @1418346000000,
                         @-0.1,
                         @1.7
                         ],
                       @[
                         @1418432400000,
                         @-1,
                         @3.8
                         ],
                       @[
                         @1418518800000,
                         @0.5,
                         @5.4
                         ],
                       @[
                         @1418605200000,
                         @-1.7,
                         @5.6
                         ],
                       @[
                         @1418691600000,
                         @0.3,
                         @2.8
                         ],
                       @[
                         @1418778000000,
                         @-3,
                         @0.4
                         ],
                       @[
                         @1418864400000,
                         @-1.1,
                         @1.5
                         ],
                       @[
                         @1418950800000,
                         @0.8,
                         @3.4
                         ],
                       @[
                         @1419037200000,
                         @0.9,
                         @4.4
                         ],
                       @[
                         @1419123600000,
                         @0.3,
                         @3.9
                         ],
                       @[
                         @1419210000000,
                         @0.6,
                         @5.3
                         ],
                       @[
                         @1419296400000,
                         @1.5,
                         @4.4
                         ],
                       @[
                         @1419382800000,
                         [NSNull null],
                         [NSNull null]
                         ],
                       @[
                         @1419469200000,
                         [NSNull null],
                         [NSNull null]
                         ],
                       @[
                         @1419555600000,
                         @-4.2,
                         @-4.1
                         ],
                       @[
                         @1419642000000,
                         @-10.2,
                         @-5.2
                         ],
                       @[
                         @1419728400000,
                         @-8.4,
                         @-4.1
                         ],
                       @[
                         @1419814800000,
                         @-5.2,
                         @2.4
                         ],
                       @[
                         @1419901200000,
                         @1.3,
                         @2.5
                         ],
                       @[
                         @1419987600000,
                         @1.6,
                         @4.2
                         ]
                       , nil];
        
        options.chart = chart;
        options.title = title;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.tooltip = tooltip;
        options.legend = legend;
        options.series = [NSMutableArray arrayWithObjects:series, nil];
        
        return options;
    }
    //MARK: Columnrange
    else if ([type isEqualToString:@"Columnrange"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"columnrange";
        chart.inverted = @true;
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Temperature variation by month";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"Observed in Vik i Sogn, Norway";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = [NSMutableArray arrayWithObjects:@"Jan",
                            @"Feb",
                            @"Mar",
                            @"Apr",
                            @"May",
                            @"Jun",
                            @"Jul",
                            @"Aug",
                            @"Sep",
                            @"Oct",
                            @"Nov",
                            @"Dec", nil];
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Temperature ( °C )";
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.valueSuffix = @"°C";
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.columnrange = [[HIPlotOptionsColumnrange alloc]init];
        plotoptions.columnrange.dataLabels = [[HIPlotOptionsColumnrangeDataLabels alloc]init];
        plotoptions.columnrange.dataLabels.enabled = @true;
        plotoptions.columnrange.dataLabels.format = @"{point.y}°C";
        
        HILegend *legend = [[HILegend alloc]init];
        legend.enabled = false;
        
        HIColumnrange *series = [[HIColumnrange alloc]init];
        series.name = @"Temperatures";
        series.data = [NSMutableArray arrayWithObjects:@[
                                                         @-9.7,
                                                           @9.4
                                                           ],
                       @[
                         @-8.7,
                           @6.5
                           ],
                       @[
                         @-3.5,
                           @9.4
                           ],
                       @[
                         @-1.4,
                           @19.9
                           ],
                       @[
                         @0,
                         @22.6
                         ],
                       @[
                         @2.9,
                         @29.5
                         ],
                       @[
                         @9.2,
                         @30.7
                         ],
                       @[
                         @7.3,
                         @26.5
                         ],
                       @[
                         @4.4,
                         @18
                         ],
                       @[
                         @-3.1,
                           @11.4
                           ],
                       @[
                         @-5.2,
                           @10.4
                           ],
                       @[
                         @-13.5,
                           @9.8
                           ]
                       , nil];
        
        options.chart = chart;
        options.title = title;
        options.subtitle = subtitle;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.tooltip = tooltip;
        options.plotOptions = plotoptions;
        options.legend = legend;
        options.series = [NSMutableArray arrayWithObjects:series, nil];
        
        
        return options;
    }
    //MARK: Gauge
    else if ([type isEqualToString:@"Gauge Solid"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"solidgauge";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Speedometer";
        
        HIPane *pane = [[HIPane alloc]init];
        pane.center = [NSMutableArray arrayWithObjects:@"50%", @"85%", nil];
        pane.size = @"140%";
        pane.startAngle = @-90;
        pane.endAngle = @90;
        HIPaneBackground *background = [[HIPaneBackground alloc]init];
        background.backgroundColor = [[HIColor alloc]initWithHexValue:@"EEE"];
        background.innerRadius = @"60%";
        background.outerRadius = @"100%";
        background.shape = @"arc";
        pane.background = [NSMutableArray arrayWithObject:background];
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.enabled = @false;
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.solidgauge = [[HIPlotOptionsSolidgauge alloc]init];
        plotoptions.solidgauge.dataLabels = [[HIPlotOptionsSolidgaugeDataLabels alloc]init];
        plotoptions.solidgauge.dataLabels.y = @5;
        plotoptions.solidgauge.dataLabels.borderWidth = @0;
        plotoptions.solidgauge.dataLabels.useHTML = @true;
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.stops = [NSMutableArray arrayWithObjects:@[
                                                         @0.1,
                                                         @"#55BF3B"
                                                         ],
                       @[
                         @0.5,
                         @"#DDDF0D"
                         ],
                       @[
                         @0.9,
                         @"#DF5353"
                         ], nil];
        yaxis.lineWidth = @0;
        yaxis.tickAmount = @2;
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Speed";
        yaxis.labels = [[HIYAxisLabels alloc]init];
        yaxis.labels.y = @16;
        yaxis.min = @0;
        yaxis.max = @200;
        
        HICredits *credits = [[HICredits alloc]init];
        credits.enabled = @false;
        
        HISolidgauge *series = [[HISolidgauge alloc]init];
        series.name = @"Speed";
        series.data = [NSMutableArray arrayWithObject:@80];
        series.dataLabels = [[HISolidgaugeDataLabels alloc]init];
        series.dataLabels.format = @"<div style=\"text-align:center\"><span style=\"font-size:25px;color:black\">{y}</span><br/><span style=\"font-size:12px;color:silver\">km/h</span></div>";
        series.tooltip = [[HISolidgaugeTooltip alloc]init];
        series.tooltip.valueSuffix = @" km/h";
        
        options.chart = chart;
        options.title = title;
        options.pane = pane;
        options.tooltip = tooltip;
        options.plotOptions = plotoptions;
        options.yAxis = [NSMutableArray arrayWithObject:yaxis];
        options.credits = credits;
        options.series = [NSMutableArray arrayWithObject:series];
        
        return options;
    }
    //MARK: Combination
    else if ([type isEqualToString:@"Combination"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Combination chart";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = [NSMutableArray arrayWithObjects:@"Apples",
                            @"Oranges",
                            @"Pears",
                            @"Bananas",
                            @"Plums", nil];
        
        HILabelsItems *item = [[HILabelsItems alloc]init];
        item.html = @"Total fruit consumption";
        item.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"50px", @"left", @"18px", @"top", @"black", @"color", nil];
        
        HILabels *labels = [[HILabels alloc]init];
        labels.items = [NSMutableArray arrayWithObject:item];
        
        HIColumn *column1 = [[HIColumn alloc]init];
        column1.name = @"Jane";
        column1.data = [NSMutableArray arrayWithObjects:@3,
                        @2,
                        @1,
                        @3,
                        @4, nil];
        
        HIColumn *column2 = [[HIColumn alloc]init];
        column2.name = @"John";
        column2.data = [NSMutableArray arrayWithObjects:@2,
                        @3,
                        @5,
                        @7,
                        @6, nil];
        
        HIColumn *column3 = [[HIColumn alloc]init];
        column3.name = @"Joe";
        column3.data = [NSMutableArray arrayWithObjects:@4,
                        @3,
                        @3,
                        @9,
                        @0, nil];
        
        HISpline *spline = [[HISpline alloc]init];
        spline.name = @"Average";
        spline.data = [NSMutableArray arrayWithObjects:@3,
                       @2.67,
                       @3,
                       @6.33,
                       @3.33, nil];
        spline.marker = [[HISplineMarker alloc]init];
        spline.marker.lineWidth = @2;
        spline.marker.fillColor = [[HIColor alloc]initWithName:@"white"];
        spline.marker.lineColor = [[HIColor alloc]initWithHexValue:@"f7a35c"];
        
        HIPie *pie = [[HIPie alloc]init];
        pie.name = @"Total consumption";
        pie.data = [NSMutableArray arrayWithObjects:@{
                                                      @"name": @"Jane",
                                                      @"y": @13,
                                                      @"color": @"#7cb5ec"
                                                      },
                    @{
                      @"name": @"John",
                      @"y": @23,
                      @"color": @"#434348"
                      },
                    @{
                      @"name": @"Joe",
                      @"y": @19,
                      @"color": @"#90ed7d"
                      }, nil];
        pie.center = [NSMutableArray arrayWithObjects:@100, @80, nil];
        pie.size = @"100";
        pie.showInLegend = @false;
        pie.dataLabels = [[HIPieDataLabels alloc]init];
        pie.dataLabels.enabled = @false;
        
        options.title = title;
        options.xAxis = [NSMutableArray arrayWithObject:xaxis];
        options.labels = labels;
        options.series = [NSMutableArray arrayWithObjects:column1, column2, column3, spline, pie, nil];
        
        
        return options;
    }
    
    else if ([type isEqualToString:@"3D Column"]) {
        
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.renderTo = @"container";
        chart.type = @"column";
        chart.options3d = [[HIChartOptions3d alloc]init];
        chart.options3d.enabled = @true;
        chart.options3d.alpha = @15;
        chart.options3d.beta = @15;
        chart.options3d.depth = @50;
        chart.options3d.viewDistance = @25;
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Chart rotation demo";
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.column = [[HIPlotOptionsColumn alloc]init];
        plotoptions.column.depth = @25;
        
        HIColumn *column = [[HIColumn alloc]init];
        column.data = [NSMutableArray arrayWithObjects:@29.9,
                       @71.5,
                       @106.4,
                       @129.2,
                       @144,
                       @176,
                       @135.6,
                       @148.5,
                       @216.4,
                       @194.1,
                       @95.6,
                       @54.4, nil];
        
        options.chart = chart;
        options.title = title;
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects:column,  nil];
        
        
        return options;
    }
    
    else if ([type isEqualToString:@"3D Column Nullable"]) {
        
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"column";
        chart.options3d = [[HIChartOptions3d alloc]init];
        chart.options3d.enabled = @true;
        chart.options3d.alpha = @10;
        chart.options3d.beta = @25;
        chart.options3d.depth = @70;
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"3D chart with null values";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"Notice the difference between a 0 value and a null point";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = [NSMutableArray arrayWithObjects:@"Jan",
                            @"Feb",
                            @"Mar",
                            @"Apr",
                            @"May",
                            @"Jun",
                            @"Jul",
                            @"Aug",
                            @"Sep",
                            @"Oct", nil];
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"";
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.column = [[HIPlotOptionsColumn alloc]init];
        plotoptions.column.depth = @25;
        
        HIColumn *column = [[HIColumn alloc]init];
        column.name = @"Sales";
        column.data = [NSMutableArray arrayWithObjects:@2,
                       @3,
                       [NSNull null],
                       @4,
                       @0,
                       @5,
                       @1,
                       @4,
                       @6,
                       @3, nil];
        
        options.chart = chart;
        options.title = title;
        options.subtitle = subtitle;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects: column, nil];
        

        
        return options;
    }
    else if ([type isEqualToString:@"3D Column Grouped"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"column";
        chart.options3d = [[HIChartOptions3d alloc]init];
        chart.options3d.enabled = @true;
        chart.options3d.alpha = @15;
        chart.options3d.beta = @15;
        chart.options3d.depth = @40;
        chart.options3d.viewDistance = @25;
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Total fruit consumption, grouped by gender";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = [NSMutableArray arrayWithObjects:@"Apples",
                            @"Oranges",
                            @"Pears",
                            @"Grapes",
                            @"Bananas", nil];
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.allowDecimals = @false;
        yaxis.min = @0;
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Number of fruits";
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.headerFormat = @"<b>{point.key}</b><br>";
        tooltip.pointFormat = @"<span style=\"color:{series.color}\">●</span> {series.name}: {point.y} / {point.stackTotal}";
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.column = [[HIPlotOptionsColumn alloc]init];
        plotoptions.column.depth = @40;
        plotoptions.column.stacking = @"normal";
        
        HIColumn *column1 = [[HIColumn alloc]init];
        column1.name = @"John";
        column1.data = [NSMutableArray arrayWithObjects:@5,
                        @3,
                        @4,
                        @7,
                        @2, nil];
        column1.stack = @"male";
        
        HIColumn *column2 = [[HIColumn alloc]init];
        column2.name = @"Joe";
        column2.data = [NSMutableArray arrayWithObjects:@3,
                        @4,
                        @4,
                        @2,
                        @5, nil];
        column2.stack = @"male";
        
        HIColumn *column3 = [[HIColumn alloc]init];
        column3.name = @"Jane";
        column3.data = [NSMutableArray arrayWithObjects:@2,
                        @5,
                        @6,
                        @2,
                        @1, nil];
        column3.stack = @"female";
        
        HIColumn *column4 = [[HIColumn alloc]init];
        column4.name = @"Jane";
        column4.data = [NSMutableArray arrayWithObjects:@3,
                        @0,
                        @4,
                        @4,
                        @3, nil];
        column4.stack = @"female";
        
        options.chart = chart;
        options.title = title;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.tooltip = tooltip;
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects: column1, column2, column3, column4, nil];
        
        
        return options;
    }
    
    else if ([type isEqualToString:@"3D Pie"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"pie";
        chart.options3d = [[HIChartOptions3d alloc]init];
        chart.options3d.enabled = @true;
        chart.options3d.alpha = @45;
        chart.options3d.beta = @0;
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Browser market shares at a specific website, 2014";
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.pointFormat = @"{series.name}: <b>{point.percentage:.1f}%</b>";
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.pie = [[HIPlotOptionsPie alloc]init];
        plotoptions.pie.allowPointSelect = @true;
        plotoptions.pie.cursor = @"pointer";
        plotoptions.pie.depth = @35;
        plotoptions.pie.dataLabels = [[HIPlotOptionsPieDataLabels alloc]init];
        plotoptions.pie.dataLabels.enabled = @true;
        plotoptions.pie.dataLabels.format = @"{point.name}";
        
        HIPie *pie = [[HIPie alloc]init];
        pie.name = @"Browser share";
        pie.data = [NSMutableArray arrayWithObjects:@[
                                                      @"Firefox",
                                                      @45
                                                      ],
                    @[
                      @"IE",
                      @26.8
                      ],
                    @{
                      @"name": @"Chrome",
                      @"y": @12.8,
                      @"sliced": @true,
                      @"selected": @true
                      },
                    @[
                      @"Safari",
                      @8.5
                      ],
                    @[
                      @"Opera",
                      @6.2
                      ],
                    @[
                      @"Others",
                      @0.7
                      ], nil];
        
        options.chart = chart;
        options.title = title;
        options.tooltip = tooltip;
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects: pie, nil];

        
        
        return options;
    }
    
    else if ([type isEqualToString:@"3D Pie Donut"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"pie";
        chart.options3d = [[HIChartOptions3d alloc]init];
        chart.options3d.enabled = @true;
        chart.options3d.alpha = @45;
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Contents of Highsoft's weekly fruit delivery";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"3D donut in Highcharts";
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.pie = [[HIPlotOptionsPie alloc]init];
        plotoptions.pie.innerSize = @100;
        plotoptions.pie.depth = @45;
        
        HIPie *pie = [[HIPie alloc]init];
        pie.name = @"Delivered amount";
        pie.data = [NSMutableArray arrayWithObjects:@[
                                                      @"Bananas",
                                                      @8
                                                      ],
                    @[
                      @"Kiwi",
                      @3
                      ],
                    @[
                      @"Mixed nuts",
                      @1
                      ],
                    @[
                      @"Oranges",
                      @6
                      ],
                    @[
                      @"Apples",
                      @8
                      ],
                    @[
                      @"Pears",
                      @4
                      ],
                    @[
                      @"Clementines",
                      @4
                      ],
                    @[
                      @"Reddish (bag)",
                      @1
                      ],
                    @[
                      @"Grapes (bunch)",
                      @1
                      ], nil];
        
        options.chart = chart;
        options.title = title;
        options.subtitle = subtitle;
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects: pie, nil];
        
        
        return options;
    }
    
    else if ([type isEqualToString:@"3D Scatter"]) {
        
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.renderTo = @"container";
        chart.margin = [NSMutableArray arrayWithObjects:@100, nil];
        chart.type = @"scatter";
        chart.options3d = [[HIChartOptions3d alloc]init];
        chart.options3d.enabled = @true;
        chart.options3d.alpha = @10;
        chart.options3d.beta = @30;
        chart.options3d.depth = @250;
        chart.options3d.viewDistance = @5;
        chart.options3d.fitToPlot = @false;
        chart.options3d.frame = [[HIChartOptions3dFrame alloc]init];
        chart.options3d.frame.bottom = [[HIChartOptions3dFrameBottom alloc]init];
        chart.options3d.frame.bottom.size = @1;
        chart.options3d.frame.bottom.color = [[HIColor alloc]initWithRGBA:0 green:0 blue:0 alpha:0.02];
        chart.options3d.frame.back = [[HIChartOptions3dFrameBack alloc]init];
        chart.options3d.frame.back.size = @1;
        chart.options3d.frame.back.color = [[HIColor alloc]initWithRGBA:0 green:0 blue:0 alpha:0.04];
        chart.options3d.frame.side = [[HIChartOptions3dFrameSide alloc]init];
        chart.options3d.frame.side.size = @1;
        chart.options3d.frame.side.color = [[HIColor alloc]initWithRGBA:0 green:0 blue:0 alpha:0.06];
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"3D Scatter";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.min = @0;
        xaxis.max = @10;
        xaxis.gridLineWidth = @1;
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.min = @0;
        yaxis.max = @10;
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"";
        
        HILegend *legend = [[HILegend alloc]init];
        legend.enabled = @false;
        
        HIScatter *scatter = [[HIScatter alloc]init];
        scatter.name = @"Reading";
        scatter.data = [NSMutableArray arrayWithObjects:@[
                                                          @1,
                                                          @6,
                                                          @5
                                                          ],
                        @[
                          @8,
                          @7,
                          @9
                          ],
                        @[
                          @1,
                          @3,
                          @4
                          ],
                        @[
                          @4,
                          @6,
                          @8
                          ],
                        @[
                          @5,
                          @7,
                          @7
                          ],
                        @[
                          @6,
                          @9,
                          @6
                          ],
                        @[
                          @7,
                          @0,
                          @5
                          ],
                        @[
                          @2,
                          @3,
                          @3
                          ],
                        @[
                          @3,
                          @9,
                          @8
                          ],
                        @[
                          @3,
                          @6,
                          @5
                          ],
                        @[
                          @4,
                          @9,
                          @4
                          ],
                        @[
                          @2,
                          @3,
                          @3
                          ],
                        @[
                          @6,
                          @9,
                          @9
                          ],
                        @[
                          @0,
                          @7,
                          @0
                          ],
                        @[
                          @7,
                          @7,
                          @9
                          ],
                        @[
                          @7,
                          @2,
                          @9
                          ],
                        @[
                          @0,
                          @6,
                          @2
                          ],
                        @[
                          @4,
                          @6,
                          @7
                          ],
                        @[
                          @3,
                          @7,
                          @7
                          ],
                        @[
                          @0,
                          @1,
                          @7
                          ],
                        @[
                          @2,
                          @8,
                          @6
                          ],
                        @[
                          @2,
                          @3,
                          @7
                          ],
                        @[
                          @6,
                          @4,
                          @8
                          ],
                        @[
                          @3,
                          @5,
                          @9
                          ],
                        @[
                          @7,
                          @9,
                          @5
                          ],
                        @[
                          @3,
                          @1,
                          @7
                          ],
                        @[
                          @4,
                          @4,
                          @2
                          ],
                        @[
                          @3,
                          @6,
                          @2
                          ],
                        @[
                          @3,
                          @1,
                          @6
                          ],
                        @[
                          @6,
                          @8,
                          @5
                          ],
                        @[
                          @6,
                          @6,
                          @7
                          ],
                        @[
                          @4,
                          @1,
                          @1
                          ],
                        @[
                          @7,
                          @2,
                          @7
                          ],
                        @[
                          @7,
                          @7,
                          @0
                          ],
                        @[
                          @8,
                          @8,
                          @9
                          ],
                        @[
                          @9,
                          @4,
                          @1
                          ],
                        @[
                          @8,
                          @3,
                          @4
                          ],
                        @[
                          @9,
                          @8,
                          @9
                          ],
                        @[
                          @3,
                          @5,
                          @3
                          ],
                        @[
                          @0,
                          @2,
                          @4
                          ],
                        @[
                          @6,
                          @0,
                          @2
                          ],
                        @[
                          @2,
                          @1,
                          @3
                          ],
                        @[
                          @5,
                          @8,
                          @9
                          ],
                        @[
                          @2,
                          @1,
                          @1
                          ],
                        @[
                          @9,
                          @7,
                          @6
                          ],
                        @[
                          @3,
                          @0,
                          @2
                          ],
                        @[
                          @9,
                          @9,
                          @0
                          ],
                        @[
                          @3,
                          @4,
                          @8
                          ],
                        @[
                          @2,
                          @6,
                          @1
                          ],
                        @[
                          @8,
                          @9,
                          @2
                          ],
                        @[
                          @7,
                          @6,
                          @5
                          ],
                        @[
                          @6,
                          @3,
                          @1
                          ],
                        @[
                          @9,
                          @3,
                          @1
                          ],
                        @[
                          @8,
                          @9,
                          @3
                          ],
                        @[
                          @9,
                          @1,
                          @0
                          ],
                        @[
                          @3,
                          @8,
                          @7
                          ],
                        @[
                          @8,
                          @0,
                          @0
                          ],
                        @[
                          @4,
                          @9,
                          @7
                          ],
                        @[
                          @8,
                          @6,
                          @2
                          ],
                        @[
                          @4,
                          @3,
                          @0
                          ],
                        @[
                          @2,
                          @3,
                          @5
                          ],
                        @[
                          @9,
                          @1,
                          @4
                          ],
                        @[
                          @1,
                          @1,
                          @4
                          ],
                        @[
                          @6,
                          @0,
                          @2
                          ],
                        @[
                          @6,
                          @1,
                          @6
                          ],
                        @[
                          @3,
                          @8,
                          @8
                          ],
                        @[
                          @8,
                          @8,
                          @7
                          ],
                        @[
                          @5,
                          @5,
                          @0
                          ],
                        @[
                          @3,
                          @9,
                          @6
                          ],
                        @[
                          @5,
                          @4,
                          @3
                          ],
                        @[
                          @6,
                          @8,
                          @3
                          ],
                        @[
                          @0,
                          @1,
                          @5
                          ],
                        @[
                          @6,
                          @7,
                          @3
                          ],
                        @[
                          @8,
                          @3,
                          @2
                          ],
                        @[
                          @3,
                          @8,
                          @3
                          ],
                        @[
                          @2,
                          @1,
                          @6
                          ],
                        @[
                          @4,
                          @6,
                          @7
                          ],
                        @[
                          @8,
                          @9,
                          @9
                          ],
                        @[
                          @5,
                          @4,
                          @2
                          ],
                        @[
                          @6,
                          @1,
                          @3
                          ],
                        @[
                          @6,
                          @9,
                          @5
                          ],
                        @[
                          @4,
                          @8,
                          @2
                          ],
                        @[
                          @9,
                          @7,
                          @4
                          ],
                        @[
                          @5,
                          @4,
                          @2
                          ],
                        @[
                          @9,
                          @6,
                          @1
                          ],
                        @[
                          @2,
                          @7,
                          @3
                          ],
                        @[
                          @4,
                          @5,
                          @4
                          ],
                        @[
                          @6,
                          @8,
                          @1
                          ],
                        @[
                          @3,
                          @4,
                          @0
                          ],
                        @[
                          @2,
                          @2,
                          @6
                          ],
                        @[
                          @5,
                          @1,
                          @2
                          ],
                        @[
                          @9,
                          @9,
                          @7
                          ],
                        @[
                          @6,
                          @9,
                          @9
                          ],
                        @[
                          @8,
                          @4,
                          @3
                          ],
                        @[
                          @4,
                          @1,
                          @7
                          ],
                        @[
                          @6,
                          @2,
                          @5
                          ],
                        @[
                          @0,
                          @4,
                          @9
                          ],
                        @[
                          @3,
                          @5,
                          @9
                          ],
                        @[
                          @6,
                          @9,
                          @1
                          ],
                        @[
                          @1,
                          @9,
                          @2
                          ]
                        , nil];
        
        
        options.chart = chart;
        options.title = title;
        options.subtitle = subtitle;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.legend = legend;
        options.series = [NSMutableArray arrayWithObjects: scatter, nil];
        

        
        return options;
    }
    
    else if ([type isEqualToString:@"Area Inverted"]) {
        
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"area";
        chart.inverted = @true;
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Average fruit consumption during one week";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"absolute", @"position", @"0px", @"right", @"10px", @"bottom", nil];
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = [NSMutableArray arrayWithObjects:@"Monday",
                            @"Tuesday",
                            @"Wednesday",
                            @"Thursday",
                            @"Friday",
                            @"Saturday",
                            @"Sunday", nil];
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Number of units";
        yaxis.labels = [[HIYAxisLabels alloc]init];
        yaxis.min = @0;
        
        HILegend *legend = [[HILegend alloc]init];
        legend.layout = @"vertical";
        legend.align = @"right";
        legend.verticalAlign = @"top";
        legend.x = @-150;
        legend.y = @100;
        legend.floating = @true;
        legend.borderWidth = @1;
        legend.backgroundColor = [[HIColor alloc]initWithHexValue:@"FFFFFF"];
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.area = [[HIPlotOptionsArea alloc]init];
        plotoptions.area.fillOpacity = @0.5;
        
        HIArea *area1 = [[HIArea alloc]init];
        area1.name = @"John";
        area1.data = [NSMutableArray arrayWithObjects:@3,
                      @4,
                      @3,
                      @5,
                      @4,
                      @10,
                      @12, nil];
        
        HIArea *area2 = [[HIArea alloc]init];
        area2.name = @"Jane";
        area2.data = [NSMutableArray arrayWithObjects:@1,
                      @3,
                      @4,
                      @3,
                      @3,
                      @5,
                      @4, nil];
        
        options.chart = chart;
        options.title = title;
        options.subtitle = subtitle;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.legend = legend;
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects: area1, area2, nil];

        
        return options;
    }
    
    else if ([type isEqualToString:@"Area Missing"]) {
        
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"area";
        chart.spacingBottom = @30;
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Fruit consumption *";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"* Jane's banana consumption is unknown";
        subtitle.floating = @true;
        subtitle.align = @"right";
        subtitle.verticalAlign = @"bottom";
        subtitle.y = @15;
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = [NSMutableArray arrayWithObjects:@"Apples",
                            @"Pears",
                            @"Oranges",
                            @"Bananas",
                            @"Grapes",
                            @"Plums",
                            @"Strawberries",
                            @"Raspberries", nil];
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Y-Axis";
        yaxis.labels = [[HIYAxisLabels alloc]init];
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        
        HILegend *legend = [[HILegend alloc]init];
        legend.layout = @"vertical";
        legend.align = @"left";
        legend.verticalAlign = @"top";
        legend.x = @150;
        legend.y = @100;
        legend.floating = @true;
        legend.borderWidth = @1;
        legend.backgroundColor = [[HIColor alloc]initWithHexValue:@"FFFFFF"];
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.area = [[HIPlotOptionsArea alloc]init];
        plotoptions.area.fillOpacity = @0.5;
        
        HICredits *credits = [[HICredits alloc]init];
        credits.enabled = @false;
        
        HIArea *area1 = [[HIArea alloc]init];
        area1.name = @"John";
        area1.data = [NSMutableArray arrayWithObjects:@0,
                      @1,
                      @4,
                      @4,
                      @5,
                      @2,
                      @3,
                      @7, nil];
        
        HIArea *area2 = [[HIArea alloc]init];
        area2.name = @"Jane";
        area2.data = [NSMutableArray arrayWithObjects:@1,
                      @0,
                      @3,
                      [NSNull null],
                      @3,
                      @1,
                      @2,
                      @1, nil];
        
        options.chart = chart;
        options.title = title;
        options.subtitle = subtitle;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.tooltip = tooltip;
        options.legend = legend;
        options.credits = credits;
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects: area1, area2, nil];
        

        
        return options;
    }
    
    else if ([type isEqualToString:@"Area Negative"]) {
        
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"area";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Area chart with negative values";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = [NSMutableArray arrayWithObjects:@"Apples",
                            @"Oranges",
                            @"Pears",
                            @"Grapes",
                            @"Bananas", nil];
        
        HICredits *credits = [[HICredits alloc]init];
        credits.enabled = @false;
        
        HIArea *area1 = [[HIArea alloc]init];
        area1.name = @"John";
        area1.data = [NSMutableArray arrayWithObjects:@5,
                      @3,
                      @4,
                      @7,
                      @2, nil];
        
        HIArea *area2 = [[HIArea alloc]init];
        area2.name = @"Jane";
        area2.data = [NSMutableArray arrayWithObjects:@2,
                      @-2,
                      @-3,
                      @2,
                      @1, nil];
        
        HIArea *area3 = [[HIArea alloc]init];
        area3.name = @"Joe";
        area3.data = [NSMutableArray arrayWithObjects:@3,
                      @4,
                      @4,
                      @-2,
                      @5, nil];
        
        options.chart = chart;
        options.title = title;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.credits = credits;
        options.series = [NSMutableArray arrayWithObjects: area1, area2, area3, nil];

        
        return options;
    }
    
    else if ([type isEqualToString:@"Area Stacked"]) {
        
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"area";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Historic and Estimated Worldwide Population Growth by Region";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"Source: Wikipedia.org";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = [NSMutableArray arrayWithObjects:@"1750",
                            @"1800",
                            @"1850",
                            @"1900",
                            @"1950",
                            @"1999",
                            @"2050", nil];
        xaxis.tickmarkPlacement = @"on";
        xaxis.title = [[HIXAxisTitle alloc]init];
        xaxis.title.text = @"";
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Billions";
        yaxis.labels = [[HIYAxisLabels alloc]init];
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.shared = @true;
        tooltip.valueSuffix = @" millions";
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.area = [[HIPlotOptionsArea alloc]init];
        plotoptions.area.stacking = @"normal";
        plotoptions.area.lineColor = [[HIColor alloc]initWithHexValue:@"666666"];
        plotoptions.area.lineWidth = @1;
        plotoptions.area.marker = [[HIPlotOptionsAreaMarker alloc]init];
        plotoptions.area.marker.lineWidth = @1;
        plotoptions.area.marker.lineColor = [[HIColor alloc]initWithHexValue:@"666666"];
        
        HIArea *area1 = [[HIArea alloc]init];
        area1.name = @"Asia";
        area1.data = [NSMutableArray arrayWithObjects:@502,
                      @635,
                      @809,
                      @947,
                      @1402,
                      @3634,
                      @5268, nil];
        
        HIArea *area2 = [[HIArea alloc]init];
        area2.name = @"Africa";
        area2.data = [NSMutableArray arrayWithObjects:@106,
                      @107,
                      @111,
                      @133,
                      @221,
                      @767,
                      @1766, nil];
        
        HIArea *area3 = [[HIArea alloc]init];
        area3.name = @"Europe";
        area3.data = [NSMutableArray arrayWithObjects:@163,
                      @203,
                      @276,
                      @408,
                      @547,
                      @729,
                      @628, nil];
        
        HIArea *area4 = [[HIArea alloc]init];
        area4.name = @"America";
        area4.data = [NSMutableArray arrayWithObjects:@18,
                      @31,
                      @54,
                      @156,
                      @339,
                      @818,
                      @1201, nil];
        
        HIArea *area5 = [[HIArea alloc]init];
        area5.name = @"Oceania";
        area5.data = [NSMutableArray arrayWithObjects:@2,
                      @2,
                      @2,
                      @6,
                      @13,
                      @30,
                      @46, nil];
        
        
        options.chart = chart;
        options.title = title;
        options.subtitle = subtitle;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.tooltip = tooltip;
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects: area1, area2, area3, area4, area5, nil];
        

        
        return options;
    }
    
    else if ([type isEqualToString:@"Area Stacked Percent"]) {
        
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"area";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Historic and Estimated Worldwide Population Growth by Region";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"Source: Wikipedia.org";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = [NSMutableArray arrayWithObjects:@"1750",
                            @"1800",
                            @"1850",
                            @"1900",
                            @"1950",
                            @"1999",
                            @"2050", nil];
        xaxis.tickmarkPlacement = @"on";
        xaxis.title = [[HIXAxisTitle alloc]init];
        xaxis.title.text = @"";
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Percent";
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.shared = @true;
        tooltip.pointFormat = @"<span style=\"color:{series.color}\">{series.name}</span>: <b>{point.percentage:.1f}%</b> ({point.y:,.0f} millions)<br/>";
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.area = [[HIPlotOptionsArea alloc]init];
        plotoptions.area.stacking = @"percent";
        plotoptions.area.lineColor = [[HIColor alloc]initWithHexValue:@"ffffff"];
        plotoptions.area.lineWidth = @1;
        plotoptions.area.marker = [[HIPlotOptionsAreaMarker alloc]init];
        plotoptions.area.marker.lineWidth = @1;
        plotoptions.area.marker.lineColor = [[HIColor alloc]initWithHexValue:@"ffffff"];
        
        HIArea *area1 = [[HIArea alloc]init];
        area1.name = @"Asia";
        area1.data = [NSMutableArray arrayWithObjects:@502,
                      @635,
                      @809,
                      @947,
                      @1402,
                      @3634,
                      @5268, nil];
        
        HIArea *area2 = [[HIArea alloc]init];
        area2.name = @"Africa";
        area2.data = [NSMutableArray arrayWithObjects:@106,
                      @107,
                      @111,
                      @133,
                      @221,
                      @767,
                      @1766, nil];
        
        HIArea *area3 = [[HIArea alloc]init];
        area3.name = @"Europe";
        area3.data = [NSMutableArray arrayWithObjects:@163,
                      @203,
                      @276,
                      @408,
                      @547,
                      @729,
                      @628, nil];
        
        HIArea *area4 = [[HIArea alloc]init];
        area4.name = @"America";
        area4.data = [NSMutableArray arrayWithObjects:@18,
                      @31,
                      @54,
                      @156,
                      @339,
                      @818,
                      @1201, nil];
        
        HIArea *area5 = [[HIArea alloc]init];
        area5.name = @"Oceania";
        area5.data = [NSMutableArray arrayWithObjects:@2,
                      @2,
                      @2,
                      @6,
                      @13,
                      @30,
                      @46, nil];
        
        
        options.chart = chart;
        options.title = title;
        options.subtitle = subtitle;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.tooltip = tooltip;
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects: area1, area2, area3, area4, area5, nil];
                
        return options;
    }
    
    else if ([type isEqualToString:@"Area Range"]) {
        
        
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"arearange";
        chart.zoomType = @"x";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Temperature variation by day";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.type = @"datetime";
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.title = [[HIYAxisTitle alloc]init];
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.crosshairs = @true;
        tooltip.shared = @true;
        tooltip.valueSuffix = @"°C";
        
        HILegend *legend = [[HILegend alloc]init];
        legend.enabled = @false;
        
        HIArearange *series = [[HIArearange alloc]init];
        series.name = @"Temperatures";
        series.data = [NSMutableArray arrayWithObjects:@[
                                                         @1388538000000,
                                                         @1.1,
                                                         @4.7
                                                         ],
                       @[
                         @1388624400000,
                         @1.8,
                         @6.4
                         ],
                       @[
                         @1388710800000,
                         @1.7,
                         @6.9
                         ],
                       @[
                         @1388797200000,
                         @2.6,
                         @7.4
                         ],
                       @[
                         @1388883600000,
                         @3.3,
                         @9.3
                         ],
                       @[
                         @1388970000000,
                         @3,
                         @7.9
                         ],
                       @[
                         @1389056400000,
                         @3.9,
                         @6
                         ],
                       @[
                         @1389142800000,
                         @3.9,
                         @5.5
                         ],
                       @[
                         @1389229200000,
                         @-0.6,
                         @4.5
                         ],
                       @[
                         @1389315600000,
                         @-0.5,
                         @5.3
                         ],
                       @[
                         @1389402000000,
                         @-0.3,
                         @2.4
                         ],
                       @[
                         @1389488400000,
                         @-6.5,
                         @-0.4
                         ],
                       @[
                         @1389574800000,
                         @-7.3,
                         @-3.4
                         ],
                       @[
                         @1389661200000,
                         @-7.3,
                         @-2.3
                         ],
                       @[
                         @1389747600000,
                         @-7.9,
                         @-4.2
                         ],
                       @[
                         @1389834000000,
                         @-4.7,
                         @0.9
                         ],
                       @[
                         @1389920400000,
                         @-1.2,
                         @0.4
                         ],
                       @[
                         @1390006800000,
                         @-2.3,
                         @-0.1
                         ],
                       @[
                         @1390093200000,
                         @-2,
                         @0.3
                         ],
                       @[
                         @1390179600000,
                         @-5.1,
                         @-2
                         ],
                       @[
                         @1390266000000,
                         @-4.4,
                         @-0.5
                         ],
                       @[
                         @1390352400000,
                         @-6.4,
                         @-2.7
                         ],
                       @[
                         @1390438800000,
                         @-3.2,
                         @-0.5
                         ],
                       @[
                         @1390525200000,
                         @-5.5,
                         @-0.8
                         ],
                       @[
                         @1390611600000,
                         @-4.4,
                         @2.4
                         ],
                       @[
                         @1390698000000,
                         @-4,
                         @1.1
                         ],
                       @[
                         @1390784400000,
                         @-3.4,
                         @0.8
                         ],
                       @[
                         @1390870800000,
                         @-1.7,
                         @2.6
                         ],
                       @[
                         @1390957200000,
                         @-3.1,
                         @3.9
                         ],
                       @[
                         @1391043600000,
                         @-4.8,
                         @-1.9
                         ],
                       @[
                         @1391130000000,
                         @-7,
                         @-2.8
                         ],
                       @[
                         @1391216400000,
                         @-2.7,
                         @2.6
                         ],
                       @[
                         @1391302800000,
                         @-1.3,
                         @8.2
                         ],
                       @[
                         @1391389200000,
                         @1.5,
                         @7.7
                         ],
                       @[
                         @1391475600000,
                         @-0.5,
                         @5.3
                         ],
                       @[
                         @1391562000000,
                         @-0.2,
                         @5.2
                         ],
                       @[
                         @1391648400000,
                         @0.7,
                         @4.8
                         ],
                       @[
                         @1391734800000,
                         @0.9,
                         @5.7
                         ],
                       @[
                         @1391821200000,
                         @1.7,
                         @3.9
                         ],
                       @[
                         @1391907600000,
                         @2.2,
                         @8.8
                         ],
                       @[
                         @1391994000000,
                         @3,
                         @6.6
                         ],
                       @[
                         @1392080400000,
                         @1.4,
                         @5.4
                         ],
                       @[
                         @1392166800000,
                         @0.6,
                         @5.1
                         ],
                       @[
                         @1392253200000,
                         @0.1,
                         @7.8
                         ],
                       @[
                         @1392339600000,
                         @3.4,
                         @7.3
                         ],
                       @[
                         @1392426000000,
                         @2,
                         @5.9
                         ],
                       @[
                         @1392512400000,
                         @1.1,
                         @4.7
                         ],
                       @[
                         @1392598800000,
                         @1.1,
                         @4.4
                         ],
                       @[
                         @1392685200000,
                         @-2.8,
                         @2.6
                         ],
                       @[
                         @1392771600000,
                         @-5,
                         @0.1
                         ],
                       @[
                         @1392858000000,
                         @-5.7,
                         @0.2
                         ],
                       @[
                         @1392944400000,
                         @-0.7,
                         @3.9
                         ],
                       @[
                         @1393030800000,
                         @1.5,
                         @7.8
                         ],
                       @[
                         @1393117200000,
                         @5.5,
                         @8.8
                         ],
                       @[
                         @1393203600000,
                         @5.3,
                         @11.7
                         ],
                       @[
                         @1393290000000,
                         @1.7,
                         @11.1
                         ],
                       @[
                         @1393376400000,
                         @3.4,
                         @9.3
                         ],
                       @[
                         @1393462800000,
                         @3.4,
                         @7.3
                         ],
                       @[
                         @1393549200000,
                         @4.5,
                         @8
                         ],
                       @[
                         @1393635600000,
                         @2.1,
                         @8.9
                         ],
                       @[
                         @1393722000000,
                         @0.6,
                         @6.1
                         ],
                       @[
                         @1393808400000,
                         @1.2,
                         @9.4
                         ],
                       @[
                         @1393894800000,
                         @2.6,
                         @7.3
                         ],
                       @[
                         @1393981200000,
                         @3.9,
                         @9.5
                         ],
                       @[
                         @1394067600000,
                         @5.3,
                         @9.9
                         ],
                       @[
                         @1394154000000,
                         @2.7,
                         @7.1
                         ],
                       @[
                         @1394240400000,
                         @4,
                         @8.6
                         ],
                       @[
                         @1394326800000,
                         @6.1,
                         @10.7
                         ],
                       @[
                         @1394413200000,
                         @4.2,
                         @7.6
                         ],
                       @[
                         @1394499600000,
                         @2.5,
                         @9
                         ],
                       @[
                         @1394586000000,
                         @0.2,
                         @7
                         ],
                       @[
                         @1394672400000,
                         @-1.2,
                         @6.9
                         ],
                       @[
                         @1394758800000,
                         @0.4,
                         @6.7
                         ],
                       @[
                         @1394845200000,
                         @0.2,
                         @5.1
                         ],
                       @[
                         @1394931600000,
                         @-0.1,
                         @6
                         ],
                       @[
                         @1395018000000,
                         @1,
                         @5.6
                         ],
                       @[
                         @1395104400000,
                         @-1.1,
                         @6.3
                         ],
                       @[
                         @1395190800000,
                         @-1.9,
                         @0.3
                         ],
                       @[
                         @1395277200000,
                         @0.3,
                         @4.5
                         ],
                       @[
                         @1395363600000,
                         @2.4,
                         @6.7
                         ],
                       @[
                         @1395450000000,
                         @3.2,
                         @9.2
                         ],
                       @[
                         @1395536400000,
                         @1.7,
                         @3.6
                         ],
                       @[
                         @1395622800000,
                         @-0.3,
                         @7.9
                         ],
                       @[
                         @1395709200000,
                         @-2.4,
                         @8.6
                         ],
                       @[
                         @1395795600000,
                         @-1.7,
                         @10.3
                         ],
                       @[
                         @1395882000000,
                         @4.1,
                         @10
                         ],
                       @[
                         @1395968400000,
                         @4.4,
                         @14
                         ],
                       @[
                         @1396054800000,
                         @3.3,
                         @11
                         ],
                       @[
                         @1396141200000,
                         @3,
                         @12.5
                         ],
                       @[
                         @1396224000000,
                         @1.4,
                         @10.4
                         ],
                       @[
                         @1396310400000,
                         @-1.2,
                         @8.8
                         ],
                       @[
                         @1396396800000,
                         @2.2,
                         @7.6
                         ],
                       @[
                         @1396483200000,
                         @-1,
                         @10.1
                         ],
                       @[
                         @1396569600000,
                         @-1.8,
                         @9.5
                         ],
                       @[
                         @1396656000000,
                         @0.2,
                         @7.7
                         ],
                       @[
                         @1396742400000,
                         @3.7,
                         @6.4
                         ],
                       @[
                         @1396828800000,
                         @5.8,
                         @11.4
                         ],
                       @[
                         @1396915200000,
                         @5.4,
                         @8.7
                         ],
                       @[
                         @1397001600000,
                         @4.5,
                         @12.2
                         ],
                       @[
                         @1397088000000,
                         @3.9,
                         @8.4
                         ],
                       @[
                         @1397174400000,
                         @4.5,
                         @8
                         ],
                       @[
                         @1397260800000,
                         @6.6,
                         @8.4
                         ],
                       @[
                         @1397347200000,
                         @3.7,
                         @7.3
                         ],
                       @[
                         @1397433600000,
                         @3.6,
                         @6.7
                         ],
                       @[
                         @1397520000000,
                         @3.5,
                         @8.3
                         ],
                       @[
                         @1397606400000,
                         @1.5,
                         @10.2
                         ],
                       @[
                         @1397692800000,
                         @4.9,
                         @9.4
                         ],
                       @[
                         @1397779200000,
                         @3.5,
                         @12
                         ],
                       @[
                         @1397865600000,
                         @1.5,
                         @13.1
                         ],
                       @[
                         @1397952000000,
                         @1.7,
                         @15.6
                         ],
                       @[
                         @1398038400000,
                         @1.4,
                         @16
                         ],
                       @[
                         @1398124800000,
                         @3,
                         @18.4
                         ],
                       @[
                         @1398211200000,
                         @5.6,
                         @18.8
                         ],
                       @[
                         @1398297600000,
                         @5.7,
                         @17.2
                         ],
                       @[
                         @1398384000000,
                         @4.5,
                         @16.4
                         ],
                       @[
                         @1398470400000,
                         @3.1,
                         @17.6
                         ],
                       @[
                         @1398556800000,
                         @4.7,
                         @18.9
                         ],
                       @[
                         @1398643200000,
                         @4.9,
                         @16.6
                         ],
                       @[
                         @1398729600000,
                         @6.8,
                         @15.6
                         ],
                       @[
                         @1398816000000,
                         @2.8,
                         @9.2
                         ],
                       @[
                         @1398902400000,
                         @-2.7,
                         @10.5
                         ],
                       @[
                         @1398988800000,
                         @-1.9,
                         @10.9
                         ],
                       @[
                         @1399075200000,
                         @4.5,
                         @8.5
                         ],
                       @[
                         @1399161600000,
                         @-0.6,
                         @10.4
                         ],
                       @[
                         @1399248000000,
                         @4,
                         @9.7
                         ],
                       @[
                         @1399334400000,
                         @5.5,
                         @9.5
                         ],
                       @[
                         @1399420800000,
                         @6.5,
                         @13.2
                         ],
                       @[
                         @1399507200000,
                         @3.2,
                         @14.5
                         ],
                       @[
                         @1399593600000,
                         @2.1,
                         @13.5
                         ],
                       @[
                         @1399680000000,
                         @6.5,
                         @15.6
                         ],
                       @[
                         @1399766400000,
                         @5.7,
                         @16.2
                         ],
                       @[
                         @1399852800000,
                         @6.3,
                         @15.3
                         ],
                       @[
                         @1399939200000,
                         @5.3,
                         @15.3
                         ],
                       @[
                         @1400025600000,
                         @6,
                         @14.1
                         ],
                       @[
                         @1400112000000,
                         @1.9,
                         @7.7
                         ],
                       @[
                         @1400198400000,
                         @7.2,
                         @9.8
                         ],
                       @[
                         @1400284800000,
                         @8.9,
                         @15.2
                         ],
                       @[
                         @1400371200000,
                         @9.1,
                         @20.5
                         ],
                       @[
                         @1400457600000,
                         @8.4,
                         @17.9
                         ],
                       @[
                         @1400544000000,
                         @6.8,
                         @21.5
                         ],
                       @[
                         @1400630400000,
                         @7.6,
                         @14.1
                         ],
                       @[
                         @1400716800000,
                         @11.1,
                         @16.5
                         ],
                       @[
                         @1400803200000,
                         @9.3,
                         @14.3
                         ],
                       @[
                         @1400889600000,
                         @10.4,
                         @19.3
                         ],
                       @[
                         @1400976000000,
                         @5.7,
                         @19.4
                         ],
                       @[
                         @1401062400000,
                         @7.9,
                         @17.9
                         ],
                       @[
                         @1401148800000,
                         @5,
                         @22.5
                         ],
                       @[
                         @1401235200000,
                         @7.6,
                         @22
                         ],
                       @[
                         @1401321600000,
                         @5.7,
                         @21.9
                         ],
                       @[
                         @1401408000000,
                         @4.6,
                         @20
                         ],
                       @[
                         @1401494400000,
                         @7,
                         @22
                         ],
                       @[
                         @1401580800000,
                         @5.1,
                         @20.6
                         ],
                       @[
                         @1401667200000,
                         @6.6,
                         @24.6
                         ],
                       @[
                         @1401753600000,
                         @9.7,
                         @22.2
                         ],
                       @[
                         @1401840000000,
                         @9.6,
                         @21.6
                         ],
                       @[
                         @1401926400000,
                         @13,
                         @20
                         ],
                       @[
                         @1402012800000,
                         @12.9,
                         @18.2
                         ],
                       @[
                         @1402099200000,
                         @8.5,
                         @23.2
                         ],
                       @[
                         @1402185600000,
                         @9.2,
                         @21.4
                         ],
                       @[
                         @1402272000000,
                         @10.5,
                         @22
                         ],
                       @[
                         @1402358400000,
                         @7.3,
                         @23.4
                         ],
                       @[
                         @1402444800000,
                         @12.1,
                         @18.2
                         ],
                       @[
                         @1402531200000,
                         @11.1,
                         @13.3
                         ],
                       @[
                         @1402617600000,
                         @10,
                         @20.7
                         ],
                       @[
                         @1402704000000,
                         @5.8,
                         @23.4
                         ],
                       @[
                         @1402790400000,
                         @7.4,
                         @20.1
                         ],
                       @[
                         @1402876800000,
                         @10.3,
                         @21.9
                         ],
                       @[
                         @1402963200000,
                         @7.8,
                         @16.8
                         ],
                       @[
                         @1403049600000,
                         @11.6,
                         @19.7
                         ],
                       @[
                         @1403136000000,
                         @9.8,
                         @16
                         ],
                       @[
                         @1403222400000,
                         @10.7,
                         @14.4
                         ],
                       @[
                         @1403308800000,
                         @9,
                         @15.5
                         ],
                       @[
                         @1403395200000,
                         @5.1,
                         @13.3
                         ],
                       @[
                         @1403481600000,
                         @10,
                         @19.3
                         ],
                       @[
                         @1403568000000,
                         @5.2,
                         @22.1
                         ],
                       @[
                         @1403654400000,
                         @6.3,
                         @21.3
                         ],
                       @[
                         @1403740800000,
                         @5.5,
                         @21.1
                         ],
                       @[
                         @1403827200000,
                         @8.4,
                         @19.7
                         ],
                       @[
                         @1403913600000,
                         @7.1,
                         @23.3
                         ],
                       @[
                         @1404000000000,
                         @6.1,
                         @20.8
                         ],
                       @[
                         @1404086400000,
                         @8.4,
                         @22.6
                         ],
                       @[
                         @1404172800000,
                         @7.6,
                         @23.3
                         ],
                       @[
                         @1404259200000,
                         @8.1,
                         @21.5
                         ],
                       @[
                         @1404345600000,
                         @11.2,
                         @18.1
                         ],
                       @[
                         @1404432000000,
                         @6.4,
                         @14.9
                         ],
                       @[
                         @1404518400000,
                         @12.7,
                         @23.1
                         ],
                       @[
                         @1404604800000,
                         @15.3,
                         @21.7
                         ],
                       @[
                         @1404691200000,
                         @15.1,
                         @19.4
                         ],
                       @[
                         @1404777600000,
                         @10.8,
                         @22.8
                         ],
                       @[
                         @1404864000000,
                         @15.8,
                         @29.7
                         ],
                       @[
                         @1404950400000,
                         @15.8,
                         @29
                         ],
                       @[
                         @1405036800000,
                         @15.2,
                         @30.5
                         ],
                       @[
                         @1405123200000,
                         @14.9,
                         @28.1
                         ],
                       @[
                         @1405209600000,
                         @13.1,
                         @27.4
                         ],
                       @[
                         @1405296000000,
                         @15.5,
                         @23.5
                         ],
                       @[
                         @1405382400000,
                         @14.7,
                         @20.1
                         ],
                       @[
                         @1405468800000,
                         @14.4,
                         @16.8
                         ],
                       @[
                         @1405555200000,
                         @12.6,
                         @18.5
                         ],
                       @[
                         @1405641600000,
                         @13.9,
                         @24.4
                         ],
                       @[
                         @1405728000000,
                         @11.3,
                         @26.9
                         ],
                       @[
                         @1405814400000,
                         @13.3,
                         @27.4
                         ],
                       @[
                         @1405900800000,
                         @13.3,
                         @29.7
                         ],
                       @[
                         @1405987200000,
                         @14,
                         @28.8
                         ],
                       @[
                         @1406073600000,
                         @14.1,
                         @29.8
                         ],
                       @[
                         @1406160000000,
                         @15.4,
                         @31.1
                         ],
                       @[
                         @1406246400000,
                         @17,
                         @26.5
                         ],
                       @[
                         @1406332800000,
                         @16.6,
                         @27.1
                         ],
                       @[
                         @1406419200000,
                         @13.3,
                         @25.6
                         ],
                       @[
                         @1406505600000,
                         @16.8,
                         @21.9
                         ],
                       @[
                         @1406592000000,
                         @16,
                         @22.8
                         ],
                       @[
                         @1406678400000,
                         @14.4,
                         @19
                         ],
                       @[
                         @1406764800000,
                         @12.8,
                         @18.1
                         ],
                       @[
                         @1406851200000,
                         @12.6,
                         @18
                         ],
                       @[
                         @1406937600000,
                         @11.4,
                         @19.7
                         ],
                       @[
                         @1407024000000,
                         @13.9,
                         @18.9
                         ],
                       @[
                         @1407110400000,
                         @12.5,
                         @19.9
                         ],
                       @[
                         @1407196800000,
                         @12.3,
                         @23.4
                         ],
                       @[
                         @1407283200000,
                         @12.8,
                         @23.3
                         ],
                       @[
                         @1407369600000,
                         @11,
                         @20.4
                         ],
                       @[
                         @1407456000000,
                         @14.7,
                         @22.4
                         ],
                       @[
                         @1407542400000,
                         @11.1,
                         @23.6
                         ],
                       @[
                         @1407628800000,
                         @13.5,
                         @20.7
                         ],
                       @[
                         @1407715200000,
                         @13.7,
                         @23.1
                         ],
                       @[
                         @1407801600000,
                         @12.8,
                         @19.6
                         ],
                       @[
                         @1407888000000,
                         @12.1,
                         @18.7
                         ],
                       @[
                         @1407974400000,
                         @8.8,
                         @22.4
                         ],
                       @[
                         @1408060800000,
                         @8.2,
                         @20.1
                         ],
                       @[
                         @1408147200000,
                         @10.9,
                         @16.3
                         ],
                       @[
                         @1408233600000,
                         @10.7,
                         @16.1
                         ],
                       @[
                         @1408320000000,
                         @11,
                         @18.9
                         ],
                       @[
                         @1408406400000,
                         @12.1,
                         @14.7
                         ],
                       @[
                         @1408492800000,
                         @11.2,
                         @14.4
                         ],
                       @[
                         @1408579200000,
                         @9.9,
                         @16.6
                         ],
                       @[
                         @1408665600000,
                         @6.9,
                         @15.7
                         ],
                       @[
                         @1408752000000,
                         @8.9,
                         @15.3
                         ],
                       @[
                         @1408838400000,
                         @8.2,
                         @17.6
                         ],
                       @[
                         @1408924800000,
                         @8.4,
                         @19.5
                         ],
                       @[
                         @1409011200000,
                         @6.6,
                         @19.9
                         ],
                       @[
                         @1409097600000,
                         @6.4,
                         @19.7
                         ],
                       @[
                         @1409184000000,
                         [NSNull null],
                         [NSNull null]
                         ],
                       @[
                         @1409270400000,
                         [NSNull null],
                         [NSNull null]
                         ],
                       @[
                         @1409356800000,
                         [NSNull null],
                         [NSNull null]
                         ],
                       @[
                         @1409443200000,
                         [NSNull null],
                         [NSNull null]
                         ],
                       @[
                         @1409529600000,
                         [NSNull null],
                         [NSNull null]
                         ],
                       @[
                         @1409616000000,
                         [NSNull null],
                         [NSNull null]
                         ],
                       @[
                         @1409702400000,
                         [NSNull null],
                         [NSNull null]
                         ],
                       @[
                         @1409788800000,
                         [NSNull null],
                         [NSNull null]
                         ],
                       @[
                         @1409875200000,
                         [NSNull null],
                         [NSNull null]
                         ],
                       @[
                         @1409961600000,
                         @13.4,
                         @13.4
                         ],
                       @[
                         @1410048000000,
                         @13.2,
                         @17.1
                         ],
                       @[
                         @1410134400000,
                         @11.9,
                         @18.9
                         ],
                       @[
                         @1410220800000,
                         @9,
                         @15.9
                         ],
                       @[
                         @1410307200000,
                         @5.9,
                         @17.5
                         ],
                       @[
                         @1410393600000,
                         @6.8,
                         @16.2
                         ],
                       @[
                         @1410480000000,
                         @10.3,
                         @19.9
                         ],
                       @[
                         @1410566400000,
                         @8.7,
                         @17.9
                         ],
                       @[
                         @1410652800000,
                         @7.9,
                         @19.1
                         ],
                       @[
                         @1410739200000,
                         @6,
                         @20.1
                         ],
                       @[
                         @1410825600000,
                         @4.7,
                         @19.9
                         ],
                       @[
                         @1410912000000,
                         @4,
                         @18.8
                         ],
                       @[
                         @1410998400000,
                         @4.5,
                         @17.9
                         ],
                       @[
                         @1411084800000,
                         @3.1,
                         @16.1
                         ],
                       @[
                         @1411171200000,
                         @8.5,
                         @12.2
                         ],
                       @[
                         @1411257600000,
                         @7.6,
                         @13.8
                         ],
                       @[
                         @1411344000000,
                         @1.3,
                         @12.6
                         ],
                       @[
                         @1411430400000,
                         @2,
                         @10.9
                         ],
                       @[
                         @1411516800000,
                         @5,
                         @10.8
                         ],
                       @[
                         @1411603200000,
                         @6.4,
                         @10.1
                         ],
                       @[
                         @1411689600000,
                         @8.2,
                         @13.3
                         ],
                       @[
                         @1411776000000,
                         @8.9,
                         @11.8
                         ],
                       @[
                         @1411862400000,
                         @9.9,
                         @15.9
                         ],
                       @[
                         @1411948800000,
                         @5.2,
                         @12.5
                         ],
                       @[
                         @1412035200000,
                         @4.6,
                         @11.7
                         ],
                       @[
                         @1412121600000,
                         @8.8,
                         @12.1
                         ],
                       @[
                         @1412208000000,
                         @3.9,
                         @12.3
                         ],
                       @[
                         @1412294400000,
                         @2.7,
                         @18.1
                         ],
                       @[
                         @1412380800000,
                         @10.2,
                         @18.2
                         ],
                       @[
                         @1412467200000,
                         @9.6,
                         @17.9
                         ],
                       @[
                         @1412553600000,
                         @9.3,
                         @17.5
                         ],
                       @[
                         @1412640000000,
                         @8.1,
                         @12.7
                         ],
                       @[
                         @1412726400000,
                         @6.7,
                         @11.2
                         ],
                       @[
                         @1412812800000,
                         @4,
                         @10
                         ],
                       @[
                         @1412899200000,
                         @6.3,
                         @10.2
                         ],
                       @[
                         @1412985600000,
                         @6.6,
                         @10.7
                         ],
                       @[
                         @1413072000000,
                         @6.6,
                         @10.3
                         ],
                       @[
                         @1413158400000,
                         @5.9,
                         @10.4
                         ],
                       @[
                         @1413244800000,
                         @1.2,
                         @10.6
                         ],
                       @[
                         @1413331200000,
                         @-0.1,
                         @9.2
                         ],
                       @[
                         @1413417600000,
                         @-1,
                         @9.4
                         ],
                       @[
                         @1413504000000,
                         @-1.7,
                         @8.3
                         ],
                       @[
                         @1413590400000,
                         @-0.6,
                         @7.5
                         ],
                       @[
                         @1413676800000,
                         @6.9,
                         @10.1
                         ],
                       @[
                         @1413763200000,
                         @7.7,
                         @10.5
                         ],
                       @[
                         @1413849600000,
                         @3.8,
                         @9.7
                         ],
                       @[
                         @1413936000000,
                         @6.2,
                         @8.6
                         ],
                       @[
                         @1414022400000,
                         @6.5,
                         @9.2
                         ],
                       @[
                         @1414108800000,
                         @7.9,
                         @10.7
                         ],
                       @[
                         @1414195200000,
                         @6.1,
                         @10.9
                         ],
                       @[
                         @1414281600000,
                         @10.3,
                         @13.1
                         ],
                       @[
                         @1414371600000,
                         @7.1,
                         @13.3
                         ],
                       @[
                         @1414458000000,
                         @0,
                         @10.1
                         ],
                       @[
                         @1414544400000,
                         @0,
                         @5.7
                         ],
                       @[
                         @1414630800000,
                         @3.9,
                         @4.6
                         ],
                       @[
                         @1414717200000,
                         @4,
                         @4.8
                         ],
                       @[
                         @1414803600000,
                         @4.8,
                         @11.2
                         ],
                       @[
                         @1414890000000,
                         @7,
                         @8.5
                         ],
                       @[
                         @1414976400000,
                         @3,
                         @9.8
                         ],
                       @[
                         @1415062800000,
                         @2.8,
                         @5.9
                         ],
                       @[
                         @1415149200000,
                         @0.8,
                         @4.8
                         ],
                       @[
                         @1415235600000,
                         @-0.2,
                         @2.9
                         ],
                       @[
                         @1415322000000,
                         @-0.6,
                         @5.5
                         ],
                       @[
                         @1415408400000,
                         @6.6,
                         @10.3
                         ],
                       @[
                         @1415494800000,
                         @5.4,
                         @7.3
                         ],
                       @[
                         @1415581200000,
                         @3,
                         @8.4
                         ],
                       @[
                         @1415667600000,
                         @0.4,
                         @3.2
                         ],
                       @[
                         @1415754000000,
                         @-0.1,
                         @6.8
                         ],
                       @[
                         @1415840400000,
                         @4.8,
                         @8.8
                         ],
                       @[
                         @1415926800000,
                         @4.6,
                         @8.5
                         ],
                       @[
                         @1416013200000,
                         @4.3,
                         @7.7
                         ],
                       @[
                         @1416099600000,
                         @3.3,
                         @7.5
                         ],
                       @[
                         @1416186000000,
                         @-0.4,
                         @3.2
                         ],
                       @[
                         @1416272400000,
                         @1.9,
                         @4.7
                         ],
                       @[
                         @1416358800000,
                         @-0.2,
                         @3.7
                         ],
                       @[
                         @1416445200000,
                         @-1.3,
                         @2.1
                         ],
                       @[
                         @1416531600000,
                         @-1.8,
                         @0.9
                         ],
                       @[
                         @1416618000000,
                         @-2.7,
                         @1.3
                         ],
                       @[
                         @1416704400000,
                         @0.3,
                         @2.5
                         ],
                       @[
                         @1416790800000,
                         @3.4,
                         @6.5
                         ],
                       @[
                         @1416877200000,
                         @0.8,
                         @6.1
                         ],
                       @[
                         @1416963600000,
                         @-1,
                         @1.3
                         ],
                       @[
                         @1417050000000,
                         @0.4,
                         @3.1
                         ],
                       @[
                         @1417136400000,
                         @-1.2,
                         @1.9
                         ],
                       @[
                         @1417222800000,
                         @-1.1,
                         @2.8
                         ],
                       @[
                         @1417309200000,
                         @-0.7,
                         @1.8
                         ],
                       @[
                         @1417395600000,
                         @0.5,
                         @2.5
                         ],
                       @[
                         @1417482000000,
                         @1.4,
                         @3.2
                         ],
                       @[
                         @1417568400000,
                         @4.5,
                         @10.2
                         ],
                       @[
                         @1417654800000,
                         @0.4,
                         @10
                         ],
                       @[
                         @1417741200000,
                         @2.5,
                         @3.7
                         ],
                       @[
                         @1417827600000,
                         @1.1,
                         @5
                         ],
                       @[
                         @1417914000000,
                         @2,
                         @4.4
                         ],
                       @[
                         @1418000400000,
                         @1.4,
                         @2.2
                         ],
                       @[
                         @1418086800000,
                         @0.7,
                         @4.6
                         ],
                       @[
                         @1418173200000,
                         @1.9,
                         @3.9
                         ],
                       @[
                         @1418259600000,
                         @-0.2,
                         @3.7
                         ],
                       @[
                         @1418346000000,
                         @-0.1,
                         @1.7
                         ],
                       @[
                         @1418432400000,
                         @-1,
                         @3.8
                         ],
                       @[
                         @1418518800000,
                         @0.5,
                         @5.4
                         ],
                       @[
                         @1418605200000,
                         @-1.7,
                         @5.6
                         ],
                       @[
                         @1418691600000,
                         @0.3,
                         @2.8
                         ],
                       @[
                         @1418778000000,
                         @-3,
                         @0.4
                         ],
                       @[
                         @1418864400000,
                         @-1.1,
                         @1.5
                         ],
                       @[
                         @1418950800000,
                         @0.8,
                         @3.4
                         ],
                       @[
                         @1419037200000,
                         @0.9,
                         @4.4
                         ],
                       @[
                         @1419123600000,
                         @0.3,
                         @3.9
                         ],
                       @[
                         @1419210000000,
                         @0.6,
                         @5.3
                         ],
                       @[
                         @1419296400000,
                         @1.5,
                         @4.4
                         ],
                       @[
                         @1419382800000,
                         [NSNull null],
                         [NSNull null]
                         ],
                       @[
                         @1419469200000,
                         [NSNull null],
                         [NSNull null]
                         ],
                       @[
                         @1419555600000,
                         @-4.2,
                         @-4.1
                         ],
                       @[
                         @1419642000000,
                         @-10.2,
                         @-5.2
                         ],
                       @[
                         @1419728400000,
                         @-8.4,
                         @-4.1
                         ],
                       @[
                         @1419814800000,
                         @-5.2,
                         @2.4
                         ],
                       @[
                         @1419901200000,
                         @1.3,
                         @2.5
                         ],
                       @[
                         @1419987600000,
                         @1.6,
                         @4.2
                         ]
                       , nil];
        
        options.chart = chart;
        options.title = title;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.tooltip = tooltip;
        options.legend = legend;
        options.series = [NSMutableArray arrayWithObjects:series, nil];
        

        
        return options;
    }
    
    else if ([type isEqualToString:@"Area Range Line"]) {
        
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"arearange";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"July temperatures";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.type = @"daytime";
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"";
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.crosshairs = @true;
        tooltip.shared = @true;
        tooltip.valueSuffix = @"°C";
        
        HILegend *legend = [[HILegend alloc]init];
        
        HILine *line = [[HILine alloc]init];
        line.name = @"Temperature";
        line.zIndex = @1;
        line.marker = [[HILineMarker alloc]init];
        line.marker.fillColor = [[HIColor alloc]initWithName:@"white"];
        line.marker.lineWidth = @2;
        line.marker.lineColor = [[HIColor alloc]initWithHexValue:@"7cb5ec"];
        line.data = [NSMutableArray arrayWithObjects:@[@1246406400000, @21.5],
                     @[@1246492800000, @22.1],
                     @[@1246579200000, @23],
                     @[@1246665600000, @23.8],
                     @[@1246752000000, @21.4],
                     @[@1246838400000, @21.3],
                     @[@1246924800000, @18.3],
                     @[@1247011200000, @15.4],
                     @[@1247097600000, @16.4],
                     @[@1247184000000, @17.7],
                     @[@1247270400000, @17.5],
                     @[@1247356800000, @17.6],
                     @[@1247443200000, @17.7],
                     @[@1247529600000, @16.8],
                     @[@1247616000000, @17.7],
                     @[@1247702400000, @16.3],
                     @[@1247788800000, @17.8],
                     @[@1247875200000, @18.1],
                     @[@1247961600000, @17.2],
                     @[@1248048000000, @14.4],
                     @[@1248134400000, @13.7],
                     @[@1248220800000, @15.7],
                     @[@1248307200000, @14.6],
                     @[@1248393600000, @15.3],
                     @[@1248480000000, @15.3],
                     @[@1248566400000, @15.8],
                     @[@1248652800000, @15.2],
                     @[@1248739200000, @14.8],
                     @[@1248825600000, @14.4],
                     @[@1248912000000, @15],
                     @[@1248998400000, @13.6], nil];
        
        HIArearange *arearange = [[HIArearange alloc]init];
        arearange.name = @"Range";
        arearange.lineWidth = @0;
        arearange.linkedTo = @":previous";
        arearange.color = [[HIColor alloc]initWithHexValue:@"7cb5ec"];
        arearange.fillOpacity = @0.3;
        arearange.zIndex = @0;
        arearange.data = [NSMutableArray arrayWithObjects:@[@1246406400000, @14.3, @27.7],
                          @[@1246492800000, @14.5, @27.8],
                          @[@1246579200000, @15.5, @29.6],
                          @[@1246665600000, @16.7, @30.7],
                          @[@1246752000000, @16.5, @25.0],
                          @[@1246838400000, @17.8, @25.7],
                          @[@1246924800000, @13.5, @24.8],
                          @[@1247011200000, @10.5, @21.4],
                          @[@1247097600000, @9.2, @23.8],
                          @[@1247184000000, @11.6, @21.8],
                          @[@1247270400000, @10.7, @23.7],
                          @[@1247356800000, @11.0, @23.3],
                          @[@1247443200000, @11.6, @23.7],
                          @[@1247529600000, @11.8, @20.7],
                          @[@1247616000000, @12.6, @22.4],
                          @[@1247702400000, @13.6, @19.6],
                          @[@1247788800000, @11.4, @22.6],
                          @[@1247875200000, @13.2, @25.0],
                          @[@1247961600000, @14.2, @21.6],
                          @[@1248048000000, @13.1, @17.1],
                          @[@1248134400000, @12.2, @15.5],
                          @[@1248220800000, @12.0, @20.8],
                          @[@1248307200000, @12.0, @17.1],
                          @[@1248393600000, @12.7, @18.3],
                          @[@1248480000000, @12.4, @19.4],
                          @[@1248566400000, @12.6, @19.9],
                          @[@1248652800000, @11.9, @20.2],
                          @[@1248739200000, @11.0, @19.3],
                          @[@1248825600000, @10.8, @17.8],
                          @[@1248912000000, @11.8, @18.5],
                          @[@1248998400000, @10.8, @16.1], nil];
        
        options.chart = chart;
        options.title = title;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.tooltip = tooltip;
        options.legend = legend;
        options.series = [NSMutableArray arrayWithObjects: arearange, line, nil];
        

        
        return options;
    }
    
    else if ([type isEqualToString:@"Area Spline"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"areaspline";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Average fruit consumption during one week";
        
        HILegend *legend = [[HILegend alloc]init];
        legend.layout = @"vertical";
        legend.align = @"left";
        legend.verticalAlign = @"top";
        legend.x = @150;
        legend.y = @100;
        legend.floating = @true;
        legend.borderWidth = @1;
        legend.backgroundColor = [[HIColor alloc]initWithHexValue:@"FFFFFF"];
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = [NSMutableArray arrayWithObjects:@"Monday",
                            @"Tuesday",
                            @"Wednesday",
                            @"Thursday",
                            @"Friday",
                            @"Saturday",
                            @"Sunday", nil];
        HIXAxisPlotBands *plotband = [[HIXAxisPlotBands alloc]init];
        plotband.from = @4.5;
        plotband.to = @6.5;
        plotband.color = [[HIColor alloc]initWithRGBA:68 green:170 blue:213 alpha:.2];
        xaxis.plotBands = [NSMutableArray arrayWithObject:plotband];
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Fruit unit";
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.shared = @true;
        tooltip.valueSuffix = @" units";
        
        HICredits *credits = [[HICredits alloc]init];
        credits.enabled = @false;
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.areaspline = [[HIPlotOptionsAreaspline alloc]init];
        plotoptions.areaspline.fillOpacity = @0.5;
        
        HIAreaspline *areaspline1 = [[HIAreaspline alloc]init];
        areaspline1.name = @"John";
        areaspline1.data = [NSMutableArray arrayWithObjects:@3,
                            @4,
                            @3,
                            @5,
                            @4,
                            @10,
                            @12, nil];
        
        HIAreaspline *areaspline2 = [[HIAreaspline alloc]init];
        areaspline2.name = @"Jane";
        areaspline2.data = [NSMutableArray arrayWithObjects:@1,
                            @3,
                            @4,
                            @3,
                            @3,
                            @5,
                            @4, nil];
        
        options.chart = chart;
        options.title = title;
        options.legend = legend;
        options.xAxis = [NSMutableArray arrayWithObject:xaxis];
        options.yAxis = [NSMutableArray arrayWithObject:yaxis];
        options.tooltip = tooltip;
        options.credits = credits;
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects:areaspline1, areaspline2, nil];
        return options;
    }
    
    else if ([type isEqualToString:@"Bar Stacked"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"bar";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Stacked bar chart";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = [NSMutableArray arrayWithObjects:@"Apples",
                            @"Oranges",
                            @"Pears",
                            @"Grapes",
                            @"Bananas", nil];
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.min = @0;
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Total fruit consumption";
        
        HILegend *legend = [[HILegend alloc]init];
        legend.reversed = @true;
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.series = [[HIPlotOptionsSeries alloc]init];
        plotoptions.series.stacking = @"normal";
        
        HIBar *bar1 = [[HIBar alloc]init];
        bar1.name = @"John";
        bar1.data = [NSMutableArray arrayWithObjects:@5,
                     @3,
                     @4,
                     @7,
                     @2, nil];
        
        HIBar *bar2 = [[HIBar alloc]init];
        bar2.name = @"Jane";
        bar2.data = [NSMutableArray arrayWithObjects:@2,
                     @2,
                     @3,
                     @2,
                     @1, nil];
        
        HIBar *bar3 = [[HIBar alloc]init];
        bar3.name = @"Joe";
        bar3.data = [NSMutableArray arrayWithObjects:@3,
                     @4,
                     @4,
                     @2,
                     @5, nil];
        
        options.chart = chart;
        options.title = title;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.legend = legend;
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects:bar1, bar2, bar3, nil];
        return options;
    }
    
    else if ([type isEqualToString:@"Column Drilldown"]) {
        
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"drilldown";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Browser market shares. January, 2015 to May, 2015";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"Click the columns to view versions. Source: <a href=\"http://netmarketshare.com\">netmarketshare.com</a>.";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.type = @"category";
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Total percent market share";
        
        HILegend *legend = [[HILegend alloc]init];
        legend.enabled = @false;
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.series = [[HIPlotOptionsSeries alloc]init];
        plotoptions.series.dataLabels = [[HIPlotOptionsSeriesDataLabels alloc]init];
        plotoptions.series.dataLabels.enabled = @true;
        plotoptions.series.dataLabels.format = @"{point.y:.1f}%";
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.headerFormat = @"<span style=\"font-size:11px\">{series.name}</span><br>";
        tooltip.pointFormat = @"<span style=\"color:{point.color}\">{point.name}</span>: <b>{point.y:.2f}%</b> of total<br/>";
        
        HIColumn *column = [[HIColumn alloc]init];
        column.name = @"Brands";
        column.colorByPoint = @true;
        column.data = [NSMutableArray arrayWithObjects:@{
                                                         @"name": @"Microsoft Internet Explorer",
                                                         @"y": @56.33,
                                                         @"drilldown": @"Microsoft Internet Explorer"
                                                         },
                       @{
                         @"name": @"Chrome",
                         @"y": @24.03,
                         @"drilldown": @"Chrome"
                         },
                       @{
                         @"name": @"Firefox",
                         @"y": @10.38,
                         @"drilldown": @"Firefox"
                         },
                       @{
                         @"name": @"Safari",
                         @"y": @4.77,
                         @"drilldown": @"Safari"
                         },
                       @{
                         @"name": @"Opera",
                         @"y": @0.91,
                         @"drilldown": @"Opera"
                         },
                       @{
                         @"name": @"Proprietary or Undetectable",
                         @"y": @0.2,
                         @"drilldown": [NSNull null]
                         }
                       , nil];
        
        HIDrilldown *drilldown = [[HIDrilldown alloc]init];
        
        HIColumn *dcolumn1 = [[HIColumn alloc]init];
        dcolumn1.name = @"Microsoft Internet Explorer";
        dcolumn1.id = @"Microsoft Internet Explorer";
        dcolumn1.data = [NSMutableArray arrayWithObjects:@[
                                                           @"v11.0",
                                                           @24.13
                                                           ],
                         @[
                           @"v8.0",
                           @17.2
                           ],
                         @[
                           @"v9.0",
                           @8.11
                           ],
                         @[
                           @"v10.0",
                           @5.33
                           ],
                         @[
                           @"v6.0",
                           @1.06
                           ],
                         @[
                           @"v7.0",
                           @0.5
                           ], nil];
        
        HIColumn *dcolumn2 = [[HIColumn alloc]init];
        dcolumn2.name = @"Chrome";
        dcolumn2.id = @"Chrome";
        dcolumn2.data = [NSMutableArray arrayWithObjects:@[
                                                           @"v40.0",
                                                           @5
                                                           ],
                         @[
                           @"v41.0",
                           @4.32
                           ],
                         @[
                           @"v42.0",
                           @3.68
                           ],
                         @[
                           @"v39.0",
                           @2.96
                           ],
                         @[
                           @"v36.0",
                           @2.53
                           ],
                         @[
                           @"v43.0",
                           @1.45
                           ],
                         @[
                           @"v31.0",
                           @1.24
                           ],
                         @[
                           @"v35.0",
                           @0.85
                           ],
                         @[
                           @"v38.0",
                           @0.6
                           ],
                         @[
                           @"v32.0",
                           @0.55
                           ],
                         @[
                           @"v37.0",
                           @0.38
                           ],
                         @[
                           @"v33.0",
                           @0.19
                           ],
                         @[
                           @"v34.0",
                           @0.14
                           ],
                         @[
                           @"v30.0",
                           @0.14
                           ]
                         , nil];
        
        HIColumn *dcolumn3 = [[HIColumn alloc]init];
        dcolumn3.name = @"Firefox";
        dcolumn3.id = @"Firefox";
        dcolumn3.data = [NSMutableArray arrayWithObjects:@[
                                                           @"v35",
                                                           @2.76
                                                           ],
                         @[
                           @"v36",
                           @2.32
                           ],
                         @[
                           @"v37",
                           @2.31
                           ],
                         @[
                           @"v34",
                           @1.27
                           ],
                         @[
                           @"v38",
                           @1.02
                           ],
                         @[
                           @"v31",
                           @0.33
                           ],
                         @[
                           @"v33",
                           @0.22
                           ],
                         @[
                           @"v32",
                           @0.15
                           ], nil];
        
        HIColumn *dcolumn4 = [[HIColumn alloc]init];
        dcolumn4.name = @"Safari";
        dcolumn4.id = @"Safari";
        dcolumn4.data = [NSMutableArray arrayWithObjects:@[
                                                           @"v8.0",
                                                           @2.56
                                                           ],
                         @[
                           @"v7.1",
                           @0.77
                           ],
                         @[
                           @"v5.1",
                           @0.42
                           ],
                         @[
                           @"v5.0",
                           @0.3
                           ],
                         @[
                           @"v6.1",
                           @0.29
                           ],
                         @[
                           @"v7.0",
                           @0.26
                           ],
                         @[
                           @"v6.2",
                           @0.17
                           ], nil];
        
        
        HIColumn *dcolumn5 = [[HIColumn alloc]init];
        dcolumn5.name = @"Opera";
        dcolumn5.id = @"Opera";
        dcolumn5.data = [NSMutableArray arrayWithObjects:@[
                                                           @"v12.x",
                                                           @0.34
                                                           ],
                         @[
                           @"v28",
                           @0.24
                           ],
                         @[
                           @"v27",
                           @0.17
                           ],
                         @[
                           @"v29",
                           @0.16
                           ], nil];
        
        drilldown.series = [NSMutableArray arrayWithObjects:dcolumn1, dcolumn2, dcolumn3, dcolumn4, dcolumn5, nil];
        
        options.chart = chart;
        options.title = title;
        options.subtitle = subtitle;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.legend = legend;
        options.plotOptions = plotoptions;
        options.tooltip = tooltip;
        options.drilldown = drilldown;
        options.series = [NSMutableArray arrayWithObjects: column, nil];
        return options;
    }
    
    else if ([type isEqualToString:@"Column Negative"]) {
        
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"column";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Column chart with negative values";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = [NSMutableArray arrayWithObjects:@"Apples",
                            @"Oranges",
                            @"Pears",
                            @"Grapes",
                            @"Bananas", nil];
        
        HICredits *credits = [[HICredits alloc]init];
        credits.enabled = @false;
        
        HIColumn *column1 = [[HIColumn alloc]init];
        column1.name = @"John";
        column1.data = [NSMutableArray arrayWithObjects:@5,
                        @3,
                        @4,
                        @7,
                        @2, nil];
        
        HIColumn *column2 = [[HIColumn alloc]init];
        column2.name = @"Jane";
        column2.data = [NSMutableArray arrayWithObjects:@2,
                        @-2,
                        @-3,
                        @2,
                        @1, nil];
        
        HIColumn *column3 = [[HIColumn alloc]init];
        column3.name = @"Joe";
        column3.data = [NSMutableArray arrayWithObjects:@3,
                        @4,
                        @4,
                        @-2,
                        @5, nil];
        
        options.chart = chart;
        options.title = title;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.credits = credits;
        options.series = [NSMutableArray arrayWithObjects: column1, column2, column3,  nil];
        
        return options;
    }
    
    else if ([type isEqualToString:@"Column Placement"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"column";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Efficiency Optimization by Branch";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = [NSMutableArray arrayWithObjects:@"Seattle HQ",
                            @"San Francisco",
                            @"Tokyo", nil];
        
        HIYAxis *yaxis1 = [[HIYAxis alloc]init];
        yaxis1.min = @0;
        yaxis1.title = [[HIYAxisTitle alloc]init];
        yaxis1.title.text = @"Employees";
        
        HIYAxis *yaxis2 = [[HIYAxis alloc]init];
        yaxis2.title = [[HIYAxisTitle alloc]init];
        yaxis2.title.text = @"Profit (millions)";
        yaxis2.opposite = @true;
        
        HILegend *legend = [[HILegend alloc]init];
        legend.shadow = @false;
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.shared = @true;
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.column = [[HIPlotOptionsColumn alloc]init];
        plotoptions.column.grouping = @false;
        plotoptions.column.shadow = @false;
        plotoptions.column.borderWidth = @0;
        
        HIColumn *column1 = [[HIColumn alloc]init];
        column1.name = @"Employees";
        column1.color = [[HIColor alloc]initWithRGBA:165 green:170 blue:217 alpha:1];
        column1.pointPadding = @0.3;
        column1.pointPlacement = @-0.2;
        column1.data = [NSMutableArray arrayWithObjects:@150,
                        @73,
                        @20, nil];
        
        HIColumn *column2 = [[HIColumn alloc]init];
        column2.name = @"Employees Optimized";
        column2.color = [[HIColor alloc]initWithRGBA:126 green:86 blue:134 alpha:0.9];
        column2.pointPadding = @0.4;
        column2.pointPlacement = @-0.2;
        column2.data = [NSMutableArray arrayWithObjects:@140,
                        @90,
                        @40, nil];
        
        HIColumn *column3 = [[HIColumn alloc]init];
        column3.name = @"Profit";
        column3.color = [[HIColor alloc]initWithRGBA:248 green:161 blue:63 alpha:1];
        column3.tooltip = [[HIColumnTooltip alloc]init];
        column3.tooltip.valuePrefix = @"$";
        column3.tooltip.valueSuffix = @" M";
        column3.pointPadding = @0.3;
        column3.pointPlacement = @0.2;
        column3.yAxis = @1;
        column3.data = [NSMutableArray arrayWithObjects:@183.6,
                        @178.8,
                        @198.5, nil];
        
        HIColumn *column4 = [[HIColumn alloc]init];
        column4.name = @"Profit Optimized";
        column4.color = [[HIColor alloc]initWithRGBA:186 green:60 blue:61 alpha:0.9];
        column4.tooltip = [[HIColumnTooltip alloc]init];
        column4.tooltip.valuePrefix = @"$";
        column4.tooltip.valueSuffix = @" M";
        column4.pointPadding = @0.4;
        column4.pointPlacement = @0.2;
        column4.yAxis = @1;
        column4.data = [NSMutableArray arrayWithObjects:@203.6,
                        @198.8,
                        @208.5, nil];
        
        options.chart = chart;
        options.title = title;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis1, yaxis2, nil];
        options.legend = legend;
        options.tooltip = tooltip;
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects: column1, column2, column3, column4, nil];
        
        return options;
    }
    
    else if ([type isEqualToString:@"Column Rotated Labels"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"column";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"World's largest cities per 2014";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"Source: <a href=\"http://en.wikipedia.org/wiki/List_of_cities_proper_by_population\">Wikipedia</a>";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.type = @"category";
        xaxis.labels = [[HIXAxisLabels alloc]init];
        xaxis.labels.rotation = @-45;
        xaxis.labels.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"13px", @"fonSize", @"Verdana, sans-serif", @"fontFamily", nil];
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.min = @0;
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Population (millions)";
        
        HILegend *legend = [[HILegend alloc]init];
        legend.enabled = @false;
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.pointFormat = @"Population in 2008: <b>{point.y:.1f} millions</b>";
        
        HIColumn *column = [[HIColumn alloc]init];
        column.name = @"Population";
        column.data = [NSMutableArray arrayWithObjects:@[
                                                         @"Shanghai",
                                                         @23.7
                                                         ],
                       @[
                         @"Lagos",
                         @16.1
                         ],
                       @[
                         @"Istanbul",
                         @14.2
                         ],
                       @[
                         @"Karachi",
                         @14
                         ],
                       @[
                         @"Mumbai",
                         @12.5
                         ],
                       @[
                         @"Moscow",
                         @12.1
                         ],
                       @[
                         @"São Paulo",
                         @11.8
                         ],
                       @[
                         @"Beijing",
                         @11.7
                         ],
                       @[
                         @"Guangzhou",
                         @11.1
                         ],
                       @[
                         @"Delhi",
                         @11.1
                         ],
                       @[
                         @"Shenzhen",
                         @10.5
                         ],
                       @[
                         @"Seoul",
                         @10.4
                         ],
                       @[
                         @"Jakarta",
                         @10
                         ],
                       @[
                         @"Kinshasa",
                         @9.3
                         ],
                       @[
                         @"Tianjin",
                         @9.3
                         ],
                       @[
                         @"Tokyo",
                         @9
                         ],
                       @[
                         @"Cairo",
                         @8.9
                         ],
                       @[
                         @"Dhaka",
                         @8.9
                         ],
                       @[
                         @"Mexico City",
                         @8.9
                         ],
                       @[
                         @"Lima",
                         @8.9
                         ]
                       , nil];
        column.dataLabels = [[HIColumnDataLabels alloc]init];
        column.dataLabels.enabled = @true;
        column.dataLabels.rotation = @-90;
        column.dataLabels.color = [[HIColor alloc]initWithHexValue:@"FFFFFF"];
        column.dataLabels.align = @"right";
        column.dataLabels.format = @"{point.y:.1f}";
        column.dataLabels.y = @10;
        column.dataLabels.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"13px", @"fonSize", @"Verdana, sans-serif", @"fontFamily", nil];
        
        options.chart = chart;
        options.title = title;
        options.subtitle = subtitle;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.legend = legend;
        options.tooltip = tooltip;
        options.series = [NSMutableArray arrayWithObjects: column, nil];
        return options;
    }
    
    else if ([type isEqualToString:@"Column Stacked"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"column";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Stacked column chart";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = [NSMutableArray arrayWithObjects:@"Apples",
                            @"Oranges",
                            @"Pears",
                            @"Grapes",
                            @"Bananas", nil];
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.min = @0;
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Total fruit consumption";
        yaxis.stackLabels = [[HIYAxisStackLabels alloc]init];
        yaxis.stackLabels.enabled = @true;
        yaxis.stackLabels.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"bold", @"fontWeight", @"gray", @"color", nil];
        
        HILegend *legend = [[HILegend alloc]init];
        legend.align = @"right";
        legend.x = @-30;
        legend.verticalAlign = @"top";
        legend.y = @25;
        legend.floating = @true;
        legend.backgroundColor = [[HIColor alloc]initWithName:@"white"];
        legend.borderColor = [[HIColor alloc]initWithHexValue:@"ccc"];
        legend.borderWidth = @1;
        legend.shadow = @false;
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.pointFormat = @"{series.name}: {point.y}<br/>Total: {point.stackTotal}";
        tooltip.headerFormat = @"<b>{point.x}</b><br/>";
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.column = [[HIPlotOptionsColumn alloc]init];
        plotoptions.column.stacking = @"normal";
        plotoptions.column.dataLabels = [[HIPlotOptionsColumnDataLabels alloc]init];
        plotoptions.column.dataLabels.enabled = @true;
        plotoptions.column.dataLabels.color = [[HIColor alloc]initWithName:@"white"];
        plotoptions.column.dataLabels.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"0 0 3px black", @"textShadow", nil];
        
        HIColumn *column1 = [[HIColumn alloc]init];
        column1.name = @"John";
        column1.data = [NSMutableArray arrayWithObjects:@5,
                        @3,
                        @4,
                        @7,
                        @2
                        , nil];
        
        HIColumn *column2 = [[HIColumn alloc]init];
        column2.name = @"Jane";
        column2.data = [NSMutableArray arrayWithObjects:@2,
                        @2,
                        @3,
                        @2,
                        @1, nil];
        
        HIColumn *column3 = [[HIColumn alloc]init];
        column3.name = @"Joe";
        column3.data = [NSMutableArray arrayWithObjects:@3,
                        @4,
                        @4,
                        @2,
                        @5, nil];
        
        options.chart = chart;
        options.title = title;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.legend = legend;
        options.tooltip = tooltip;
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects: column1, column2, column3, nil];

        return options;
    }
    
    else if ([type isEqualToString:@"Column Stacked & Grouped"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"column";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Total fruit consumtion, grouped by gender";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = [NSMutableArray arrayWithObjects:@"Apples",
                            @"Oranges",
                            @"Pears",
                            @"Grapes",
                            @"Bananas", nil];
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.allowDecimals = @false;
        yaxis.min = @0;
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Number of fruits";
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.pointFormat = @"{series.name} :{point.y} <br/> Total: {point.stackTotal}";
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.column = [[HIPlotOptionsColumn alloc]init];
        plotoptions.column.stacking = @"normal";
        
        HIColumn *column1 = [[HIColumn alloc]init];
        column1.name = @"John";
        column1.stack = @"male";
        column1.data = [NSMutableArray arrayWithObjects:@5,
                        @3,
                        @4,
                        @7,
                        @2
                        , nil];
        
        HIColumn *column2 = [[HIColumn alloc]init];
        column2.name = @"Joe";
        column2.data = [NSMutableArray arrayWithObjects:@3,
                        @4,
                        @4,
                        @2,
                        @5, nil];
        column2.stack = @"male";
        
        HIColumn *column3 = [[HIColumn alloc]init];
        column3.name = @"Jane";
        column3.data = [NSMutableArray arrayWithObjects:@2,
                        @5,
                        @6,
                        @2,
                        @1, nil];
        column3.stack = @"female";
        
        HIColumn *column4 = [[HIColumn alloc]init];
        column4.name = @"Janet";
        column4.data = [NSMutableArray arrayWithObjects:@3,
                        @0,
                        @4,
                        @4,
                        @3, nil];
        column4.stack = @"female";
        
        options.chart = chart;
        options.title = title;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.tooltip = tooltip;
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects: column1, column2, column3, column4, nil];
        return options;
    }
    
    else if ([type isEqualToString:@"Column Stacked Percent"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"column";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Stacked column chart";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = [NSMutableArray arrayWithObjects:@"Apples",
                            @"Oranges",
                            @"Pears",
                            @"Grapes",
                            @"Bananas", nil];
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.min = @0;
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Total fruit consumption";
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.pointFormat = @"<span style=\"color:{series.color}\">{series.name}</span>: <b>{point.y}</b> ({point.percentage:.0f}%)<br/>";
        tooltip.shared = @true;
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.column = [[HIPlotOptionsColumn alloc]init];
        plotoptions.column.stacking = @"percent";
        
        HIColumn *column1 = [[HIColumn alloc]init];
        column1.name = @"John";
        column1.data = [NSMutableArray arrayWithObjects:@5,
                        @3,
                        @4,
                        @7,
                        @2
                        , nil];
        
        HIColumn *column2 = [[HIColumn alloc]init];
        column2.name = @"Jane";
        column2.data = [NSMutableArray arrayWithObjects:@2,
                        @2,
                        @3,
                        @2,
                        @1, nil];
        
        HIColumn *column3 = [[HIColumn alloc]init];
        column3.name = @"Joe";
        column3.data = [NSMutableArray arrayWithObjects:@3,
                        @4,
                        @4,
                        @2,
                        @5, nil];
        
        options.chart = chart;
        options.title = title;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.tooltip = tooltip;
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects: column1, column2, column3, nil];
        return options;
    }
    
    else if ([type isEqualToString:@"Combination Dual Axes"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.zoomType = @"xy";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Average Monthly Temperature and Rainfall in Tokyo";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"Source: WorldClimate.com";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = [NSMutableArray arrayWithObjects:@"Jan",
                            @"Feb",
                            @"Mar",
                            @"Apr",
                            @"May",
                            @"Jun",
                            @"Jul",
                            @"Aug",
                            @"Sep",
                            @"Oct",
                            @"Nov",
                            @"Dec"
                            , nil];
        xaxis.crosshair = [[HIXAxisCrosshair alloc]init];
        
        HIYAxis *yaxis1 = [[HIYAxis alloc]init];
        yaxis1.labels = [[HIYAxisLabels alloc]init];
        yaxis1.labels.format = @"{value}°C";
        yaxis1.labels.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"#434348", @"color", nil];
        yaxis1.title = [[HIYAxisTitle alloc]init];
        yaxis1.title.text = @"Temperature";
        yaxis1.title.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"#434348", @"color", nil];
        
        HIYAxis *yaxis2 = [[HIYAxis alloc]init];
        yaxis2.labels = [[HIYAxisLabels alloc]init];
        yaxis2.labels.format = @"{value} mm";
        yaxis2.labels.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"#7cb5ec", @"color", nil];
        yaxis2.title = [[HIYAxisTitle alloc]init];
        yaxis2.title.text = @"Rainfall";
        yaxis2.title.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"#7cb5ec", @"color", nil];
        yaxis2.opposite = @true;
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.shared = @true;
        
        HILegend *legend = [[HILegend alloc]init];
        legend.layout = @"vertical";
        legend.align = @"left";
        legend.x = @120;
        legend.verticalAlign = @"top";
        legend.y = @100;
        legend.floating = @true;
        legend.backgroundColor = [[HIColor alloc]initWithHexValue:@"FFFFFF"];
        
        HIColumn *column = [[HIColumn alloc]init];
        column.name = @"Rainfall";
        column.yAxis = @1;
        column.data = [NSMutableArray arrayWithObjects:@49.9,
                       @71.5,
                       @106.4,
                       @129.2,
                       @144,
                       @176,
                       @135.6,
                       @148.5,
                       @216.4,
                       @194.1,
                       @95.6,
                       @54.4
                       , nil];
        column.tooltip = [[HIColumnTooltip alloc]init];
        column.tooltip.valueSuffix = @" mm";
        
        HISpline *spline = [[HISpline alloc]init];
        spline.name = @"Temperature";
        spline.data = [NSMutableArray arrayWithObjects:@7,
                       @6.9,
                       @9.5,
                       @14.5,
                       @18.2,
                       @21.5,
                       @25.2,
                       @26.5,
                       @23.3,
                       @18.3,
                       @13.9,
                       @9.6, nil];
        spline.tooltip = [[HISplineTooltip alloc]init];
        spline.tooltip.valueSuffix = @"°C";
        
        
        
        options.chart = chart;
        options.title = title;
        options.subtitle = subtitle;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis1, yaxis2, nil];
        options.tooltip = tooltip;
        options.legend = legend;
        options.series = [NSMutableArray arrayWithObjects: column, spline, nil];
        

        return options;
    }
    
    else if ([type isEqualToString:@"Combination Multi Axes"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.zoomType = @"xy";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Average Monthly Weather Data for Tokyo";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"Source: WorldClimate.com";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = [NSMutableArray arrayWithObjects:@"Jan",
                            @"Feb",
                            @"Mar",
                            @"Apr",
                            @"May",
                            @"Jun",
                            @"Jul",
                            @"Aug",
                            @"Sep",
                            @"Oct",
                            @"Nov",
                            @"Dec"
                            , nil];
        xaxis.crosshair = [[HIXAxisCrosshair alloc]init];
        
        HIYAxis *yaxis1 = [[HIYAxis alloc]init];
        yaxis1.labels = [[HIYAxisLabels alloc]init];
        yaxis1.labels.format = @"{value}°C";
        yaxis1.labels.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"#90ed7d", @"color", nil];
        yaxis1.title = [[HIYAxisTitle alloc]init];
        yaxis1.title.text = @"Temperature";
        yaxis1.title.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"#90ed7d", @"color", nil];
        yaxis1.opposite = @true;
        
        HIYAxis *yaxis2 = [[HIYAxis alloc]init];
        yaxis2.gridLineWidth = @0;
        yaxis2.labels = [[HIYAxisLabels alloc]init];
        yaxis2.labels.format = @"{value} mm";
        yaxis2.labels.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"#7cb5ec", @"color", nil];
        yaxis2.title = [[HIYAxisTitle alloc]init];
        yaxis2.title.text = @"Rainfall";
        yaxis2.title.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"#7cb5ec", @"color", nil];
        
        HIYAxis *yaxis3 = [[HIYAxis alloc]init];
        yaxis3.gridLineWidth = @0;
        yaxis3.labels = [[HIYAxisLabels alloc]init];
        yaxis3.labels.format = @"{value} mb";
        yaxis3.labels.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"#434348", @"color", nil];
        yaxis3.title = [[HIYAxisTitle alloc]init];
        yaxis3.title.text = @"Sea-Level Pressure";
        yaxis3.title.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"#434348", @"color", nil];
        yaxis3.opposite = @true;
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.shared = @true;
        
        HILegend *legend = [[HILegend alloc]init];
        legend.layout = @"vertical";
        legend.align = @"left";
        legend.x = @80;
        legend.verticalAlign = @"top";
        legend.y = @60;
        legend.floating = @true;
        legend.backgroundColor = [[HIColor alloc]initWithHexValue:@"FFFFFF"];
        
        HIColumn *column = [[HIColumn alloc]init];
        column.name = @"Rainfall";
        column.yAxis = @1;
        column.data = [NSMutableArray arrayWithObjects:@49.9,
                       @71.5,
                       @106.4,
                       @129.2,
                       @144,
                       @176,
                       @135.6,
                       @148.5,
                       @216.4,
                       @194.1,
                       @95.6,
                       @54.4
                       , nil];
        column.tooltip = [[HIColumnTooltip alloc]init];
        column.tooltip.valueSuffix = @" mm";
        
        HISpline *spline1 = [[HISpline alloc]init];
        spline1.name = @"Sea-level Pressure";
        spline1.yAxis = @2;
        spline1.data = [NSMutableArray arrayWithObjects:@1016,
                        @1016,
                        @1015.9,
                        @1015.5,
                        @1012.3,
                        @1009.5,
                        @1009.6,
                        @1010.2,
                        @1013.1,
                        @1016.9,
                        @1018.2,
                        @1016.7, nil];
        spline1.marker = [[HISplineMarker alloc]init];
        spline1.marker.enabled = @false;
        spline1.dashStyle = @"shortdot";
        spline1.tooltip = [[HISplineTooltip alloc]init];
        spline1.tooltip.valueSuffix = @" mb";
        
        HISpline *spline2 = [[HISpline alloc]init];
        spline2.name = @"Temperature";
        spline2.data = [NSMutableArray arrayWithObjects:@7,
                        @6.9,
                        @9.5,
                        @14.5,
                        @18.2,
                        @21.5,
                        @25.2,
                        @26.5,
                        @23.3,
                        @18.3,
                        @13.9,
                        @9.6, nil];
        spline2.tooltip = [[HISplineTooltip alloc]init];
        spline2.tooltip.valueSuffix = @"°C";
        
        
        
        options.chart = chart;
        options.title = title;
        options.subtitle = subtitle;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis1, yaxis2, yaxis3, nil];
        options.tooltip = tooltip;
        options.legend = legend;
        options.series = [NSMutableArray arrayWithObjects: column, spline1, spline2, nil];
        

        return options;
    }
    
    else if ([type isEqualToString:@"Combination Regression"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Scatter plot with regression line";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.min = @-0.5;
        xaxis.max = @5.5;
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.min = @0;
        
        HILine *line = [[HILine alloc]init];
        line.name = @"Regression Line";
        line.data = [NSMutableArray arrayWithObjects:
                     @[
                       @0,
                       @1.11
                       ],
                     @[
                       @5,
                       @4.51
                       ] , nil];
        line.marker = [[HILineMarker alloc]init];
        line.marker.enabled = @false;
        HILineStates *state = [[HILineStates alloc]init];
        state.hover = [[HILineStatesHover alloc]init];
        state.hover.lineWidth = @0;
        line.states = [NSMutableArray arrayWithObject:state];
        line.enableMouseTracking = @false;
        
        HIScatter *scatter = [[HIScatter alloc]init];
        scatter.name = @"Observations";
        scatter.data = [NSMutableArray arrayWithObjects:@1,
                        @1.5,
                        @2.8,
                        @3.5,
                        @3.9,
                        @4.2, nil];
        scatter.marker = [[HIScatterMarker alloc]init];
        scatter.marker.radius = @4;
        
        options.title = title;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.series = [NSMutableArray arrayWithObjects: line, scatter, nil];
        

        return options;
    }
    
    else if ([type isEqualToString:@"Gauge Dual"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"gauge";
        chart.alignTicks = @false;
        chart.plotBorderWidth = @0;
        chart.plotShadow = @false;
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Speedometer with dual axes";
        
        HIPane *pane = [[HIPane alloc]init];
        pane.startAngle = @-150;
        pane.endAngle = @150;
        
        HIYAxis *yaxis1 = [[HIYAxis alloc]init];
        yaxis1.min = @0;
        yaxis1.max = @200;
        yaxis1.lineColor = [[HIColor alloc]initWithHexValue:@"339"];
        yaxis1.tickColor = [[HIColor alloc]initWithHexValue:@"339"];
        yaxis1.minorTickColor = [[HIColor alloc]initWithHexValue:@"339"];
        yaxis1.offset = @-25;
        yaxis1.lineWidth = @2;
        yaxis1.labels = [[HIYAxisLabels alloc]init];
        yaxis1.labels.distance = @-20;
        yaxis1.labels.rotation = @"auto";
        yaxis1.tickLength = @5;
        yaxis1.minorTickLength = @5;
        yaxis1.endOnTick = @false;
        
        HIYAxis *yaxis2 = [[HIYAxis alloc]init];
        yaxis2.min = @0;
        yaxis2.max = @124;
        yaxis2.tickPosition = @"outside";
        yaxis2.lineColor = [[HIColor alloc]initWithHexValue:@"933"];
        yaxis2.lineWidth = @2;
        yaxis2.minorTickPosition = @"outside";
        yaxis2.tickColor = [[HIColor alloc]initWithHexValue:@"933"];
        yaxis2.minorTickColor = [[HIColor alloc]initWithHexValue:@"933"];
        yaxis2.offset = @-20;
        yaxis2.labels = [[HIYAxisLabels alloc]init];
        yaxis2.labels.distance = @12;
        yaxis2.labels.rotation = @"auto";
        yaxis2.tickLength = @5;
        yaxis2.minorTickLength = @5;
        yaxis2.endOnTick = @false;
        
        HIGauge *gauge = [[HIGauge alloc]init];
        gauge.name = @"Speed";
        gauge.tooltip = [[HIGaugeTooltip alloc]init];
        gauge.tooltip.valueSuffix = @" km/h";
        gauge.data = [NSMutableArray arrayWithObjects:@80, nil];
        
        options.chart = chart;
        options.title = title;
        options.pane = pane;
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis1, yaxis2, nil];
        options.series = [NSMutableArray arrayWithObjects: gauge, nil];

        return options;
    }
    
    else if ([type isEqualToString:@"Gauge Speedometer"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"gauge";
        chart.plotBorderWidth = @0;
        chart.plotShadow = @false;
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Speedometer";
        
        HIPane *pane = [[HIPane alloc]init];
        pane.startAngle = @-150;
        pane.endAngle = @150;
        HIPaneBackground *background1 = [[HIPaneBackground alloc]init];
        background1.backgroundColor = [[HIColor alloc]initWithLinearGradient:@{
                                                                               @"x1": @0,
                                                                               @"y1": @0,
                                                                               @"x2": @0,
                                                                               @"y2": @1
                                                                               }
                                                                       stops:@[
                                                                               @[
                                                                                   @0,
                                                                                   @"#FFF"
                                                                                   ],
                                                                               @[
                                                                                   @1,
                                                                                   @"#333"
                                                                                   ]
                                                                               ]];
        background1.borderWidth = @0;
        background1.outerRadius = @"109%";
        HIPaneBackground *background2 = [[HIPaneBackground alloc]init];
        background2.backgroundColor = [[HIColor alloc]initWithLinearGradient:@{
                                                                               @"x1": @0,
                                                                               @"y1": @0,
                                                                               @"x2": @0,
                                                                               @"y2": @1
                                                                               } stops:@[
                                                                                         @[
                                                                                             @0,
                                                                                             @"#333"
                                                                                             ],
                                                                                         @[
                                                                                             @1,
                                                                                             @"#FFF"
                                                                                             ]
                                                                                         ]];
        background2.borderWidth = @1;
        background2.outerRadius = @"107%";
        HIPaneBackground *background3 = [[HIPaneBackground alloc]init];
        HIPaneBackground *background4 = [[HIPaneBackground alloc]init];
        background4.backgroundColor = [[HIColor alloc]initWithHexValue:@"DDD"];
        background4.borderWidth = @0;
        background4.outerRadius = @"105%";
        background4.innerRadius = @"103%";
        pane.background = [NSMutableArray arrayWithObjects:background1, background2, background3, background4, nil];
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.min = @0;
        yaxis.max = @200;
        yaxis.minorTickInterval = @"auto";
        yaxis.minorTickWidth = @1;
        yaxis.minorTickLength = @10;
        yaxis.minorTickPosition = @"inside";
        yaxis.minorTickColor = [[HIColor alloc]initWithHexValue:@"666"];
        yaxis.tickPixelInterval = @30;
        yaxis.tickWidth = @2;
        yaxis.tickPosition = @"inside";
        yaxis.tickLength = @10;
        yaxis.tickColor = [[HIColor alloc]initWithHexValue:@"666"];
        yaxis.labels = [[HIYAxisLabels alloc]init];
        yaxis.labels.step = @2;
        yaxis.labels.rotation = @"auto";
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"km/h";
        HIYAxisPlotBands *plotband1 = [[HIYAxisPlotBands alloc]init];
        plotband1.from = @0;
        plotband1.to = @120;
        plotband1.color = [[HIColor alloc]initWithHexValue:@"55BF3B"];
        HIYAxisPlotBands *plotband2 = [[HIYAxisPlotBands alloc]init];
        plotband2.from = @120;
        plotband2.to = @160;
        plotband2.color = [[HIColor alloc]initWithHexValue:@"DDDF0D"];
        HIYAxisPlotBands *plotband3 = [[HIYAxisPlotBands alloc]init];
        plotband3.from = @160;
        plotband3.to = @200;
        plotband3.color = [[HIColor alloc]initWithHexValue:@"DF5353"];
        yaxis.plotBands = [NSMutableArray arrayWithObjects:plotband1, plotband2, plotband3, nil];
        
        
        HIGauge *gauge = [[HIGauge alloc]init];
        gauge.name = @"Speed";
        gauge.tooltip = [[HIGaugeTooltip alloc]init];
        gauge.tooltip.valueSuffix = @" km/h";
        gauge.data = [NSMutableArray arrayWithObject:@80];
        
        options.chart = chart;
        options.title = title;
        options.pane = pane;
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.series = [NSMutableArray arrayWithObjects: gauge, nil];

        return options;
    }
    
    else if ([type isEqualToString:@"Gauge VU-meter"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"gauge";
        chart.plotBorderWidth = @1;
        chart.plotBackgroundColor = [[HIColor alloc]initWithLinearGradient:@{
                                                                             @"x1": @0,
                                                                             @"y1": @0,
                                                                             @"x2": @0,
                                                                             @"y2": @1
                                                                             } stops:@[
                                                                                       @[
                                                                                           @0,
                                                                                           @"#FFF4C6"
                                                                                           ],
                                                                                       @[
                                                                                           @0.3,
                                                                                           @"#FFFFFF"
                                                                                           ],
                                                                                       @[
                                                                                           @1,
                                                                                           @"#FFF4C6"
                                                                                           ]
                                                                                       ]];
        chart.height = @200;
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"VU meter";
        
        HIPane *pane = [[HIPane alloc]init];
        pane.startAngle = @-45;
        pane.endAngle = @45;
        pane.background = [[NSMutableArray alloc]init];
        pane.size = @300;
        pane.center = [NSMutableArray arrayWithObjects:@"50%", @"130%", nil];
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.enabled = @false;
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.min = @-20;
        yaxis.max = @6;
        yaxis.minorTickPosition = @"outside";
        yaxis.tickPosition = @"outside";
        yaxis.labels = [[HIYAxisLabels alloc]init];
        yaxis.labels.distance = @20;
        yaxis.labels.rotation = @"auto";
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"VU<br/><span style=\"font-size:8px\">Channel</span>";
        yaxis.title.y = @-40;
        HIYAxisPlotBands *plotband1 = [[HIYAxisPlotBands alloc]init];
        plotband1.from = @0;
        plotband1.to = @6;
        plotband1.color = [[HIColor alloc]initWithHexValue:@"C02316"];
        plotband1.innerRadius = @"100%";
        plotband1.outerRadius = @"105%";
        yaxis.plotBands = [NSMutableArray arrayWithObjects:plotband1, nil];
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.gauge = [[HIPlotOptionsGauge alloc]init];
        plotoptions.gauge.dataLabels = [[HIPlotOptionsGaugeDataLabels alloc]init];
        plotoptions.gauge.dataLabels.enabled = @false;
        plotoptions.gauge.dial = [[HIPlotOptionsGaugeDial alloc]init];
        plotoptions.gauge.dial.radius = @"100%";
        
        
        HIGauge *gauge = [[HIGauge alloc]init];
        gauge.name = @"Channel";
        gauge.data = [NSMutableArray arrayWithObject:@-8];
        
        options.chart = chart;
        options.title = title;
        options.pane = pane;
        options.tooltip = tooltip;
        options.plotOptions = plotoptions;
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.series = [NSMutableArray arrayWithObjects: gauge, nil];
        return options;
    }
    
    else if ([type isEqualToString:@"Line Labels"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"line";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Monthly Average Temperature";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"Source: WorldClimate.com";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = [NSMutableArray arrayWithObjects:@"Jan",
                            @"Feb",
                            @"Mar",
                            @"Apr",
                            @"May",
                            @"Jun",
                            @"Jul",
                            @"Aug",
                            @"Sep",
                            @"Oct",
                            @"Nov",
                            @"Dec", nil];
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Temperature (°C)";
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.line = [[HIPlotOptionsLine alloc]init];
        plotoptions.line.dataLabels = [[HIPlotOptionsLineDataLabels alloc]init];
        plotoptions.line.dataLabels.enabled = @true;
        
        HILine *line1 = [[HILine alloc]init];
        line1.name = @"Tokyo";
        line1.data = [NSMutableArray arrayWithObjects:@7,
                      @6.9,
                      @9.5,
                      @14.5,
                      @18.4,
                      @21.5,
                      @25.2,
                      @26.5,
                      @23.3,
                      @18.3,
                      @13.9,
                      @9.6, nil];
        
        HILine *line2 = [[HILine alloc]init];
        line2.name = @"London";
        line2.data = [NSMutableArray arrayWithObjects:@3.9,
                      @4.2,
                      @5.7,
                      @8.5,
                      @11.9,
                      @15.2,
                      @17,
                      @16.6,
                      @14.2,
                      @10.3,
                      @6.6,
                      @4.8, nil];
        
        options.chart = chart;
        options.title = title;
        options.subtitle = subtitle;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects: line1, line2, nil];

        return options;
    }
    
    else if ([type isEqualToString:@"Line Log Axis"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Logarithmic axis demo";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.tickInterval = @1;
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.type = @"logarithmic";
        yaxis.minorTickInterval = @0.1;
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.headerFormat = @"<b>{series.name}</b><br />";
        tooltip.pointFormat = @"x = {point.x}, y = {point.y}";
        
        HILine *line1 = [[HILine alloc]init];
        line1.pointStart = @1;
        line1.data = [NSMutableArray arrayWithObjects:@1,
                      @2,
                      @4,
                      @8,
                      @16,
                      @32,
                      @64,
                      @128,
                      @256,
                      @512, nil];
        
        options.title = title;
        options.tooltip = tooltip;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.series = [NSMutableArray arrayWithObjects: line1, nil];
        

        return options;
    }
    
    else if ([type isEqualToString:@"Line Time Series"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.zoomType = @"x";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"USD to EUR exchange rate over time";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"Click and drag in the plot area to zoom in";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.type = @"datetime";
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Exchange rate";
        
        HILegend *legend = [[HILegend alloc]init];
        legend.enabled = @false;
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.area = [[HIPlotOptionsArea alloc]init];
        plotoptions.area.fillColor = [[HIColor alloc]initWithRGBA:0 green:0 blue:0 alpha:0];
        plotoptions.area.marker = [[HIPlotOptionsAreaMarker alloc]init];
        plotoptions.area.marker.radius = @2;
        plotoptions.area.lineWidth = @1;
        HIPlotOptionsAreaStates *state = [[HIPlotOptionsAreaStates alloc]init];
        state.hover = [[HIPlotOptionsAreaStatesHover alloc]init];
        state.hover.lineWidth = @1;
        plotoptions.area.states = [NSMutableArray arrayWithObject:state];
        
        HIArea *area = [[HIArea alloc]init];
        area.name = @"USD to EUR";
        area.data = [NSMutableArray arrayWithObjects:@[
                                                       @1370131200000,
                                                       @0.7695
                                                       ],
                     @[
                       @1370217600000,
                       @0.7648
                       ],
                     @[
                       @1370304000000,
                       @0.7645
                       ],
                     @[
                       @1370390400000,
                       @0.7638
                       ],
                     @[
                       @1370476800000,
                       @0.7549
                       ],
                     @[
                       @1370563200000,
                       @0.7562
                       ],
                     @[
                       @1370736000000,
                       @0.7574
                       ],
                     @[
                       @1370822400000,
                       @0.7543
                       ],
                     @[
                       @1370908800000,
                       @0.751
                       ],
                     @[
                       @1370995200000,
                       @0.7498
                       ],
                     @[
                       @1371081600000,
                       @0.7477
                       ],
                     @[
                       @1371168000000,
                       @0.7492
                       ],
                     @[
                       @1371340800000,
                       @0.7487
                       ],
                     @[
                       @1371427200000,
                       @0.748
                       ],
                     @[
                       @1371513600000,
                       @0.7466
                       ],
                     @[
                       @1371600000000,
                       @0.7521
                       ],
                     @[
                       @1371686400000,
                       @0.7564
                       ],
                     @[
                       @1371772800000,
                       @0.7621
                       ],
                     @[
                       @1371945600000,
                       @0.763
                       ],
                     @[
                       @1372032000000,
                       @0.7623
                       ],
                     @[
                       @1372118400000,
                       @0.7644
                       ],
                     @[
                       @1372204800000,
                       @0.7685
                       ],
                     @[
                       @1372291200000,
                       @0.7671
                       ],
                     @[
                       @1372377600000,
                       @0.7687
                       ],
                     @[
                       @1372550400000,
                       @0.7687
                       ],
                     @[
                       @1372636800000,
                       @0.7654
                       ],
                     @[
                       @1372723200000,
                       @0.7705
                       ],
                     @[
                       @1372809600000,
                       @0.7687
                       ],
                     @[
                       @1372896000000,
                       @0.7744
                       ],
                     @[
                       @1372982400000,
                       @0.7793
                       ],
                     @[
                       @1373155200000,
                       @0.7804
                       ],
                     @[
                       @1373241600000,
                       @0.777
                       ],
                     @[
                       @1373328000000,
                       @0.7824
                       ],
                     @[
                       @1373414400000,
                       @0.7705
                       ],
                     @[
                       @1373500800000,
                       @0.7635
                       ],
                     @[
                       @1373587200000,
                       @0.7652
                       ],
                     @[
                       @1373760000000,
                       @0.7656
                       ],
                     @[
                       @1373846400000,
                       @0.7655
                       ],
                     @[
                       @1373932800000,
                       @0.7598
                       ],
                     @[
                       @1374019200000,
                       @0.7619
                       ],
                     @[
                       @1374105600000,
                       @0.7628
                       ],
                     @[
                       @1374192000000,
                       @0.7609
                       ],
                     @[
                       @1374364800000,
                       @0.7599
                       ],
                     @[
                       @1374451200000,
                       @0.7584
                       ],
                     @[
                       @1374537600000,
                       @0.7562
                       ],
                     @[
                       @1374624000000,
                       @0.7575
                       ],
                     @[
                       @1374710400000,
                       @0.7531
                       ],
                     @[
                       @1374796800000,
                       @0.753
                       ],
                     @[
                       @1374969600000,
                       @0.7526
                       ],
                     @[
                       @1375056000000,
                       @0.754
                       ],
                     @[
                       @1375142400000,
                       @0.754
                       ],
                     @[
                       @1375228800000,
                       @0.7518
                       ],
                     @[
                       @1375315200000,
                       @0.7571
                       ],
                     @[
                       @1375401600000,
                       @0.7529
                       ],
                     @[
                       @1375574400000,
                       @0.7532
                       ],
                     @[
                       @1375660800000,
                       @0.7542
                       ],
                     @[
                       @1375747200000,
                       @0.7515
                       ],
                     @[
                       @1375833600000,
                       @0.7498
                       ],
                     @[
                       @1375920000000,
                       @0.7473
                       ],
                     @[
                       @1376006400000,
                       @0.7494
                       ],
                     @[
                       @1376179200000,
                       @0.7497
                       ],
                     @[
                       @1376265600000,
                       @0.7519
                       ],
                     @[
                       @1376352000000,
                       @0.754
                       ],
                     @[
                       @1376438400000,
                       @0.7543
                       ],
                     @[
                       @1376524800000,
                       @0.7492
                       ],
                     @[
                       @1376611200000,
                       @0.7502
                       ],
                     @[
                       @1376784000000,
                       @0.7503
                       ],
                     @[
                       @1376870400000,
                       @0.7499
                       ],
                     @[
                       @1376956800000,
                       @0.7453
                       ],
                     @[
                       @1377043200000,
                       @0.7487
                       ],
                     @[
                       @1377129600000,
                       @0.7487
                       ],
                     @[
                       @1377216000000,
                       @0.7472
                       ],
                     @[
                       @1377388800000,
                       @0.7471
                       ],
                     @[
                       @1377475200000,
                       @0.748
                       ],
                     @[
                       @1377561600000,
                       @0.7467
                       ],
                     @[
                       @1377648000000,
                       @0.7497
                       ],
                     @[
                       @1377734400000,
                       @0.7552
                       ],
                     @[
                       @1377820800000,
                       @0.7562
                       ],
                     @[
                       @1377993600000,
                       @0.7572
                       ],
                     @[
                       @1378080000000,
                       @0.7581
                       ],
                     @[
                       @1378166400000,
                       @0.7593
                       ],
                     @[
                       @1378252800000,
                       @0.7571
                       ],
                     @[
                       @1378339200000,
                       @0.7622
                       ],
                     @[
                       @1378425600000,
                       @0.7588
                       ],
                     @[
                       @1378598400000,
                       @0.7591
                       ],
                     @[
                       @1378684800000,
                       @0.7544
                       ],
                     @[
                       @1378771200000,
                       @0.7537
                       ],
                     @[
                       @1378857600000,
                       @0.7512
                       ],
                     @[
                       @1378944000000,
                       @0.7519
                       ],
                     @[
                       @1379030400000,
                       @0.7522
                       ],
                     @[
                       @1379203200000,
                       @0.7486
                       ],
                     @[
                       @1379289600000,
                       @0.75
                       ],
                     @[
                       @1379376000000,
                       @0.7486
                       ],
                     @[
                       @1379462400000,
                       @0.7396
                       ],
                     @[
                       @1379548800000,
                       @0.7391
                       ],
                     @[
                       @1379635200000,
                       @0.7394
                       ],
                     @[
                       @1379808000000,
                       @0.7389
                       ],
                     @[
                       @1379894400000,
                       @0.7411
                       ],
                     @[
                       @1379980800000,
                       @0.7422
                       ],
                     @[
                       @1380067200000,
                       @0.7393
                       ],
                     @[
                       @1380153600000,
                       @0.7413
                       ],
                     @[
                       @1380240000000,
                       @0.7396
                       ],
                     @[
                       @1380412800000,
                       @0.741
                       ],
                     @[
                       @1380499200000,
                       @0.7393
                       ],
                     @[
                       @1380585600000,
                       @0.7393
                       ],
                     @[
                       @1380672000000,
                       @0.7365
                       ],
                     @[
                       @1380758400000,
                       @0.7343
                       ],
                     @[
                       @1380844800000,
                       @0.7376
                       ],
                     @[
                       @1381017600000,
                       @0.737
                       ],
                     @[
                       @1381104000000,
                       @0.7362
                       ],
                     @[
                       @1381190400000,
                       @0.7368
                       ],
                     @[
                       @1381276800000,
                       @0.7393
                       ],
                     @[
                       @1381363200000,
                       @0.7397
                       ],
                     @[
                       @1381449600000,
                       @0.7385
                       ],
                     @[
                       @1381622400000,
                       @0.7377
                       ],
                     @[
                       @1381708800000,
                       @0.7374
                       ],
                     @[
                       @1381795200000,
                       @0.7395
                       ],
                     @[
                       @1381881600000,
                       @0.7389
                       ],
                     @[
                       @1381968000000,
                       @0.7312
                       ],
                     @[
                       @1382054400000,
                       @0.7307
                       ],
                     @[
                       @1382227200000,
                       @0.7309
                       ],
                     @[
                       @1382313600000,
                       @0.7308
                       ],
                     @[
                       @1382400000000,
                       @0.7256
                       ],
                     @[
                       @1382486400000,
                       @0.7258
                       ],
                     @[
                       @1382572800000,
                       @0.7247
                       ],
                     @[
                       @1382659200000,
                       @0.7244
                       ],
                     @[
                       @1382832000000,
                       @0.7244
                       ],
                     @[
                       @1382918400000,
                       @0.7255
                       ],
                     @[
                       @1383004800000,
                       @0.7275
                       ],
                     @[
                       @1383091200000,
                       @0.728
                       ],
                     @[
                       @1383177600000,
                       @0.7361
                       ],
                     @[
                       @1383264000000,
                       @0.7415
                       ],
                     @[
                       @1383436800000,
                       @0.7411
                       ],
                     @[
                       @1383523200000,
                       @0.7399
                       ],
                     @[
                       @1383609600000,
                       @0.7421
                       ],
                     @[
                       @1383696000000,
                       @0.74
                       ],
                     @[
                       @1383782400000,
                       @0.7452
                       ],
                     @[
                       @1383868800000,
                       @0.7479
                       ],
                     @[
                       @1384041600000,
                       @0.7492
                       ],
                     @[
                       @1384128000000,
                       @0.746
                       ],
                     @[
                       @1384214400000,
                       @0.7442
                       ],
                     @[
                       @1384300800000,
                       @0.7415
                       ],
                     @[
                       @1384387200000,
                       @0.7429
                       ],
                     @[
                       @1384473600000,
                       @0.741
                       ],
                     @[
                       @1384646400000,
                       @0.7417
                       ],
                     @[
                       @1384732800000,
                       @0.7405
                       ],
                     @[
                       @1384819200000,
                       @0.7386
                       ],
                     @[
                       @1384905600000,
                       @0.7441
                       ],
                     @[
                       @1384992000000,
                       @0.7418
                       ],
                     @[
                       @1385078400000,
                       @0.7376
                       ],
                     @[
                       @1385251200000,
                       @0.7379
                       ],
                     @[
                       @1385337600000,
                       @0.7399
                       ],
                     @[
                       @1385424000000,
                       @0.7369
                       ],
                     @[
                       @1385510400000,
                       @0.7365
                       ],
                     @[
                       @1385596800000,
                       @0.735
                       ],
                     @[
                       @1385683200000,
                       @0.7358
                       ],
                     @[
                       @1385856000000,
                       @0.7362
                       ],
                     @[
                       @1385942400000,
                       @0.7385
                       ],
                     @[
                       @1386028800000,
                       @0.7359
                       ],
                     @[
                       @1386115200000,
                       @0.7357
                       ],
                     @[
                       @1386201600000,
                       @0.7317
                       ],
                     @[
                       @1386288000000,
                       @0.7297
                       ],
                     @[
                       @1386460800000,
                       @0.7296
                       ],
                     @[
                       @1386547200000,
                       @0.7279
                       ],
                     @[
                       @1386633600000,
                       @0.7267
                       ],
                     @[
                       @1386720000000,
                       @0.7254
                       ],
                     @[
                       @1386806400000,
                       @0.727
                       ],
                     @[
                       @1386892800000,
                       @0.7276
                       ],
                     @[
                       @1387065600000,
                       @0.7278
                       ],
                     @[
                       @1387152000000,
                       @0.7267
                       ],
                     @[
                       @1387238400000,
                       @0.7263
                       ],
                     @[
                       @1387324800000,
                       @0.7307
                       ],
                     @[
                       @1387411200000,
                       @0.7319
                       ],
                     @[
                       @1387497600000,
                       @0.7315
                       ],
                     @[
                       @1387670400000,
                       @0.7311
                       ],
                     @[
                       @1387756800000,
                       @0.7301
                       ],
                     @[
                       @1387843200000,
                       @0.7308
                       ],
                     @[
                       @1387929600000,
                       @0.731
                       ],
                     @[
                       @1388016000000,
                       @0.7304
                       ],
                     @[
                       @1388102400000,
                       @0.7277
                       ],
                     @[
                       @1388275200000,
                       @0.7272
                       ],
                     @[
                       @1388361600000,
                       @0.7244
                       ],
                     @[
                       @1388448000000,
                       @0.7275
                       ],
                     @[
                       @1388534400000,
                       @0.7271
                       ],
                     @[
                       @1388620800000,
                       @0.7314
                       ],
                     @[
                       @1388707200000,
                       @0.7359
                       ],
                     @[
                       @1388880000000,
                       @0.7355
                       ],
                     @[
                       @1388966400000,
                       @0.7338
                       ],
                     @[
                       @1389052800000,
                       @0.7345
                       ],
                     @[
                       @1389139200000,
                       @0.7366
                       ],
                     @[
                       @1389225600000,
                       @0.7349
                       ],
                     @[
                       @1389312000000,
                       @0.7316
                       ],
                     @[
                       @1389484800000,
                       @0.7315
                       ],
                     @[
                       @1389571200000,
                       @0.7315
                       ],
                     @[
                       @1389657600000,
                       @0.731
                       ],
                     @[
                       @1389744000000,
                       @0.735
                       ],
                     @[
                       @1389830400000,
                       @0.7341
                       ],
                     @[
                       @1389916800000,
                       @0.7385
                       ],
                     @[
                       @1390089600000,
                       @0.7392
                       ],
                     @[
                       @1390176000000,
                       @0.7379
                       ],
                     @[
                       @1390262400000,
                       @0.7373
                       ],
                     @[
                       @1390348800000,
                       @0.7381
                       ],
                     @[
                       @1390435200000,
                       @0.7301
                       ],
                     @[
                       @1390521600000,
                       @0.7311
                       ],
                     @[
                       @1390694400000,
                       @0.7306
                       ],
                     @[
                       @1390780800000,
                       @0.7314
                       ],
                     @[
                       @1390867200000,
                       @0.7316
                       ],
                     @[
                       @1390953600000,
                       @0.7319
                       ],
                     @[
                       @1391040000000,
                       @0.7377
                       ],
                     @[
                       @1391126400000,
                       @0.7415
                       ],
                     @[
                       @1391299200000,
                       @0.7414
                       ],
                     @[
                       @1391385600000,
                       @0.7393
                       ],
                     @[
                       @1391472000000,
                       @0.7397
                       ],
                     @[
                       @1391558400000,
                       @0.7389
                       ],
                     @[
                       @1391644800000,
                       @0.7358
                       ],
                     @[
                       @1391731200000,
                       @0.7334
                       ],
                     @[
                       @1391904000000,
                       @0.7343
                       ],
                     @[
                       @1391990400000,
                       @0.7328
                       ],
                     @[
                       @1392076800000,
                       @0.7332
                       ],
                     @[
                       @1392163200000,
                       @0.7356
                       ],
                     @[
                       @1392249600000,
                       @0.7309
                       ],
                     @[
                       @1392336000000,
                       @0.7304
                       ],
                     @[
                       @1392508800000,
                       @0.73
                       ],
                     @[
                       @1392595200000,
                       @0.7295
                       ],
                     @[
                       @1392681600000,
                       @0.7268
                       ],
                     @[
                       @1392768000000,
                       @0.7281
                       ],
                     @[
                       @1392854400000,
                       @0.7289
                       ],
                     @[
                       @1392940800000,
                       @0.7278
                       ],
                     @[
                       @1393113600000,
                       @0.728
                       ],
                     @[
                       @1393200000000,
                       @0.728
                       ],
                     @[
                       @1393286400000,
                       @0.7275
                       ],
                     @[
                       @1393372800000,
                       @0.7306
                       ],
                     @[
                       @1393459200000,
                       @0.7295
                       ],
                     @[
                       @1393545600000,
                       @0.7245
                       ],
                     @[
                       @1393718400000,
                       @0.7259
                       ],
                     @[
                       @1393804800000,
                       @0.728
                       ],
                     @[
                       @1393891200000,
                       @0.7276
                       ],
                     @[
                       @1393977600000,
                       @0.7282
                       ],
                     @[
                       @1394064000000,
                       @0.7215
                       ],
                     @[
                       @1394150400000,
                       @0.7206
                       ],
                     @[
                       @1394323200000,
                       @0.7206
                       ],
                     @[
                       @1394409600000,
                       @0.7207
                       ],
                     @[
                       @1394496000000,
                       @0.7216
                       ],
                     @[
                       @1394582400000,
                       @0.7192
                       ],
                     @[
                       @1394668800000,
                       @0.721
                       ],
                     @[
                       @1394755200000,
                       @0.7187
                       ],
                     @[
                       @1394928000000,
                       @0.7188
                       ],
                     @[
                       @1395014400000,
                       @0.7183
                       ],
                     @[
                       @1395100800000,
                       @0.7177
                       ],
                     @[
                       @1395187200000,
                       @0.7229
                       ],
                     @[
                       @1395273600000,
                       @0.7258
                       ],
                     @[
                       @1395360000000,
                       @0.7249
                       ],
                     @[
                       @1395532800000,
                       @0.7247
                       ],
                     @[
                       @1395619200000,
                       @0.7226
                       ],
                     @[
                       @1395705600000,
                       @0.7232
                       ],
                     @[
                       @1395792000000,
                       @0.7255
                       ],
                     @[
                       @1395878400000,
                       @0.7278
                       ],
                     @[
                       @1395964800000,
                       @0.7271
                       ],
                     @[
                       @1396137600000,
                       @0.7272
                       ],
                     @[
                       @1396224000000,
                       @0.7261
                       ],
                     @[
                       @1396310400000,
                       @0.725
                       ],
                     @[
                       @1396396800000,
                       @0.7264
                       ],
                     @[
                       @1396483200000,
                       @0.7289
                       ],
                     @[
                       @1396569600000,
                       @0.7298
                       ],
                     @[
                       @1396742400000,
                       @0.7298
                       ],
                     @[
                       @1396828800000,
                       @0.7278
                       ],
                     @[
                       @1396915200000,
                       @0.7248
                       ],
                     @[
                       @1397001600000,
                       @0.7218
                       ],
                     @[
                       @1397088000000,
                       @0.72
                       ],
                     @[
                       @1397174400000,
                       @0.7202
                       ],
                     @[
                       @1397347200000,
                       @0.7222
                       ],
                     @[
                       @1397433600000,
                       @0.7236
                       ],
                     @[
                       @1397520000000,
                       @0.7239
                       ],
                     @[
                       @1397606400000,
                       @0.7238
                       ],
                     @[
                       @1397692800000,
                       @0.7238
                       ],
                     @[
                       @1397779200000,
                       @0.7238
                       ],
                     @[
                       @1397952000000,
                       @0.7239
                       ],
                     @[
                       @1398038400000,
                       @0.725
                       ],
                     @[
                       @1398124800000,
                       @0.7244
                       ],
                     @[
                       @1398211200000,
                       @0.7238
                       ],
                     @[
                       @1398297600000,
                       @0.7229
                       ],
                     @[
                       @1398384000000,
                       @0.7229
                       ],
                     @[
                       @1398556800000,
                       @0.7226
                       ],
                     @[
                       @1398643200000,
                       @0.722
                       ],
                     @[
                       @1398729600000,
                       @0.724
                       ],
                     @[
                       @1398816000000,
                       @0.7211
                       ],
                     @[
                       @1398902400000,
                       @0.721
                       ],
                     @[
                       @1398988800000,
                       @0.7209
                       ],
                     @[
                       @1399161600000,
                       @0.7209
                       ],
                     @[
                       @1399248000000,
                       @0.7207
                       ],
                     @[
                       @1399334400000,
                       @0.718
                       ],
                     @[
                       @1399420800000,
                       @0.7188
                       ],
                     @[
                       @1399507200000,
                       @0.7225
                       ],
                     @[
                       @1399593600000,
                       @0.7268
                       ],
                     @[
                       @1399766400000,
                       @0.7267
                       ],
                     @[
                       @1399852800000,
                       @0.7269
                       ],
                     @[
                       @1399939200000,
                       @0.7297
                       ],
                     @[
                       @1400025600000,
                       @0.7291
                       ],
                     @[
                       @1400112000000,
                       @0.7294
                       ],
                     @[
                       @1400198400000,
                       @0.7302
                       ],
                     @[
                       @1400371200000,
                       @0.7298
                       ],
                     @[
                       @1400457600000,
                       @0.7295
                       ],
                     @[
                       @1400544000000,
                       @0.7298
                       ],
                     @[
                       @1400630400000,
                       @0.7307
                       ],
                     @[
                       @1400716800000,
                       @0.7323
                       ],
                     @[
                       @1400803200000,
                       @0.7335
                       ],
                     @[
                       @1400976000000,
                       @0.7338
                       ],
                     @[
                       @1401062400000,
                       @0.7329
                       ],
                     @[
                       @1401148800000,
                       @0.7335
                       ],
                     @[
                       @1401235200000,
                       @0.7358
                       ],
                     @[
                       @1401321600000,
                       @0.7351
                       ],
                     @[
                       @1401408000000,
                       @0.7337
                       ],
                     @[
                       @1401580800000,
                       @0.7338
                       ],
                     @[
                       @1401667200000,
                       @0.7355
                       ],
                     @[
                       @1401753600000,
                       @0.7338
                       ],
                     @[
                       @1401840000000,
                       @0.7353
                       ],
                     @[
                       @1401926400000,
                       @0.7321
                       ],
                     @[
                       @1402012800000,
                       @0.733
                       ],
                     @[
                       @1402185600000,
                       @0.7327
                       ],
                     @[
                       @1402272000000,
                       @0.7356
                       ],
                     @[
                       @1402358400000,
                       @0.7381
                       ],
                     @[
                       @1402444800000,
                       @0.7389
                       ],
                     @[
                       @1402531200000,
                       @0.7379
                       ],
                     @[
                       @1402617600000,
                       @0.7384
                       ],
                     @[
                       @1402790400000,
                       @0.7388
                       ],
                     @[
                       @1402876800000,
                       @0.7367
                       ],
                     @[
                       @1402963200000,
                       @0.7382
                       ],
                     @[
                       @1403049600000,
                       @0.7356
                       ],
                     @[
                       @1403136000000,
                       @0.7349
                       ],
                     @[
                       @1403222400000,
                       @0.7353
                       ],
                     @[
                       @1403395200000,
                       @0.7357
                       ],
                     @[
                       @1403481600000,
                       @0.735
                       ],
                     @[
                       @1403568000000,
                       @0.735
                       ],
                     @[
                       @1403654400000,
                       @0.7337
                       ],
                     @[
                       @1403740800000,
                       @0.7347
                       ],
                     @[
                       @1403827200000,
                       @0.7327
                       ],
                     @[
                       @1404000000000,
                       @0.733
                       ],
                     @[
                       @1404086400000,
                       @0.7304
                       ],
                     @[
                       @1404172800000,
                       @0.731
                       ],
                     @[
                       @1404259200000,
                       @0.732
                       ],
                     @[
                       @1404345600000,
                       @0.7347
                       ],
                     @[
                       @1404432000000,
                       @0.7356
                       ],
                     @[
                       @1404604800000,
                       @0.736
                       ],
                     @[
                       @1404691200000,
                       @0.735
                       ],
                     @[
                       @1404777600000,
                       @0.7346
                       ],
                     @[
                       @1404864000000,
                       @0.7329
                       ],
                     @[
                       @1404950400000,
                       @0.7348
                       ],
                     @[
                       @1405036800000,
                       @0.7349
                       ],
                     @[
                       @1405209600000,
                       @0.7352
                       ],
                     @[
                       @1405296000000,
                       @0.7342
                       ],
                     @[
                       @1405382400000,
                       @0.7369
                       ],
                     @[
                       @1405468800000,
                       @0.7393
                       ],
                     @[
                       @1405555200000,
                       @0.7392
                       ],
                     @[
                       @1405641600000,
                       @0.7394
                       ],
                     @[
                       @1405814400000,
                       @0.739
                       ],
                     @[
                       @1405900800000,
                       @0.7395
                       ],
                     @[
                       @1405987200000,
                       @0.7427
                       ],
                     @[
                       @1406073600000,
                       @0.7427
                       ],
                     @[
                       @1406160000000,
                       @0.7428
                       ],
                     @[
                       @1406246400000,
                       @0.7446
                       ],
                     @[
                       @1406419200000,
                       @0.7447
                       ],
                     @[
                       @1406505600000,
                       @0.744
                       ],
                     @[
                       @1406592000000,
                       @0.7458
                       ],
                     @[
                       @1406678400000,
                       @0.7464
                       ],
                     @[
                       @1406764800000,
                       @0.7469
                       ],
                     @[
                       @1406851200000,
                       @0.7446
                       ],
                     @[
                       @1407024000000,
                       @0.7447
                       ],
                     @[
                       @1407110400000,
                       @0.745
                       ],
                     @[
                       @1407196800000,
                       @0.7477
                       ],
                     @[
                       @1407283200000,
                       @0.7472
                       ],
                     @[
                       @1407369600000,
                       @0.7483
                       ],
                     @[
                       @1407456000000,
                       @0.7457
                       ],
                     @[
                       @1407628800000,
                       @0.746
                       ],
                     @[
                       @1407715200000,
                       @0.747
                       ],
                     @[
                       @1407801600000,
                       @0.748
                       ],
                     @[
                       @1407888000000,
                       @0.7482
                       ],
                     @[
                       @1407974400000,
                       @0.7482
                       ],
                     @[
                       @1408060800000,
                       @0.7463
                       ],
                     @[
                       @1408233600000,
                       @0.7469
                       ],
                     @[
                       @1408320000000,
                       @0.7483
                       ],
                     @[
                       @1408406400000,
                       @0.7508
                       ],
                     @[
                       @1408492800000,
                       @0.7541
                       ],
                     @[
                       @1408579200000,
                       @0.7529
                       ],
                     @[
                       @1408665600000,
                       @0.7551
                       ],
                     @[
                       @1408838400000,
                       @0.7577
                       ],
                     @[
                       @1408924800000,
                       @0.758
                       ],
                     @[
                       @1409011200000,
                       @0.7593
                       ],
                     @[
                       @1409097600000,
                       @0.758
                       ],
                     @[
                       @1409184000000,
                       @0.7585
                       ],
                     @[
                       @1409270400000,
                       @0.7614
                       ],
                     @[
                       @1409443200000,
                       @0.7618
                       ],
                     @[
                       @1409529600000,
                       @0.7618
                       ],
                     @[
                       @1409616000000,
                       @0.7614
                       ],
                     @[
                       @1409702400000,
                       @0.7604
                       ],
                     @[
                       @1409788800000,
                       @0.7725
                       ],
                     @[
                       @1409875200000,
                       @0.7722
                       ],
                     @[
                       @1410048000000,
                       @0.7721
                       ],
                     @[
                       @1410134400000,
                       @0.7753
                       ],
                     @[
                       @1410220800000,
                       @0.773
                       ],
                     @[
                       @1410307200000,
                       @0.7742
                       ],
                     @[
                       @1410393600000,
                       @0.7736
                       ],
                     @[
                       @1410480000000,
                       @0.7713
                       ],
                     @[
                       @1410652800000,
                       @0.7717
                       ],
                     @[
                       @1410739200000,
                       @0.7727
                       ],
                     @[
                       @1410825600000,
                       @0.7716
                       ],
                     @[
                       @1410912000000,
                       @0.7772
                       ],
                     @[
                       @1410998400000,
                       @0.7739
                       ],
                     @[
                       @1411084800000,
                       @0.7794
                       ],
                     @[
                       @1411257600000,
                       @0.7788
                       ],
                     @[
                       @1411344000000,
                       @0.7782
                       ],
                     @[
                       @1411430400000,
                       @0.7784
                       ],
                     @[
                       @1411516800000,
                       @0.7824
                       ],
                     @[
                       @1411603200000,
                       @0.7843
                       ],
                     @[
                       @1411689600000,
                       @0.7884
                       ],
                     @[
                       @1411862400000,
                       @0.7891
                       ],
                     @[
                       @1411948800000,
                       @0.7883
                       ],
                     @[
                       @1412035200000,
                       @0.7916
                       ],
                     @[
                       @1412121600000,
                       @0.7922
                       ],
                     @[
                       @1412208000000,
                       @0.7893
                       ],
                     @[
                       @1412294400000,
                       @0.7989
                       ],
                     @[
                       @1412467200000,
                       @0.7992
                       ],
                     @[
                       @1412553600000,
                       @0.7903
                       ],
                     @[
                       @1412640000000,
                       @0.7893
                       ],
                     @[
                       @1412726400000,
                       @0.7853
                       ],
                     @[
                       @1412812800000,
                       @0.788
                       ],
                     @[
                       @1412899200000,
                       @0.7919
                       ],
                     @[
                       @1413072000000,
                       @0.7912
                       ],
                     @[
                       @1413158400000,
                       @0.7842
                       ],
                     @[
                       @1413244800000,
                       @0.79
                       ],
                     @[
                       @1413331200000,
                       @0.779
                       ],
                     @[
                       @1413417600000,
                       @0.7806
                       ],
                     @[
                       @1413504000000,
                       @0.7835
                       ],
                     @[
                       @1413676800000,
                       @0.7844
                       ],
                     @[
                       @1413763200000,
                       @0.7813
                       ],
                     @[
                       @1413849600000,
                       @0.7864
                       ],
                     @[
                       @1413936000000,
                       @0.7905
                       ],
                     @[
                       @1414022400000,
                       @0.7907
                       ],
                     @[
                       @1414108800000,
                       @0.7893
                       ],
                     @[
                       @1414281600000,
                       @0.7889
                       ],
                     @[
                       @1414368000000,
                       @0.7875
                       ],
                     @[
                       @1414454400000,
                       @0.7853
                       ],
                     @[
                       @1414540800000,
                       @0.7916
                       ],
                     @[
                       @1414627200000,
                       @0.7929
                       ],
                     @[
                       @1414713600000,
                       @0.7984
                       ],
                     @[
                       @1414886400000,
                       @0.7999
                       ],
                     @[
                       @1414972800000,
                       @0.8012
                       ],
                     @[
                       @1415059200000,
                       @0.7971
                       ],
                     @[
                       @1415145600000,
                       @0.8009
                       ],
                     @[
                       @1415232000000,
                       @0.8081
                       ],
                     @[
                       @1415318400000,
                       @0.803
                       ],
                     @[
                       @1415491200000,
                       @0.8025
                       ],
                     @[
                       @1415577600000,
                       @0.8051
                       ],
                     @[
                       @1415664000000,
                       @0.8016
                       ],
                     @[
                       @1415750400000,
                       @0.804
                       ],
                     @[
                       @1415836800000,
                       @0.8015
                       ],
                     @[
                       @1415923200000,
                       @0.7985
                       ],
                     @[
                       @1416096000000,
                       @0.7988
                       ],
                     @[
                       @1416182400000,
                       @0.8032
                       ],
                     @[
                       @1416268800000,
                       @0.7976
                       ],
                     @[
                       @1416355200000,
                       @0.7965
                       ],
                     @[
                       @1416441600000,
                       @0.7975
                       ],
                     @[
                       @1416528000000,
                       @0.8071
                       ],
                     @[
                       @1416700800000,
                       @0.8082
                       ],
                     @[
                       @1416787200000,
                       @0.8037
                       ],
                     @[
                       @1416873600000,
                       @0.8016
                       ],
                     @[
                       @1416960000000,
                       @0.7996
                       ],
                     @[
                       @1417046400000,
                       @0.8022
                       ],
                     @[
                       @1417132800000,
                       @0.8031
                       ],
                     @[
                       @1417305600000,
                       @0.804
                       ],
                     @[
                       @1417392000000,
                       @0.802
                       ],
                     @[
                       @1417478400000,
                       @0.8075
                       ],
                     @[
                       @1417564800000,
                       @0.8123
                       ],
                     @[
                       @1417651200000,
                       @0.8078
                       ],
                     @[
                       @1417737600000,
                       @0.8139
                       ],
                     @[
                       @1417910400000,
                       @0.8135
                       ],
                     @[
                       @1417996800000,
                       @0.8119
                       ],
                     @[
                       @1418083200000,
                       @0.8081
                       ],
                     @[
                       @1418169600000,
                       @0.8034
                       ],
                     @[
                       @1418256000000,
                       @0.8057
                       ],
                     @[
                       @1418342400000,
                       @0.8024
                       ],
                     @[
                       @1418515200000,
                       @0.8024
                       ],
                     @[
                       @1418601600000,
                       @0.804
                       ],
                     @[
                       @1418688000000,
                       @0.7993
                       ],
                     @[
                       @1418774400000,
                       @0.8102
                       ],
                     @[
                       @1418860800000,
                       @0.8139
                       ],
                     @[
                       @1418947200000,
                       @0.8177
                       ],
                     @[
                       @1419120000000,
                       @0.818
                       ],
                     @[
                       @1419206400000,
                       @0.8176
                       ],
                     @[
                       @1419292800000,
                       @0.8215
                       ],
                     @[
                       @1419379200000,
                       @0.82
                       ],
                     @[
                       @1419465600000,
                       @0.8182
                       ],
                     @[
                       @1419552000000,
                       @0.8213
                       ],
                     @[
                       @1419724800000,
                       @0.8218
                       ],
                     @[
                       @1419811200000,
                       @0.8229
                       ],
                     @[
                       @1419897600000,
                       @0.8225
                       ],
                     @[
                       @1419984000000,
                       @0.8266
                       ],
                     @[
                       @1420070400000,
                       @0.8262
                       ],
                     @[
                       @1420156800000,
                       @0.8331
                       ],
                     @[
                       @1420329600000,
                       @0.8371
                       ],
                     @[
                       @1420416000000,
                       @0.838
                       ],
                     @[
                       @1420502400000,
                       @0.8411
                       ],
                     @[
                       @1420588800000,
                       @0.8447
                       ],
                     @[
                       @1420675200000,
                       @0.848
                       ],
                     @[
                       @1420761600000,
                       @0.8445
                       ],
                     @[
                       @1420934400000,
                       @0.8425
                       ],
                     @[
                       @1421020800000,
                       @0.8451
                       ],
                     @[
                       @1421107200000,
                       @0.8495
                       ],
                     @[
                       @1421193600000,
                       @0.8482
                       ],
                     @[
                       @1421280000000,
                       @0.8598
                       ],
                     @[
                       @1421366400000,
                       @0.8643
                       ],
                     @[
                       @1421539200000,
                       @0.8648
                       ],
                     @[
                       @1421625600000,
                       @0.8617
                       ],
                     @[
                       @1421712000000,
                       @0.8658
                       ],
                     @[
                       @1421798400000,
                       @0.8613
                       ],
                     @[
                       @1421884800000,
                       @0.8798
                       ],
                     @[
                       @1421971200000,
                       @0.8922
                       ],
                     @[
                       @1422144000000,
                       @0.899
                       ],
                     @[
                       @1422230400000,
                       @0.8898
                       ],
                     @[
                       @1422316800000,
                       @0.8787
                       ],
                     @[
                       @1422403200000,
                       @0.8859
                       ],
                     @[
                       @1422489600000,
                       @0.8834
                       ],
                     @[
                       @1422576000000,
                       @0.8859
                       ],
                     @[
                       @1422748800000,
                       @0.8843
                       ],
                     @[
                       @1422835200000,
                       @0.8817
                       ],
                     @[
                       @1422921600000,
                       @0.871
                       ],
                     @[
                       @1423008000000,
                       @0.8813
                       ],
                     @[
                       @1423094400000,
                       @0.8713
                       ],
                     @[
                       @1423180800000,
                       @0.8837
                       ],
                     @[
                       @1423353600000,
                       @0.8839
                       ],
                     @[
                       @1423440000000,
                       @0.8831
                       ],
                     @[
                       @1423526400000,
                       @0.8833
                       ],
                     @[
                       @1423612800000,
                       @0.8823
                       ],
                     @[
                       @1423699200000,
                       @0.877
                       ],
                     @[
                       @1423785600000,
                       @0.8783
                       ],
                     @[
                       @1423958400000,
                       @0.8774
                       ],
                     @[
                       @1424044800000,
                       @0.8807
                       ],
                     @[
                       @1424131200000,
                       @0.8762
                       ],
                     @[
                       @1424217600000,
                       @0.8774
                       ],
                     @[
                       @1424304000000,
                       @0.8798
                       ],
                     @[
                       @1424390400000,
                       @0.8787
                       ],
                     @[
                       @1424563200000,
                       @0.8787
                       ],
                     @[
                       @1424649600000,
                       @0.8824
                       ],
                     @[
                       @1424736000000,
                       @0.8818
                       ],
                     @[
                       @1424822400000,
                       @0.8801
                       ],
                     @[
                       @1424908800000,
                       @0.8931
                       ],
                     @[
                       @1424995200000,
                       @0.8932
                       ],
                     @[
                       @1425168000000,
                       @0.896
                       ],
                     @[
                       @1425254400000,
                       @0.8941
                       ],
                     @[
                       @1425340800000,
                       @0.8948
                       ],
                     @[
                       @1425427200000,
                       @0.9026
                       ],
                     @[
                       @1425513600000,
                       @0.9066
                       ],
                     @[
                       @1425600000000,
                       @0.9222
                       ],
                     @[
                       @1425772800000,
                       @0.9221
                       ],
                     @[
                       @1425859200000,
                       @0.9214
                       ],
                     @[
                       @1425945600000,
                       @0.9347
                       ],
                     @[
                       @1426032000000,
                       @0.9482
                       ],
                     @[
                       @1426118400000,
                       @0.9403
                       ],
                     @[
                       @1426204800000,
                       @0.9528
                       ],
                     @[
                       @1426377600000,
                       @0.9541
                       ],
                     @[
                       @1426464000000,
                       @0.9462
                       ],
                     @[
                       @1426550400000,
                       @0.9435
                       ],
                     @[
                       @1426636800000,
                       @0.9203
                       ],
                     @[
                       @1426723200000,
                       @0.9381
                       ],
                     @[
                       @1426809600000,
                       @0.9241
                       ],
                     @[
                       @1426982400000,
                       @0.9237
                       ],
                     @[
                       @1427068800000,
                       @0.9135
                       ],
                     @[
                       @1427155200000,
                       @0.9152
                       ],
                     @[
                       @1427241600000,
                       @0.9114
                       ],
                     @[
                       @1427328000000,
                       @0.9188
                       ],
                     @[
                       @1427414400000,
                       @0.9184
                       ],
                     @[
                       @1427587200000,
                       @0.9188
                       ],
                     @[
                       @1427673600000,
                       @0.9231
                       ],
                     @[
                       @1427760000000,
                       @0.9319
                       ],
                     @[
                       @1427846400000,
                       @0.9291
                       ],
                     @[
                       @1427932800000,
                       @0.9188
                       ],
                     @[
                       @1428019200000,
                       @0.9109
                       ],
                     @[
                       @1428192000000,
                       @0.9091
                       ],
                     @[
                       @1428278400000,
                       @0.9154
                       ],
                     @[
                       @1428364800000,
                       @0.9246
                       ],
                     @[
                       @1428451200000,
                       @0.9276
                       ],
                     @[
                       @1428537600000,
                       @0.9382
                       ],
                     @[
                       @1428624000000,
                       @0.9431
                       ],
                     @[
                       @1428796800000,
                       @0.9426
                       ],
                     @[
                       @1428883200000,
                       @0.9463
                       ],
                     @[
                       @1428969600000,
                       @0.9386
                       ],
                     @[
                       @1429056000000,
                       @0.9357
                       ],
                     @[
                       @1429142400000,
                       @0.9293
                       ],
                     @[
                       @1429228800000,
                       @0.9254
                       ],
                     @[
                       @1429401600000,
                       @0.9251
                       ],
                     @[
                       @1429488000000,
                       @0.9312
                       ],
                     @[
                       @1429574400000,
                       @0.9315
                       ],
                     @[
                       @1429660800000,
                       @0.9323
                       ],
                     @[
                       @1429747200000,
                       @0.9236
                       ],
                     @[
                       @1429833600000,
                       @0.9196
                       ],
                     @[
                       @1430006400000,
                       @0.9201
                       ],
                     @[
                       @1430092800000,
                       @0.9184
                       ],
                     @[
                       @1430179200000,
                       @0.9106
                       ],
                     @[
                       @1430265600000,
                       @0.8983
                       ],
                     @[
                       @1430352000000,
                       @0.8909
                       ],
                     @[
                       @1430438400000,
                       @0.8928
                       ],
                     @[
                       @1430611200000,
                       @0.8941
                       ],
                     @[
                       @1430697600000,
                       @0.8972
                       ],
                     @[
                       @1430784000000,
                       @0.894
                       ],
                     @[
                       @1430870400000,
                       @0.8808
                       ],
                     @[
                       @1430956800000,
                       @0.8876
                       ],
                     @[
                       @1431043200000,
                       @0.8925
                       ],
                     @[
                       @1431216000000,
                       @0.8934
                       ],
                     @[
                       @1431302400000,
                       @0.8964
                       ],
                     @[
                       @1431388800000,
                       @0.8917
                       ],
                     @[
                       @1431475200000,
                       @0.8805
                       ],
                     @[
                       @1431561600000,
                       @0.8764
                       ],
                     @[
                       @1431648000000,
                       @0.8732
                       ],
                     @[
                       @1431820800000,
                       @0.8737
                       ],
                     @[
                       @1431907200000,
                       @0.8838
                       ],
                     @[
                       @1431993600000,
                       @0.8969
                       ],
                     @[
                       @1432080000000,
                       @0.9014
                       ],
                     @[
                       @1432166400000,
                       @0.8999
                       ],
                     @[
                       @1432252800000,
                       @0.9076
                       ],
                     @[
                       @1432425600000,
                       @0.9098
                       ],
                     @[
                       @1432512000000,
                       @0.911
                       ],
                     @[
                       @1432598400000,
                       @0.9196
                       ],
                     @[
                       @1432684800000,
                       @0.917
                       ],
                     @[
                       @1432771200000,
                       @0.9133
                       ],
                     @[
                       @1432857600000,
                       @0.9101
                       ],
                     @[
                       @1433030400000,
                       @0.9126
                       ],
                     @[
                       @1433116800000,
                       @0.9151
                       ],
                     @[
                       @1433203200000,
                       @0.8965
                       ],
                     @[
                       @1433289600000,
                       @0.8871
                       ],
                     @[
                       @1433376000000,
                       @0.8898
                       ],
                     @[
                       @1433462400000,
                       @0.8999
                       ],
                     @[
                       @1433635200000,
                       @0.9004
                       ],
                     @[
                       @1433721600000,
                       @0.8857
                       ],
                     @[
                       @1433808000000,
                       @0.8862
                       ],
                     @[
                       @1433894400000,
                       @0.8829
                       ],
                     @[
                       @1433980800000,
                       @0.8882
                       ],
                     @[
                       @1434067200000,
                       @0.8873
                       ],
                     @[
                       @1434240000000,
                       @0.8913
                       ],
                     @[
                       @1434326400000,
                       @0.8862
                       ],
                     @[
                       @1434412800000,
                       @0.8891
                       ],
                     @[
                       @1434499200000,
                       @0.8821
                       ],
                     @[
                       @1434585600000,
                       @0.8802
                       ],
                     @[
                       @1434672000000,
                       @0.8808
                       ],
                     @[
                       @1434844800000,
                       @0.8794
                       ],
                     @[
                       @1434931200000,
                       @0.8818
                       ],
                     @[
                       @1435017600000,
                       @0.8952
                       ],
                     @[
                       @1435104000000,
                       @0.8924
                       ],
                     @[
                       @1435190400000,
                       @0.8925
                       ],
                     @[
                       @1435276800000,
                       @0.8955
                       ],
                     @[
                       @1435449600000,
                       @0.9113
                       ],
                     @[
                       @1435536000000,
                       @0.89
                       ],
                     @[
                       @1435622400000,
                       @0.895
                       ]
                     , nil];
        
        
        options.chart = chart;
        options.title = title;
        options.subtitle = subtitle;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.legend = legend;
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects: area, nil];
        return options;
    }
    
    else if ([type isEqualToString:@"Pie Donut"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"pie";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Browser market share, January, 2015 to May, 2015";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"Source: <a href=\"http://netmarketshare.com/\">netmarketshare.com</a>";
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Total percent market share";
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.pie = [[HIPlotOptionsPie alloc]init];
        plotoptions.pie.shadow = @false;
        plotoptions.pie.center = [NSMutableArray arrayWithObjects:@"50%", @"50%", nil];
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.valueSuffix = @"%";
        
        HIPie *pie1 = [[HIPie alloc]init];
        pie1.name = @"Browsers";
        pie1.size = @"60%";
        pie1.dataLabels = [[HIPieDataLabels alloc]init];
        pie1.dataLabels.enabled = @false;
        pie1.data = [NSMutableArray arrayWithObjects:
                     @{
                       @"name": @"MSIE",
                       @"y": @56.33,
                       @"color": @"#7cb5ec"
                       },
                     @{
                       @"name": @"Firefox",
                       @"y": @10.38,
                       @"color": @"#434348"
                       },
                     @{
                       @"name": @"Chrome",
                       @"y": @24.03,
                       @"color": @"#90ed7d"
                       },
                     @{
                       @"name": @"Safari",
                       @"y": @4.77,
                       @"color": @"#f7a35c"
                       },
                     @{
                       @"name": @"Opera",
                       @"y": @0.91,
                       @"color": @"#8085e9"
                       },
                     @{
                       @"y": @0.2,
                       @"color": @"#f15c80"
                       }
                     , nil];
        
        HIPie *pie2 = [[HIPie alloc]init];
        pie2.name = @"Versions";
        pie2.size = @"80%";
        pie2.innerSize = @"60%";
        pie2.dataLabels = [[HIPieDataLabels alloc]init];
        pie2.dataLabels.format = @"<b>{point.name}: </b>{point.y}%";
        pie2.data = [NSMutableArray arrayWithObjects:@{
                                                       @"name": @"MSIE 6.0",
                                                       @"y": @1.06,
                                                       @"color": @"rgb(175,232,255)"
                                                       },
                     @{
                       @"name": @"MSIE 7.0",
                       @"y": @0.5,
                       @"color": @"rgb(166,223,255)"
                       },
                     @{
                       @"name": @"MSIE 8.0",
                       @"y": @17.2,
                       @"color": @"rgb(158,215,255)"
                       },
                     @{
                       @"name": @"MSIE 9.0",
                       @"y": @8.11,
                       @"color": @"rgb(149,206,255)"
                       },
                     @{
                       @"name": @"MSIE 10.0",
                       @"y": @5.33,
                       @"color": @"rgb(141,198,253)"
                       },
                     @{
                       @"name": @"MSIE 11.0",
                       @"y": @24.13,
                       @"color": @"rgb(132,189,244)"
                       },
                     @{
                       @"name": @"Firefox v31",
                       @"y": @0.33,
                       @"color": @"rgb(118,118,123)"
                       },
                     @{
                       @"name": @"Firefox v32",
                       @"y": @0.15,
                       @"color": @"rgb(111,111,116)"
                       },
                     @{
                       @"name": @"Firefox v33",
                       @"y": @0.22,
                       @"color": @"rgb(105,105,110)"
                       },
                     @{
                       @"name": @"Firefox v35",
                       @"y": @1.27,
                       @"color": @"rgb(98,98,103)"
                       },
                     @{
                       @"name": @"Firefox v36",
                       @"y": @2.76,
                       @"color": @"rgb(92,92,97)"
                       },
                     @{
                       @"name": @"Firefox v37",
                       @"y": @2.32,
                       @"color": @"rgb(86,86,91)"
                       },
                     @{
                       @"name": @"Firefox v38",
                       @"y": @2.31,
                       @"color": @"rgb(79,79,84)"
                       },
                     @{
                       @"y": @1.02,
                       @"color": @"rgb(73,73,78)"
                       },
                     @{
                       @"name": @"Chrome v30.0",
                       @"y": @0.14,
                       @"color": @"rgb(195,255,176)"
                       },
                     @{
                       @"name": @"Chrome v31.0",
                       @"y": @1.24,
                       @"color": @"rgb(191,255,172)"
                       },
                     @{
                       @"name": @"Chrome v32.0",
                       @"y": @0.55,
                       @"color": @"rgb(187,255,168)"
                       },
                     @{
                       @"name": @"Chrome v33.0",
                       @"y": @0.19,
                       @"color": @"rgb(184,255,165)"
                       },
                     @{
                       @"name": @"Chrome v34.0",
                       @"y": @0.14,
                       @"color": @"rgb(180,255,161)"
                       },
                     @{
                       @"name": @"Chrome v35.0",
                       @"y": @0.85,
                       @"color": @"rgb(176,255,157)"
                       },
                     @{
                       @"name": @"Chrome v36.0",
                       @"y": @2.53,
                       @"color": @"rgb(173,255,154)"
                       },
                     @{
                       @"name": @"Chrome v37.0",
                       @"y": @0.38,
                       @"color": @"rgb(169,255,150)"
                       },
                     @{
                       @"name": @"Chrome v38.0",
                       @"y": @0.6,
                       @"color": @"rgb(165,255,146)"
                       },
                     @{
                       @"name": @"Chrome v39.0",
                       @"y": @2.96,
                       @"color": @"rgb(162,255,143)"
                       },
                     @{
                       @"name": @"Chrome v40.0",
                       @"y": @5,
                       @"color": @"rgb(158,251,139)"
                       },
                     @{
                       @"name": @"Chrome v41.0",
                       @"y": @4.32,
                       @"color": @"rgb(154,247,135)"
                       },
                     @{
                       @"name": @"Chrome v42.0",
                       @"y": @3.68,
                       @"color": @"rgb(151,244,132)"
                       },
                     @{
                       @"name": @"Chrome v43.0",
                       @"y": @1.45,
                       @"color": @"rgb(147,240,128)"
                       },
                     @{
                       @"name": @"Safari v5.0",
                       @"y": @0.3,
                       @"color": @"rgb(255,214,143)"
                       },
                     @{
                       @"name": @"Safari v5.1",
                       @"y": @0.42,
                       @"color": @"rgb(255,206,135)"
                       },
                     @{
                       @"name": @"Safari v6.1",
                       @"y": @0.29,
                       @"color": @"rgb(255,199,128)"
                       },
                     @{
                       @"name": @"Safari v6.2",
                       @"y": @0.17,
                       @"color": @"rgb(255,192,121)"
                       },
                     @{
                       @"name": @"Safari v7.0",
                       @"y": @0.26,
                       @"color": @"rgb(255,184,113)"
                       },
                     @{
                       @"name": @"Safari v7.1",
                       @"y": @0.77,
                       @"color": @"rgb(255,177,106)"
                       },
                     @{
                       @"name": @"Safari v8.0",
                       @"y": @2.56,
                       @"color": @"rgb(254,170,99)"
                       },
                     @{
                       @"name": @"Opera v12.x",
                       @"y": @0.34,
                       @"color": @"rgb(179,184,255)"
                       },
                     @{
                       @"name": @"Opera v27",
                       @"y": @0.17,
                       @"color": @"rgb(166,171,255)"
                       },
                     @{
                       @"name": @"Opera v28",
                       @"y": @0.24,
                       @"color": @"rgb(153,158,255)"
                       },
                     @{
                       @"name": @"Opera v29",
                       @"y": @0.16,
                       @"color": @"rgb(140,145,245)"
                       }
                     , nil];
        
        options.chart = chart;
        options.title = title;
        options.subtitle = subtitle;
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.tooltip = tooltip;
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects: pie1, pie2, nil];
        

        return options;
    }
    
    else if ([type isEqualToString:@"Pie Drilldown"]) {
        
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"drilldown";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Browser market shares. January, 2015 to May, 2015";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"Click the slices to view versions. Source: netmarketshare.com.";
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.headerFormat = @"<span style=\"font-size:11px\">{series.name}</span><br>";
        tooltip.pointFormat = @"<span style=\"color:{point.color}\">{point.name}</span>: <b>{point.y:.2f}%</b> of total<br/>";
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.series = [[HIPlotOptionsSeries alloc]init];
        plotoptions.series.dataLabels = [[HIPlotOptionsSeriesDataLabels alloc]init];
        plotoptions.series.dataLabels.enabled = @true;
        plotoptions.series.dataLabels.format = @"{point.name}: {point.y:.1f}%";
        
        HIPie *pie = [[HIPie alloc]init];
        pie.name = @"Brands";
        pie.data = [NSMutableArray arrayWithObjects:@{
                                                      @"name": @"Microsoft Internet Explorer",
                                                      @"y": @56.33,
                                                      @"drilldown": @"Microsoft Internet Explorer"
                                                      },
                    @{
                      @"name": @"Chrome",
                      @"y": @24.03,
                      @"drilldown": @"Chrome"
                      },
                    @{
                      @"name": @"Firefox",
                      @"y": @10.38,
                      @"drilldown": @"Firefox"
                      },
                    @{
                      @"name": @"Safari",
                      @"y": @4.77,
                      @"drilldown": @"Safari"
                      },
                    @{
                      @"name": @"Opera",
                      @"y": @0.91,
                      @"drilldown": @"Opera"
                      },
                    @{
                      @"name": @"Proprietary or Undetectable",
                      @"y": @0.2,
                      @"drilldown": [NSNull null]
                      }
                    , nil];
        
        HIDrilldown *drilldown = [[HIDrilldown alloc]init];
        HIPie *dpie1 = [[HIPie alloc]init];
        dpie1.name = @"Microsoft Internet Explorer";
        dpie1.id = @"Microsoft Internet Explorer";
        dpie1.data = [NSMutableArray arrayWithObjects:@[
                                                        @"v11.0",
                                                        @24.13
                                                        ],
                      @[
                        @"v8.0",
                        @17.2
                        ],
                      @[
                        @"v9.0",
                        @8.11
                        ],
                      @[
                        @"v10.0",
                        @5.33
                        ],
                      @[
                        @"v6.0",
                        @1.06
                        ],
                      @[
                        @"v7.0",
                        @0.5
                        ]
                      , nil];
        
        HIPie *dpie2 = [[HIPie alloc]init];
        dpie2.name = @"Chrome";
        dpie2.id = @"Chrome";
        dpie2.data = [NSMutableArray arrayWithObjects:@[
                                                        @"v40.0",
                                                        @5
                                                        ],
                      @[
                        @"v41.0",
                        @4.32
                        ],
                      @[
                        @"v42.0",
                        @3.68
                        ],
                      @[
                        @"v39.0",
                        @2.96
                        ],
                      @[
                        @"v36.0",
                        @2.53
                        ],
                      @[
                        @"v43.0",
                        @1.45
                        ],
                      @[
                        @"v31.0",
                        @1.24
                        ],
                      @[
                        @"v35.0",
                        @0.85
                        ],
                      @[
                        @"v38.0",
                        @0.6
                        ],
                      @[
                        @"v32.0",
                        @0.55
                        ],
                      @[
                        @"v37.0",
                        @0.38
                        ],
                      @[
                        @"v33.0",
                        @0.19
                        ],
                      @[
                        @"v34.0",
                        @0.14
                        ],
                      @[
                        @"v30.0",
                        @0.14
                        ]
                      , nil];
        
        HIPie *dpie3 = [[HIPie alloc]init];
        dpie3.name = @"Firefox";
        dpie3.id = @"Firefox";
        dpie3.data = [NSMutableArray arrayWithObjects:@[
                                                        @"v35",
                                                        @2.76
                                                        ],
                      @[
                        @"v36",
                        @2.32
                        ],
                      @[
                        @"v37",
                        @2.31
                        ],
                      @[
                        @"v34",
                        @1.27
                        ],
                      @[
                        @"v38",
                        @1.02
                        ],
                      @[
                        @"v31",
                        @0.33
                        ],
                      @[
                        @"v33",
                        @0.22
                        ],
                      @[
                        @"v32",
                        @0.15
                        ]
                      , nil];
        
        HIPie *dpie4 = [[HIPie alloc]init];
        dpie4.name = @"Safari";
        dpie4.id = @"Safari";
        dpie4.data = [NSMutableArray arrayWithObjects:@[
                                                        @"v8.0",
                                                        @2.56
                                                        ],
                      @[
                        @"v7.1",
                        @0.77
                        ],
                      @[
                        @"v5.1",
                        @0.42
                        ],
                      @[
                        @"v5.0",
                        @0.3
                        ],
                      @[
                        @"v6.1",
                        @0.29
                        ],
                      @[
                        @"v7.0",
                        @0.26
                        ],
                      @[
                        @"v6.2",
                        @0.17
                        ], nil];
        
        HIPie *dpie5 = [[HIPie alloc]init];
        dpie5.name = @"Opera";
        dpie5.id = @"Opera";
        dpie5.data = [NSMutableArray arrayWithObjects:@[
                                                        @"v12.x",
                                                        @0.34
                                                        ],
                      @[
                        @"v28",
                        @0.24
                        ],
                      @[
                        @"v27",
                        @0.17
                        ],
                      @[
                        @"v29",
                        @0.16
                        ], nil];
        
        drilldown.series = [NSMutableArray arrayWithObjects:dpie1, dpie2, dpie3, dpie4, dpie5, nil];
        
        options.chart = chart;
        options.title = title;
        options.subtitle = subtitle;
        options.tooltip = tooltip;
        options.plotOptions = plotoptions;
        options.drilldown = drilldown;
        options.series = [NSMutableArray arrayWithObjects: pie, nil];
        

        return options;
    }
    
    else if ([type isEqualToString:@"Pie Gradient"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.plotBackgroundColor = [[HIColor alloc]init];
        chart.plotBorderWidth = [[NSNumber alloc]init];
        chart.plotShadow = @false;
        chart.type = @"pie";
        
        NSArray *colors = @[
                            [[HIColor alloc]initWithRadialGradient:@{
                                                                     @"cx": @0.5,
                                                                     @"cy": @0.3,
                                                                     @"r": @0.7
                                                                     }stops:@[
                                                                              @[
                                                                                  @0,
                                                                                  @"#7cb5ec"
                                                                                  ],
                                                                              @[
                                                                                  @1,
                                                                                  @"rgb(48,105,160)"
                                                                                  ]
                                                                              ]],
                            [[HIColor alloc]initWithRadialGradient:@{
                                                                     @"cx": @0.5,
                                                                     @"cy": @0.3,
                                                                     @"r": @0.7
                                                                     } stops:@[
                                                                               @[
                                                                                   @0,
                                                                                   @"#434348"
                                                                                   ],
                                                                               @[
                                                                                   @1,
                                                                                   @"rgb(0,0,0)"
                                                                                   ]
                                                                               ]],
                            [[HIColor alloc]initWithRadialGradient:@{
                                                                     @"cx": @0.5,
                                                                     @"cy": @0.3,
                                                                     @"r": @0.7
                                                                     } stops:@[
                                                                               @[
                                                                                   @0,
                                                                                   @"#90ed7d"
                                                                                   ],
                                                                               @[
                                                                                   @1,
                                                                                   @"rgb(68,161,49)"
                                                                                   ]
                                                                               ]],
                            [[HIColor alloc]initWithRadialGradient:@{
                                                                     @"cx": @0.5,
                                                                     @"cy": @0.3,
                                                                     @"r": @0.7
                                                                     } stops:@[
                                                                               @[
                                                                                   @0,
                                                                                   @"#f7a35c"
                                                                                   ],
                                                                               @[
                                                                                   @1,
                                                                                   @"rgb(171,87,16)"
                                                                                   ]
                                                                               ]],
                            [[HIColor alloc]initWithRadialGradient:@{
                                                                     @"cx": @0.5,
                                                                     @"cy": @0.3,
                                                                     @"r": @0.7
                                                                     } stops:@[
                                                                               @[
                                                                                   @0,
                                                                                   @"#8085e9"
                                                                                   ],
                                                                               @[
                                                                                   @1,
                                                                                   @"rgb(52,57,157)"
                                                                                   ]
                                                                               ]],
                            [[HIColor alloc]initWithRadialGradient:@{
                                                                     @"cx": @0.5,
                                                                     @"cy": @0.3,
                                                                     @"r": @0.7
                                                                     } stops:@[
                                                                               @[
                                                                                   @0,
                                                                                   @"#f15c80"
                                                                                   ],
                                                                               @[
                                                                                   @1,
                                                                                   @"rgb(165,16,52)"
                                                                                   ]
                                                                               ]],
                            [[HIColor alloc]initWithRadialGradient:@{
                                                                     @"cx": @0.5,
                                                                     @"cy": @0.3,
                                                                     @"r": @0.7
                                                                     } stops:@[
                                                                               @[
                                                                                   @0,
                                                                                   @"#e4d354"
                                                                                   ],
                                                                               @[
                                                                                   @1,
                                                                                   @"rgb(152,135,8)"
                                                                                   ]
                                                                               ]],
                            [[HIColor alloc]initWithRadialGradient:@{
                                                                     @"cx": @0.5,
                                                                     @"cy": @0.3,
                                                                     @"r": @0.7
                                                                     } stops:@[
                                                                               @[
                                                                                   @0,
                                                                                   @"#2b908f"
                                                                                   ],
                                                                               @[
                                                                                   @1,
                                                                                   @"rgb(0,68,67)"
                                                                                   ]
                                                                               ]],
                            [[HIColor alloc]initWithRadialGradient:@{
                                                                     @"cx": @0.5,
                                                                     @"cy": @0.3,
                                                                     @"r": @0.7
                                                                     } stops:@[
                                                                               @[
                                                                                   @0,
                                                                                   @"#f45b5b"
                                                                                   ],
                                                                               @[
                                                                                   @1,
                                                                                   @"rgb(168,15,15)"
                                                                                   ]
                                                                               ]],
                            [[HIColor alloc]initWithRadialGradient:@{
                                                                     @"cx": @0.5,
                                                                     @"cy": @0.3,
                                                                     @"r": @0.7
                                                                     } stops:@[
                                                                               @[
                                                                                   @0,
                                                                                   @"#91e8e1"
                                                                                   ],
                                                                               @[
                                                                                   @1,
                                                                                   @"rgb(69,156,149)"
                                                                                   ]
                                                                               ]]
                            ];
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Browser market shares. January, 2015 to May, 2015";
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.pointFormat = @"{series.name}: <b>{point.percentage:.1f}%</b>";
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.pie = [[HIPlotOptionsPie alloc]init];
        plotoptions.pie.allowPointSelect = @true;
        plotoptions.pie.cursor = @"pointer";
        plotoptions.pie.dataLabels = [[HIPlotOptionsPieDataLabels alloc]init];
        plotoptions.pie.dataLabels.enabled = @true;
        plotoptions.pie.dataLabels.format = @"<b>{point.name}</b>: {point.percentage:.1f} %";
        plotoptions.pie.dataLabels.style = @{@"color": @"black"};
        plotoptions.pie.dataLabels.connectorColor = @"silver";
        
        HIPie *pie = [[HIPie alloc]init];
        pie.name = @"Brands";
        pie.data = @[
                     @{
                         @"name": @"Microsoft Internet Explorer",
                         @"y": @56.33
                         },
                     @{
                         @"name": @"Chrome",
                         @"y": @24.03,
                         @"sliced": @true,
                         @"selected": @true
                         },
                     @{
                         @"name": @"Firefox",
                         @"y": @10.38
                         },
                     @{
                         @"name": @"Safari",
                         @"y": @4.77
                         },
                     @{
                         @"name": @"Opera",
                         @"y": @0.91
                         },
                     @{
                         @"name": @"Proprietary or Undetectable",
                         @"y": @0.2
                         }
                     ];
        
        
        options.chart = chart;
        options.colors = colors;
        options.title = title;
        options.tooltip = tooltip;
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects:pie,  nil];
    
        return options;
    }
    
    else if ([type isEqualToString:@"Pie Legend"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.plotBackgroundColor = [[HIColor alloc]init];
        chart.plotBorderWidth = [[NSNumber alloc]init];
        chart.plotShadow = @false;
        chart.type = @"pie";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Browser market shares January, 2015 to May, 2015";
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.pointFormat = @"{series.name}: <b>{point.percentage:.1f}%</b>";
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.pie = [[HIPlotOptionsPie alloc]init];
        plotoptions.pie.allowPointSelect = @true;
        plotoptions.pie.cursor = @"pointer";
        plotoptions.pie.dataLabels = [[HIPlotOptionsPieDataLabels alloc]init];
        plotoptions.pie.dataLabels.enabled = @false;
        plotoptions.pie.showInLegend = @true;
        
        HIPie *pie = [[HIPie alloc]init];
        pie.name = @"Brands";
        pie.data = @[
                     @{
                         @"name": @"Microsoft Internet Explorer",
                         @"y": @56.33
                         },
                     @{
                         @"name": @"Chrome",
                         @"y": @24.03,
                         @"sliced": @true,
                         @"selected": @true
                         },
                     @{
                         @"name": @"Firefox",
                         @"y": @10.38
                         },
                     @{
                         @"name": @"Safari",
                         @"y": @4.77
                         },
                     @{
                         @"name": @"Opera",
                         @"y": @0.91
                         },
                     @{
                         @"name": @"Proprietary or Undetectable",
                         @"y": @0.2
                         }
                     ];
        
        options.chart = chart;
        options.title = title;
        options.tooltip = tooltip;
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects:pie,  nil];
        

        return options;
    }
    
    else if ([type isEqualToString:@"Pie Monochrome"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.plotBackgroundColor = [[HIColor alloc]init];
        chart.plotBorderWidth = [[NSNumber alloc]init];
        chart.plotShadow = @false;
        chart.type = @"pie";
        
        NSArray *colors = @[
                            [[HIColor alloc]initWithRGB:15 green:72 blue:127],
                            [[HIColor alloc]initWithRGB:52 green:109 blue:164],
                            [[HIColor alloc]initWithRGB:88 green:145 blue:200],
                            [[HIColor alloc]initWithRGB:124 green:181 blue:236],
                            [[HIColor alloc]initWithRGB:160 green:217 blue:255],
                            [[HIColor alloc]initWithRGB:196 green:253 blue:255],
                            [[HIColor alloc]initWithRGB:233 green:255 blue:255],
                            [[HIColor alloc]initWithRGB:255 green:255 blue:255],
                            [[HIColor alloc]initWithRGB:255 green:255 blue:255],
                            [[HIColor alloc]initWithRGB:255 green:255 blue:255]
                            ];
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Browser market shares at a specific website, 2014";
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.pointFormat = @"{series.name}: <b>{point.percentage:.1f}%</b>";
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.pie = [[HIPlotOptionsPie alloc]init];
        plotoptions.pie.allowPointSelect = @true;
        plotoptions.pie.cursor = @"pointer";
        plotoptions.pie.dataLabels = [[HIPlotOptionsPieDataLabels alloc]init];
        plotoptions.pie.dataLabels.enabled = @true;
        plotoptions.pie.dataLabels.format = @"<b>{point.name}</b>: {point.percentage:.1f} %";
        plotoptions.pie.dataLabels.style = @{@"color": @"black"};
        
        HIPie *pie = [[HIPie alloc]init];
        pie.name = @"Brands";
        pie.data = @[
                     @{
                         @"name": @"Microsoft Internet Explorer",
                         @"y": @56.33
                         },
                     @{
                         @"name": @"Chrome",
                         @"y": @24.03,
                         @"sliced": @true,
                         @"selected": @true
                         },
                     @{
                         @"name": @"Firefox",
                         @"y": @10.38
                         },
                     @{
                         @"name": @"Safari",
                         @"y": @4.77
                         },
                     @{
                         @"name": @"Opera",
                         @"y": @0.91
                         },
                     @{
                         @"name": @"Proprietary or Undetectable",
                         @"y": @0.2
                         }
                     ];
        
        options.chart = chart;
        options.colors = colors;
        options.title = title;
        options.tooltip = tooltip;
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects:pie,  nil];

        return options;
    }
    
    else if ([type isEqualToString:@"Pie Semi-circle"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.plotBackgroundColor = [[HIColor alloc]init];
        chart.plotBorderWidth = @0;
        chart.plotShadow = @false;
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Browser<br>shares<br>2015";
        title.align = @"center";
        title.verticalAlign = @"middle";
        title.y = @40;
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.pointFormat = @"{series.name}: <b>{point.percentage:.1f}%</b>";
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.pie = [[HIPlotOptionsPie alloc]init];
        plotoptions.pie.dataLabels = [[HIPlotOptionsPieDataLabels alloc]init];
        plotoptions.pie.dataLabels.enabled = @true;
        plotoptions.pie.dataLabels.distance = @-50;
        plotoptions.pie.dataLabels.style = @{@"color": @"white", @"fontWeight" : @"bold", @"textShadow" : @"0px 1px 2px black"};
        plotoptions.pie.startAngle = @-90;
        plotoptions.pie.endAngle = @90;
        plotoptions.pie.center = @[@"50%", @"75%"];
        
        HIPie *pie = [[HIPie alloc]init];
        HIPieData *data = [[HIPieData alloc]init];
        data.name = @"Proprietary or Undetectable";
        data.y = @0.2;
        data.dataLabels = @{@"enabled": @false};
        pie.name = @"Browser share";
        pie.innerSize = @"50%";
        pie.data = @[
                     @[
                         @"Firefox",
                         @10.38
                         ],
                     @[
                         @"IE",
                         @56.33
                         ],
                     @[
                         @"Chrome",
                         @24.03
                         ],
                     @[
                         @"Safari",
                         @4.77
                         ],
                     @[
                         @"Opera",
                         @0.91
                         ],
                     data
                     ];
        
        options.chart = chart;
        options.title = title;
        options.tooltip = tooltip;
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects:pie,  nil];

        return options;
    }
    
    else if ([type isEqualToString:@"Polar Spider"]) {
        HIChart *chart = [[HIChart alloc]init];
        chart.polar = @true;
        chart.type = @"line";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Budget vs spending";
        title.x = @-90;
        
        HIPane *pane = [[HIPane alloc]init];
        pane.size = @"80%";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = @[
                             @"Sales",
                             @"Marketing",
                             @"Development",
                             @"Customer Support",
                             @"Information Technology",
                             @"Administration"
                             ];
        xaxis.tickmarkPlacement = @"on";
        xaxis.lineWidth = @0;
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.min = @0;
        yaxis.lineWidth = @0;
        yaxis.gridLineInterpolation = @"polygon";
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.shared = @true;
        tooltip.pointFormat = @"<span style=\"color:{series.color}\">{series.name}: <b>${point.y:,.0f}</b><br/>";
        
        HILegend *legend = [[HILegend alloc]init];
        legend.align = @"right";
        legend.verticalAlign = @"top";
        legend.y = @70;
        legend.layout = @"vertical";
        
        HILine *line1 = [[HILine alloc]init];
        line1.name = @"Allocated Budget";
        line1.data = @[
                       @43000,
                       @19000,
                       @60000,
                       @35000,
                       @17000,
                       @10000
                       ];
        line1.pointPlacement = @"on";
        
        HILine *line2 = [[HILine alloc]init];
        line2.name = @"Actual spending";
        line2.data = @[
                       @50000,
                       @39000,
                       @42000,
                       @31000,
                       @26000,
                       @14000
                       ];
        line2.pointPlacement = @"on";
        
        
        HIOptions *options = [[HIOptions alloc]init];
        options.chart = chart;
        options.title = title;
        options.pane = pane;
        options.tooltip = tooltip;
        options.legend = legend;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.series = [NSMutableArray arrayWithObjects:line1, line2, nil];

        return options;
    }
    
    else if ([type isEqualToString:@"Polygon"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HITitle *title = [[HITitle alloc]init];
        title.text  =@"Height vs Weight";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"Polygon series in Highcharts";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.gridLineWidth = @1;
        xaxis.title = [[HIXAxisTitle alloc]init];
        xaxis.title.text = @"Height (cm)";
        xaxis.startOnTick = @true;
        xaxis.endOnTick = @true;
        xaxis.showLastLabel = @true;
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Weight (kg)";
        
        HILegend *legend = [[HILegend alloc]init];
        legend.layout = @"vertical";
        legend.align = @"right";
        legend.verticalAlign = @"middle";
        
        HIPolygon *polygon = [[HIPolygon alloc]init];
        polygon.name = @"Target";
        polygon.color = [[HIColor alloc]initWithRGBA:124 green:181 blue:236 alpha:0.5];
        polygon.enableMouseTracking = @false;
        polygon.data = @[
                         @[
                             @153,
                             @42
                             ],
                         @[
                             @149,
                             @46
                             ],
                         @[
                             @149,
                             @55
                             ],
                         @[
                             @152,
                             @60
                             ],
                         @[
                             @159,
                             @70
                             ],
                         @[
                             @170,
                             @77
                             ],
                         @[
                             @180,
                             @70
                             ],
                         @[
                             @180,
                             @60
                             ],
                         @[
                             @173,
                             @52
                             ],
                         @[
                             @166,
                             @45
                             ]
                         ];
        
        HIScatter *scatter = [[HIScatter alloc]init];
        scatter.name = @"Observations";
        scatter.color = [[HIColor alloc]initWithHexValue:@"434348"];
        scatter.data = @[
                         @[
                             @161.2,
                             @51.6
                             ],
                         @[
                             @167.5,
                             @59
                             ],
                         @[
                             @159.5,
                             @49.2
                             ],
                         @[
                             @157,
                             @63
                             ],
                         @[
                             @155.8,
                             @53.6
                             ],
                         @[
                             @170,
                             @59
                             ],
                         @[
                             @159.1,
                             @47.6
                             ],
                         @[
                             @166,
                             @69.8
                             ],
                         @[
                             @176.2,
                             @66.8
                             ],
                         @[
                             @160.2,
                             @75.2
                             ],
                         @[
                             @172.5,
                             @55.2
                             ],
                         @[
                             @170.9,
                             @54.2
                             ],
                         @[
                             @172.9,
                             @62.5
                             ],
                         @[
                             @153.4,
                             @42
                             ],
                         @[
                             @160,
                             @50
                             ],
                         @[
                             @147.2,
                             @49.8
                             ],
                         @[
                             @168.2,
                             @49.2
                             ],
                         @[
                             @175,
                             @73.2
                             ],
                         @[
                             @157,
                             @47.8
                             ],
                         @[
                             @167.6,
                             @68.8
                             ],
                         @[
                             @159.5,
                             @50.6
                             ],
                         @[
                             @175,
                             @82.5
                             ],
                         @[
                             @166.8,
                             @57.2
                             ],
                         @[
                             @176.5,
                             @87.8
                             ],
                         @[
                             @170.2,
                             @72.8
                             ],
                         @[
                             @174,
                             @54.5
                             ],
                         @[
                             @173,
                             @59.8
                             ],
                         @[
                             @179.9,
                             @67.3
                             ],
                         @[
                             @170.5,
                             @67.8
                             ],
                         @[
                             @160,
                             @47
                             ],
                         @[
                             @154.4,
                             @46.2
                             ],
                         @[
                             @162,
                             @55
                             ],
                         @[
                             @176.5,
                             @83
                             ],
                         @[
                             @160,
                             @54.4
                             ],
                         @[
                             @152,
                             @45.8
                             ],
                         @[
                             @162.1,
                             @53.6
                             ],
                         @[
                             @170,
                             @73.2
                             ],
                         @[
                             @160.2,
                             @52.1
                             ],
                         @[
                             @161.3,
                             @67.9
                             ],
                         @[
                             @166.4,
                             @56.6
                             ],
                         @[
                             @168.9,
                             @62.3
                             ],
                         @[
                             @163.8,
                             @58.5
                             ],
                         @[
                             @167.6,
                             @54.5
                             ],
                         @[
                             @160,
                             @50.2
                             ],
                         @[
                             @161.3,
                             @60.3
                             ],
                         @[
                             @167.6,
                             @58.3
                             ],
                         @[
                             @165.1,
                             @56.2
                             ],
                         @[
                             @160,
                             @50.2
                             ],
                         @[
                             @170,
                             @72.9
                             ],
                         @[
                             @157.5,
                             @59.8
                             ],
                         @[
                             @167.6,
                             @61
                             ],
                         @[
                             @160.7,
                             @69.1
                             ],
                         @[
                             @163.2,
                             @55.9
                             ],
                         @[
                             @152.4,
                             @46.5
                             ],
                         @[
                             @157.5,
                             @54.3
                             ],
                         @[
                             @168.3,
                             @54.8
                             ],
                         @[
                             @180.3,
                             @60.7
                             ],
                         @[
                             @165.5,
                             @60
                             ],
                         @[
                             @165,
                             @62
                             ],
                         @[
                             @164.5,
                             @60.3
                             ],
                         @[
                             @156,
                             @52.7
                             ],
                         @[
                             @160,
                             @74.3
                             ],
                         @[
                             @163,
                             @62
                             ],
                         @[
                             @165.7,
                             @73.1
                             ],
                         @[
                             @161,
                             @80
                             ],
                         @[
                             @162,
                             @54.7
                             ],
                         @[
                             @166,
                             @53.2
                             ],
                         @[
                             @174,
                             @75.7
                             ],
                         @[
                             @172.7,
                             @61.1
                             ],
                         @[
                             @167.6,
                             @55.7
                             ],
                         @[
                             @151.1,
                             @48.7
                             ],
                         @[
                             @164.5,
                             @52.3
                             ],
                         @[
                             @163.5,
                             @50
                             ],
                         @[
                             @152,
                             @59.3
                             ],
                         @[
                             @169,
                             @62.5
                             ],
                         @[
                             @164,
                             @55.7
                             ],
                         @[
                             @161.2,
                             @54.8
                             ],
                         @[
                             @155,
                             @45.9
                             ],
                         @[
                             @170,
                             @70.6
                             ],
                         @[
                             @176.2,
                             @67.2
                             ],
                         @[
                             @170,
                             @69.4
                             ],
                         @[
                             @162.5,
                             @58.2
                             ],
                         @[
                             @170.3,
                             @64.8
                             ],
                         @[
                             @164.1,
                             @71.6
                             ],
                         @[
                             @169.5,
                             @52.8
                             ],
                         @[
                             @163.2,
                             @59.8
                             ],
                         @[
                             @154.5,
                             @49
                             ],
                         @[
                             @159.8,
                             @50
                             ],
                         @[
                             @173.2,
                             @69.2
                             ],
                         @[
                             @170,
                             @55.9
                             ],
                         @[
                             @161.4,
                             @63.4
                             ],
                         @[
                             @169,
                             @58.2
                             ],
                         @[
                             @166.2,
                             @58.6
                             ],
                         @[
                             @159.4,
                             @45.7
                             ],
                         @[
                             @162.5,
                             @52.2
                             ],
                         @[
                             @159,
                             @48.6
                             ],
                         @[
                             @162.8,
                             @57.8
                             ],
                         @[
                             @159,
                             @55.6
                             ],
                         @[
                             @179.8,
                             @66.8
                             ],
                         @[
                             @162.9,
                             @59.4
                             ],
                         @[
                             @161,
                             @53.6
                             ],
                         @[
                             @151.1,
                             @73.2
                             ],
                         @[
                             @168.2,
                             @53.4
                             ],
                         @[
                             @168.9,
                             @69
                             ],
                         @[
                             @173.2,
                             @58.4
                             ],
                         @[
                             @171.8,
                             @56.2
                             ],
                         @[
                             @178,
                             @70.6
                             ],
                         @[
                             @164.3,
                             @59.8
                             ],
                         @[
                             @163,
                             @72
                             ],
                         @[
                             @168.5,
                             @65.2
                             ],
                         @[
                             @166.8,
                             @56.6
                             ],
                         @[
                             @172.7,
                             @105.2
                             ],
                         @[
                             @163.5,
                             @51.8
                             ],
                         @[
                             @169.4,
                             @63.4
                             ],
                         @[
                             @167.8,
                             @59
                             ],
                         @[
                             @159.5,
                             @47.6
                             ],
                         @[
                             @167.6,
                             @63
                             ],
                         @[
                             @161.2,
                             @55.2
                             ],
                         @[
                             @160,
                             @45
                             ],
                         @[
                             @163.2,
                             @54
                             ],
                         @[
                             @162.2,
                             @50.2
                             ],
                         @[
                             @161.3,
                             @60.2
                             ],
                         @[
                             @149.5,
                             @44.8
                             ],
                         @[
                             @157.5,
                             @58.8
                             ],
                         @[
                             @163.2,
                             @56.4
                             ],
                         @[
                             @172.7,
                             @62
                             ],
                         @[
                             @155,
                             @49.2
                             ],
                         @[
                             @156.5,
                             @67.2
                             ],
                         @[
                             @164,
                             @53.8
                             ],
                         @[
                             @160.9,
                             @54.4
                             ],
                         @[
                             @162.8,
                             @58
                             ],
                         @[
                             @167,
                             @59.8
                             ],
                         @[
                             @160,
                             @54.8
                             ],
                         @[
                             @160,
                             @43.2
                             ],
                         @[
                             @168.9,
                             @60.5
                             ],
                         @[
                             @158.2,
                             @46.4
                             ],
                         @[
                             @156,
                             @64.4
                             ],
                         @[
                             @160,
                             @48.8
                             ],
                         @[
                             @167.1,
                             @62.2
                             ],
                         @[
                             @158,
                             @55.5
                             ],
                         @[
                             @167.6,
                             @57.8
                             ],
                         @[
                             @156,
                             @54.6
                             ],
                         @[
                             @162.1,
                             @59.2
                             ],
                         @[
                             @173.4,
                             @52.7
                             ],
                         @[
                             @159.8,
                             @53.2
                             ],
                         @[
                             @170.5,
                             @64.5
                             ],
                         @[
                             @159.2,
                             @51.8
                             ],
                         @[
                             @157.5,
                             @56
                             ],
                         @[
                             @161.3,
                             @63.6
                             ],
                         @[
                             @162.6,
                             @63.2
                             ],
                         @[
                             @160,
                             @59.5
                             ],
                         @[
                             @168.9,
                             @56.8
                             ],
                         @[
                             @165.1,
                             @64.1
                             ],
                         @[
                             @162.6,
                             @50
                             ],
                         @[
                             @165.1,
                             @72.3
                             ],
                         @[
                             @166.4,
                             @55
                             ],
                         @[
                             @160,
                             @55.9
                             ],
                         @[
                             @152.4,
                             @60.4
                             ],
                         @[
                             @170.2,
                             @69.1
                             ],
                         @[
                             @162.6,
                             @84.5
                             ],
                         @[
                             @170.2,
                             @55.9
                             ],
                         @[
                             @158.8,
                             @55.5
                             ],
                         @[
                             @172.7,
                             @69.5
                             ],
                         @[
                             @167.6,
                             @76.4
                             ],
                         @[
                             @162.6,
                             @61.4
                             ],
                         @[
                             @167.6,
                             @65.9
                             ],
                         @[
                             @156.2,
                             @58.6
                             ],
                         @[
                             @175.2,
                             @66.8
                             ],
                         @[
                             @172.1,
                             @56.6
                             ],
                         @[
                             @162.6,
                             @58.6
                             ],
                         @[
                             @160,
                             @55.9
                             ],
                         @[
                             @165.1,
                             @59.1
                             ],
                         @[
                             @182.9,
                             @81.8
                             ],
                         @[
                             @166.4,
                             @70.7
                             ],
                         @[
                             @165.1,
                             @56.8
                             ],
                         @[
                             @177.8,
                             @60
                             ],
                         @[
                             @165.1,
                             @58.2
                             ],
                         @[
                             @175.3,
                             @72.7
                             ],
                         @[
                             @154.9,
                             @54.1
                             ],
                         @[
                             @158.8,
                             @49.1
                             ],
                         @[
                             @172.7,
                             @75.9
                             ],
                         @[
                             @168.9,
                             @55
                             ],
                         @[
                             @161.3,
                             @57.3
                             ],
                         @[
                             @167.6,
                             @55
                             ],
                         @[
                             @165.1,
                             @65.5
                             ],
                         @[
                             @175.3,
                             @65.5
                             ],
                         @[
                             @157.5,
                             @48.6
                             ],
                         @[
                             @163.8,
                             @58.6
                             ],
                         @[
                             @167.6,
                             @63.6
                             ],
                         @[
                             @165.1,
                             @55.2
                             ],
                         @[
                             @165.1,
                             @62.7
                             ],
                         @[
                             @168.9,
                             @56.6
                             ],
                         @[
                             @162.6,
                             @53.9
                             ],
                         @[
                             @164.5,
                             @63.2
                             ],
                         @[
                             @176.5,
                             @73.6
                             ],
                         @[
                             @168.9,
                             @62
                             ],
                         @[
                             @175.3,
                             @63.6
                             ],
                         @[
                             @159.4,
                             @53.2
                             ],
                         @[
                             @160,
                             @53.4
                             ],
                         @[
                             @170.2,
                             @55
                             ],
                         @[
                             @162.6,
                             @70.5
                             ],
                         @[
                             @167.6,
                             @54.5
                             ],
                         @[
                             @162.6,
                             @54.5
                             ],
                         @[
                             @160.7,
                             @55.9
                             ],
                         @[
                             @160,
                             @59
                             ],
                         @[
                             @157.5,
                             @63.6
                             ],
                         @[
                             @162.6,
                             @54.5
                             ],
                         @[
                             @152.4,
                             @47.3
                             ],
                         @[
                             @170.2,
                             @67.7
                             ],
                         @[
                             @165.1,
                             @80.9
                             ],
                         @[
                             @172.7,
                             @70.5
                             ],
                         @[
                             @165.1,
                             @60.9
                             ],
                         @[
                             @170.2,
                             @63.6
                             ],
                         @[
                             @170.2,
                             @54.5
                             ],
                         @[
                             @170.2,
                             @59.1
                             ],
                         @[
                             @161.3,
                             @70.5
                             ],
                         @[
                             @167.6,
                             @52.7
                             ],
                         @[
                             @167.6,
                             @62.7
                             ],
                         @[
                             @165.1,
                             @86.3
                             ],
                         @[
                             @162.6,
                             @66.4
                             ],
                         @[
                             @152.4,
                             @67.3
                             ],
                         @[
                             @168.9,
                             @63
                             ],
                         @[
                             @170.2,
                             @73.6
                             ],
                         @[
                             @175.2,
                             @62.3
                             ],
                         @[
                             @175.2,
                             @57.7
                             ],
                         @[
                             @160,
                             @55.4
                             ],
                         @[
                             @165.1,
                             @104.1
                             ],
                         @[
                             @174,
                             @55.5
                             ],
                         @[
                             @170.2,
                             @77.3
                             ],
                         @[
                             @160,
                             @80.5
                             ],
                         @[
                             @167.6,
                             @64.5
                             ],
                         @[
                             @167.6,
                             @72.3
                             ],
                         @[
                             @167.6,
                             @61.4
                             ],
                         @[
                             @154.9,
                             @58.2
                             ],
                         @[
                             @162.6,
                             @81.8
                             ],
                         @[
                             @175.3,
                             @63.6
                             ],
                         @[
                             @171.4,
                             @53.4
                             ],
                         @[
                             @157.5,
                             @54.5
                             ],
                         @[
                             @165.1,
                             @53.6
                             ],
                         @[
                             @160,
                             @60
                             ],
                         @[
                             @174,
                             @73.6
                             ],
                         @[
                             @162.6,
                             @61.4
                             ],
                         @[
                             @174,
                             @55.5
                             ],
                         @[
                             @162.6,
                             @63.6
                             ],
                         @[
                             @161.3,
                             @60.9
                             ],
                         @[
                             @156.2,
                             @60
                             ],
                         @[
                             @149.9,
                             @46.8
                             ],
                         @[
                             @169.5,
                             @57.3
                             ],
                         @[
                             @160,
                             @64.1
                             ],
                         @[
                             @175.3,
                             @63.6
                             ],
                         @[
                             @169.5,
                             @67.3
                             ],
                         @[
                             @160,
                             @75.5
                             ],
                         @[
                             @172.7,
                             @68.2
                             ],
                         @[
                             @162.6,
                             @61.4
                             ],
                         @[
                             @157.5,
                             @76.8
                             ],
                         @[
                             @176.5,
                             @71.8
                             ],
                         @[
                             @164.4,
                             @55.5
                             ],
                         @[
                             @160.7,
                             @48.6
                             ],
                         @[
                             @174,
                             @66.4
                             ],
                         @[
                             @163.8,
                             @67.3
                             ]
                         ];
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.headerFormat = @"<b>{series.name}</b><br>";
        tooltip.pointFormat = @"{point.x} cm, {point.y} kg";
        
        
        options.title = title;
        options.subtitle = subtitle;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.legend = legend;
        options.tooltip = tooltip;
        options.series = [NSMutableArray arrayWithObjects:polygon, scatter,  nil];
        return options;
    }
    
    else if ([type isEqualToString:@"Pyramid"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"pyramid";
        chart.marginRight = @100;
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Sales pyramid";
        title.x = @-50;
        
        HILegend *legend = [[HILegend alloc]init];
        legend.enabled = @true;
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.pyramid = [[HIPlotOptionsPyramid alloc]init];
        plotoptions.pyramid.dataLabels = [[HIPlotOptionsPyramidDataLabels alloc]init];
        plotoptions.pyramid.dataLabels.enabled = @true;
        plotoptions.pyramid.dataLabels.format = @"<b>{point.name}</b> ({point.y:,.0f})";
        plotoptions.pyramid.dataLabels.color = [[HIColor alloc]initWithName:@"black"];
        plotoptions.pyramid.dataLabels.softConnector = @true;
        
        HIPyramid *pyramind = [[HIPyramid alloc]init];
        pyramind.name = @"Unique users";
        pyramind.data = @[
                          @[
                              @"Website visits",
                              @15654
                              ],
                          @[
                              @"Downloads",
                              @4064
                              ],
                          @[
                              @"Requested price list",
                              @1987
                              ],
                          @[
                              @"Invoice sent",
                              @976
                              ],
                          @[
                              @"Finalized",
                              @846
                              ]
                          ];
        
        options.chart = chart;
        options.title = title;
        options.legend = legend;
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects: pyramind, nil];
        

        return options;
    }
    
    else if ([type isEqualToString:@"Spline Irregular Time"]) {
        
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"spline";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Snow depth at Vikjafjellet, Norway";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"Irregular time data in Highcharts JS";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.type = @"datetime";
        xaxis.dateTimeLabelFormats = @{
                                       @"month": @"%e. %b",
                                       @"year": @"%b"
                                       };
        xaxis.title = [[HIXAxisTitle alloc]init];
        xaxis.title.text = @"Date";
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Snow depth (m)";
        yaxis.min = @0;
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.headerFormat = @"<b>{series.name}</b><br>";
        tooltip.pointFormat = @"{point.x:%e. %b}: {point.y:.2f} m";
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.spline = [[HIPlotOptionsSpline alloc]init];
        plotoptions.spline.marker = [[HIPlotOptionsSplineMarker alloc]init];
        plotoptions.spline.marker.enabled = @true;
        
        HISpline *spline1 = [[HISpline alloc]init];
        spline1.name = @"Winter 2012-2013";
        spline1.data = @[
                         @[
                             @25315200000,
                             @0
                             ],
                         @[
                             @26524800000,
                             @0.28
                             ],
                         @[
                             @26956800000,
                             @0.25
                             ],
                         @[
                             @28512000000,
                             @0.2
                             ],
                         @[
                             @28944000000,
                             @0.28
                             ],
                         @[
                             @31017600000,
                             @0.28
                             ],
                         @[
                             @31276800000,
                             @0.47
                             ],
                         @[
                             @32400000000,
                             @0.79
                             ],
                         @[
                             @33696000000,
                             @0.72
                             ],
                         @[
                             @34387200000,
                             @1.02
                             ],
                         @[
                             @35078400000,
                             @1.12
                             ],
                         @[
                             @36288000000,
                             @1.2
                             ],
                         @[
                             @37497600000,
                             @1.18
                             ],
                         @[
                             @40176000000,
                             @1.19
                             ],
                         @[
                             @41904000000,
                             @1.85
                             ],
                         @[
                             @42249600000,
                             @2.22
                             ],
                         @[
                             @43459200000,
                             @1.15
                             ],
                         @[
                             @44755200000,
                             @0
                             ]
                         ];
        
        HISpline *spline2 = [[HISpline alloc]init];
        spline2.name = @"Winter 2013-2014";
        spline2.data = @[
                         @[
                             @26006400000,
                             @0
                             ],
                         @[
                             @26956800000,
                             @0.4
                             ],
                         @[
                             @28857600000,
                             @0.25
                             ],
                         @[
                             @31536000000,
                             @1.66
                             ],
                         @[
                             @32313600000,
                             @1.8
                             ],
                         @[
                             @35769600000,
                             @1.76
                             ],
                         @[
                             @38707200000,
                             @2.62
                             ],
                         @[
                             @40867200000,
                             @2.41
                             ],
                         @[
                             @41817600000,
                             @2.05
                             ],
                         @[
                             @43027200000,
                             @1.7
                             ],
                         @[
                             @43891200000,
                             @1.1
                             ],
                         @[
                             @45360000000,
                             @0
                             ]
                         ];
        
        HISpline *spline3 = [[HISpline alloc]init];
        spline3.name = @"Winter 2014-2015";
        spline3.data = @[
                         @[
                             @28339200000,
                             @0
                             ],
                         @[
                             @29289600000,
                             @0.25
                             ],
                         @[
                             @30499200000,
                             @1.41
                             ],
                         @[
                             @30931200000,
                             @1.64
                             ],
                         @[
                             @31795200000,
                             @1.6
                             ],
                         @[
                             @32918400000,
                             @2.55
                             ],
                         @[
                             @33523200000,
                             @2.62
                             ],
                         @[
                             @34473600000,
                             @2.5
                             ],
                         @[
                             @35337600000,
                             @2.42
                             ],
                         @[
                             @37065600000,
                             @2.74
                             ],
                         @[
                             @37756800000,
                             @2.62
                             ],
                         @[
                             @38620800000,
                             @2.6
                             ],
                         @[
                             @39398400000,
                             @2.81
                             ],
                         @[
                             @40262400000,
                             @2.63
                             ],
                         @[
                             @41644800000,
                             @2.77
                             ],
                         @[
                             @42249600000,
                             @2.68
                             ],
                         @[
                             @42681600000,
                             @2.56
                             ],
                         @[
                             @43113600000,
                             @2.39
                             ],
                         @[
                             @43545600000,
                             @2.3
                             ],
                         @[
                             @44928000000,
                             @2
                             ],
                         @[
                             @45360000000,
                             @1.85
                             ],
                         @[
                             @45792000000,
                             @1.49
                             ],
                         @[
                             @46483200000,
                             @1.08
                             ]
                         ];
        
        
        options.chart = chart;
        options.title = title;
        options.subtitle = subtitle;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.tooltip = tooltip;
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects:spline1, spline2, spline3, nil];
        

        return options;
    }
    
    else if ([type isEqualToString:@"Spline Plot Bands"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"spline";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Wind speed during two days";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"May 31 and and June 1, 2015 at two locations in Vik i Sogn, Norway";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.type = @"datetime";
        xaxis.labels = [[HIXAxisLabels alloc]init];
        xaxis.labels.overflow = @"justify";
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Wind speed (m/s)";
        yaxis.minorGridLineWidth = @0;
        yaxis.gridLineWidth = @0;
        yaxis.alternateGridColor = [[HIColor alloc]init];
        HIYAxisPlotBands *band1 = [[HIYAxisPlotBands alloc]init];
        band1.from = @0.3;
        band1.to = @1.5;
        band1.color = [[HIColor alloc]initWithRGBA:68 green:170 blue:213 alpha:0.1];
        band1.label = [[HIYAxisPlotBandsLabel alloc]init];
        band1.label.text = @"Light air";
        band1.label.style = @{@"color": @"#606060"};
        HIYAxisPlotBands *band2 = [[HIYAxisPlotBands alloc]init];
        band2.from = @1.5;
        band2.to = @3.3;
        band2.color = [[HIColor alloc]initWithRGBA:0 green:0 blue:0 alpha:0];
        band2.label = [[HIYAxisPlotBandsLabel alloc]init];
        band2.label.text = @"Light breeze";
        band2.label.style = @{@"color": @"#606060"};
        HIYAxisPlotBands *band3 = [[HIYAxisPlotBands alloc]init];
        band3.from = @3.3;
        band3.to = @5.5;
        band3.color = [[HIColor alloc]initWithRGBA:68 green:170 blue:213 alpha:0.1];
        band3.label = [[HIYAxisPlotBandsLabel alloc]init];
        band3.label.text = @"Gentel breeze";
        band3.label.style = @{@"color": @"#606060"};
        HIYAxisPlotBands *band4 = [[HIYAxisPlotBands alloc]init];
        band4.from = @5.5;
        band4.to = @8;
        band4.color = [[HIColor alloc]initWithRGBA:0 green:0 blue:0 alpha:0];
        band4.label = [[HIYAxisPlotBandsLabel alloc]init];
        band4.label.text = @"Moderate breeze";
        band4.label.style = @{@"color": @"#606060"};
        HIYAxisPlotBands *band5 = [[HIYAxisPlotBands alloc]init];
        band5.from = @8;
        band5.to = @11;
        band5.color = [[HIColor alloc]initWithRGBA:68 green:170 blue:213 alpha:0.1];
        band5.label = [[HIYAxisPlotBandsLabel alloc]init];
        band5.label.text = @"Fresh breeze";
        band5.label.style = @{@"color": @"#606060"};
        HIYAxisPlotBands *band6 = [[HIYAxisPlotBands alloc]init];
        band6.from = @11;
        band6.to = @14;
        band6.color = [[HIColor alloc]initWithRGBA:0 green:0 blue:0 alpha:0];
        band6.label = [[HIYAxisPlotBandsLabel alloc]init];
        band6.label.text = @"Strong breeze";
        band6.label.style = @{@"color": @"#606060"};
        HIYAxisPlotBands *band7 = [[HIYAxisPlotBands alloc]init];
        band7.from = @14;
        band7.to = @15;
        band7.color = [[HIColor alloc]initWithRGBA:68 green:170 blue:213 alpha:0.1];
        band7.label = [[HIYAxisPlotBandsLabel alloc]init];
        band7.label.text = @"High wind";
        band7.label.style = @{@"color": @"#606060"};
        yaxis.plotBands = @[band1, band2, band3, band4, band5, band6, band7];
        
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.valueSuffix = @" m/s";
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.spline = [[HIPlotOptionsSpline alloc]init];
        plotoptions.spline.lineWidth = @4;
        HIPlotOptionsSplineStates *state = [[HIPlotOptionsSplineStates alloc]init];
        state.hover = [[HIPlotOptionsSplineStatesHover alloc]init];
        state.hover.lineWidth = @5;
        plotoptions.spline.states = @[state];
        plotoptions.spline.marker = [[HIPlotOptionsSplineMarker alloc]init];
        plotoptions.spline.marker.enabled = @false;
        plotoptions.spline.pointInterval = @3600000;
        plotoptions.spline.pointStart = @1433030400000;
        
        HISpline *spline1 = [[HISpline alloc]init];
        spline1.name = @"Hestavollane";
        spline1.data = @[
                         @0.2,
                         @0.8,
                         @0.8,
                         @0.8,
                         @1,
                         @1.3,
                         @1.5,
                         @2.9,
                         @1.9,
                         @2.6,
                         @1.6,
                         @3,
                         @4,
                         @3.6,
                         @4.5,
                         @4.2,
                         @4.5,
                         @4.5,
                         @4,
                         @3.1,
                         @2.7,
                         @4,
                         @2.7,
                         @2.3,
                         @2.3,
                         @4.1,
                         @7.7,
                         @7.1,
                         @5.6,
                         @6.1,
                         @5.8,
                         @8.6,
                         @7.2,
                         @9,
                         @10.9,
                         @11.5,
                         @11.6,
                         @11.1,
                         @12,
                         @12.3,
                         @10.7,
                         @9.4,
                         @9.8,
                         @9.6,
                         @9.8,
                         @9.5,
                         @8.5,
                         @7.4,
                         @7.6
                         ];
        
        HISpline *spline2 = [[HISpline alloc]init];
        spline2.name = @"Vik";
        spline2.data = @[
                         @0,
                         @0,
                         @0.6,
                         @0.9,
                         @0.8,
                         @0.2,
                         @0,
                         @0,
                         @0,
                         @0.1,
                         @0.6,
                         @0.7,
                         @0.8,
                         @0.6,
                         @0.2,
                         @0,
                         @0.1,
                         @0.3,
                         @0.3,
                         @0,
                         @0.1,
                         @0,
                         @0,
                         @0,
                         @0.2,
                         @0.1,
                         @0,
                         @0.3,
                         @0,
                         @0.1,
                         @0.2,
                         @0.1,
                         @0.3,
                         @0.3,
                         @0,
                         @3.1,
                         @3.1,
                         @2.5,
                         @1.5,
                         @1.9,
                         @2.1,
                         @1,
                         @2.3,
                         @1.9,
                         @1.2,
                         @0.7,
                         @1.3,
                         @0.4,
                         @0.3
                         ];
        
        HINavigation *navigation = [[HINavigation alloc]init];
        navigation.menuItemStyle = @{@"fontSize": @"10px"};
        
        
        
        options.chart = chart;
        options.title = title;
        options.subtitle = subtitle;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.tooltip = tooltip;
        options.plotOptions = plotoptions;
        options.navigation = navigation;
        options.series = [NSMutableArray arrayWithObjects:spline1, spline2, nil];
        

        return options;
    }
    
    else if ([type isEqualToString:@"Spline Symbols"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"spline";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Monthly Average Temperature";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"Source: WorldClimate.com";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = @[
                             @"Jan",
                             @"Feb",
                             @"Mar",
                             @"Apr",
                             @"May",
                             @"Jun",
                             @"Jul",
                             @"Aug",
                             @"Sep",
                             @"Oct",
                             @"Nov",
                             @"Dec"
                             ];
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Temperature";
        yaxis.labels = [[HIYAxisLabels alloc]init];
        
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.crosshairs = @true;
        tooltip.shared = @true;
        
        HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
        plotoptions.spline = [[HIPlotOptionsSpline alloc]init];
        plotoptions.spline.marker = [[HIPlotOptionsSplineMarker alloc]init];
        plotoptions.spline.marker.radius = @4;
        plotoptions.spline.marker.lineColor = [[HIColor alloc]initWithHexValue:@"666666"];
        plotoptions.spline.marker.lineWidth = @1;
        
        HISpline *spline1 = [[HISpline alloc]init];
        spline1.name = @"Tokyo";
        spline1.marker = [[HISplineMarker alloc]init];
        spline1.marker.symbol = @"square";
        HISplineData *data1 = [[HISplineData alloc]init];
        data1.y = @26.5;
        data1.marker = [[HISplineDataMarker alloc]init];
        data1.marker.symbol = @"url(https://www.highcharts.com/samples/graphics/sun.png)";
        spline1.data = @[
                         @7,
                         @6.9,
                         @9.5,
                         @14.5,
                         @18.2,
                         @21.5,
                         @25.2,
                         data1,
                         @23.3,
                         @18.3,
                         @13.9,
                         @9.6
                         ];
        
        
        HISpline *spline2 = [[HISpline alloc]init];
        spline2.name = @"London";
        spline2.marker = [[HISplineMarker alloc]init];
        spline2.marker.symbol = @"diamond";
        HISplineData *data2 = [[HISplineData alloc]init];
        data2.y = @3.9;
        data2.marker = [[HISplineDataMarker alloc]init];
        data2.marker.symbol = @"url(https://www.highcharts.com/samples/graphics/snow.png)";
        spline2.data = @[
                         data2,
                         @4.2,
                         @5.7,
                         @8.5,
                         @11.9,
                         @15.2,
                         @17,
                         @16.6,
                         @14.2,
                         @10.3,
                         @6.6,
                         @4.8
                         ];
        
        options.chart = chart;
        options.title = title;
        options.subtitle = subtitle;
        options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
        options.tooltip = tooltip;
        options.plotOptions = plotoptions;
        options.series = [NSMutableArray arrayWithObjects:spline1, spline2, nil];
        

        return options;
    }
    else if ([type isEqualToString:@"Heatmap"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"heatmap";
        chart.marginTop = @40;
        chart.marginBottom = @80;
        chart.plotBorderWidth = @1;
        options.chart = chart;
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Sales per employee per weekday";
        options.title = title;
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.categories = @[
                             @"Alexander",
                             @"Marie",
                             @"Maximilian",
                             @"Sophia",
                             @"Lukas",
                             @"Maria",
                             @"Leon",
                             @"Anna",
                             @"Tim",
                             @"Laura"
                             ];
        options.xAxis = @[xaxis];
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.categories = @[
                             @"Monday",
                             @"Tuesday",
                             @"Wednesday",
                             @"Thursday",
                             @"Friday"
                             ];
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"";
        options.yAxis = @[yaxis];
        
        HILegend *legend = [[HILegend alloc]init];
        legend.align = @"right";
        legend.layout = @"vertical";
        legend.margin = @0;
        legend.verticalAlign = @"top";
        legend.y = @25;
        legend.symbolHeight = @280;
        options.legend = legend;
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.enabled = @false;
        options.tooltip = tooltip;
        
        HIHeatmap *heatmap = [[HIHeatmap alloc]init];
        heatmap.name = @"Sales per employee";
        heatmap.borderWidth = @1;
        heatmap.dataLabels = [[HIHeatmapDataLabels alloc]init];
        heatmap.dataLabels.enabled = @true;
        heatmap.dataLabels.color = [[HIColor alloc]initWithHexValue:@"000000"];
        heatmap.data = @[
                         @[
                             @0,
                             @0,
                             @10
                             ],
                         @[
                             @0,
                             @1,
                             @19
                             ],
                         @[
                             @0,
                             @2,
                             @8
                             ],
                         @[
                             @0,
                             @3,
                             @24
                             ],
                         @[
                             @0,
                             @4,
                             @67
                             ],
                         @[
                             @1,
                             @0,
                             @92
                             ],
                         @[
                             @1,
                             @1,
                             @58
                             ],
                         @[
                             @1,
                             @2,
                             @78
                             ],
                         @[
                             @1,
                             @3,
                             @117
                             ],
                         @[
                             @1,
                             @4,
                             @48
                             ],
                         @[
                             @2,
                             @0,
                             @35
                             ],
                         @[
                             @2,
                             @1,
                             @15
                             ],
                         @[
                             @2,
                             @2,
                             @123
                             ],
                         @[
                             @2,
                             @3,
                             @64
                             ],
                         @[
                             @2,
                             @4,
                             @52
                             ],
                         @[
                             @3,
                             @0,
                             @72
                             ],
                         @[
                             @3,
                             @1,
                             @132
                             ],
                         @[
                             @3,
                             @2,
                             @114
                             ],
                         @[
                             @3,
                             @3,
                             @19
                             ],
                         @[
                             @3,
                             @4,
                             @16
                             ],
                         @[
                             @4,
                             @0,
                             @38
                             ],
                         @[
                             @4,
                             @1,
                             @5
                             ],
                         @[
                             @4,
                             @2,
                             @8
                             ],
                         @[
                             @4,
                             @3,
                             @117
                             ],
                         @[
                             @4,
                             @4,
                             @115
                             ],
                         @[
                             @5,
                             @0,
                             @88
                             ],
                         @[
                             @5,
                             @1,
                             @32
                             ],
                         @[
                             @5,
                             @2,
                             @12
                             ],
                         @[
                             @5,
                             @3,
                             @6
                             ],
                         @[
                             @5,
                             @4,
                             @120
                             ],
                         @[
                             @6,
                             @0,
                             @13
                             ],
                         @[
                             @6,
                             @1,
                             @44
                             ],
                         @[
                             @6,
                             @2,
                             @88
                             ],
                         @[
                             @6,
                             @3,
                             @98
                             ],
                         @[
                             @6,
                             @4,
                             @96
                             ],
                         @[
                             @7,
                             @0,
                             @31
                             ],
                         @[
                             @7,
                             @1,
                             @1
                             ],
                         @[
                             @7,
                             @2,
                             @82
                             ],
                         @[
                             @7,
                             @3,
                             @32
                             ],
                         @[
                             @7,
                             @4,
                             @30
                             ],
                         @[
                             @8,
                             @0,
                             @85
                             ],
                         @[
                             @8,
                             @1,
                             @97
                             ],
                         @[
                             @8,
                             @2,
                             @123
                             ],
                         @[
                             @8,
                             @3,
                             @64
                             ],
                         @[
                             @8,
                             @4,
                             @84
                             ],
                         @[
                             @9,
                             @0,
                             @47
                             ],
                         @[
                             @9,
                             @1,
                             @114
                             ],
                         @[
                             @9,
                             @2,
                             @31
                             ],
                         @[
                             @9,
                             @3,
                             @48
                             ],
                         @[
                             @9,
                             @4,
                             @91
                             ]
                         ];
        options.series = @[heatmap];
        
        options.additionalOptions = @{@"colorAxis": @{
                                              @"min": @0,
                                              @"minColor": @"#FFFFFF",
                                              @"maxColor": @"#7cb5ec"
                                              }};
        return options;
    }
    else if ([type isEqualToString:@"Treemap Color Axis"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HITreemap *treemap = [[HITreemap alloc]init];
        treemap.layoutAlgorithm = @"squarified";
        HITreemapData *data1 = [[HITreemapData alloc]init];
        data1.name = @"A";
        data1.value = @6;
        data1.colorValue = @1;
        HITreemapData *data2 = [[HITreemapData alloc]init];
        data2.name = @"B";
        data2.value = @6;
        data2.colorValue = @2;
        HITreemapData *data3 = [[HITreemapData alloc]init];
        data3.name = @"C";
        data3.value = @4;
        data3.colorValue = @3;
        HITreemapData *data4 = [[HITreemapData alloc]init];
        data4.name = @"D";
        data4.value = @3;
        data4.colorValue = @4;
        HITreemapData *data5 = [[HITreemapData alloc]init];
        data5.name = @"E";
        data5.value = @2;
        data5.colorValue = @5;
        HITreemapData *data6 = [[HITreemapData alloc]init];
        data6.name = @"F";
        data6.value = @2;
        data6.colorValue = @6;
        HITreemapData *data7 = [[HITreemapData alloc]init];
        data7.name = @"G";
        data7.value = @1;
        data7.colorValue = @7;
        treemap.data = @[data1, data2, data3, data4, data5, data6, data7];
        options.series = @[treemap];
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Highcharts Treemap";
        options.title = title;
        
        options.additionalOptions = @{@"colorAxis": @{
                                              @"minColor": @"#FFFFFF",
                                              @"maxColor": @"#7cb5ec"
                                              }};
        return options;
    }
    else if ([type isEqualToString:@"Treemap Large Dataset"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Click points to drill down. Source: <a href=\"http://apps.who.int/gho/data/node.main.12?lang=en\">WHO</a>.";
        options.title = title;
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"Global Mortality Rate 2012, per 100 000 population";
        options.subtitle = subtitle;
        
        HITreemap *treemap = [[HITreemap alloc]init];
        treemap.layoutAlgorithm = @"squarified";
        treemap.allowDrillToNode = @true;
        treemap.animationLimit = @1000;
        treemap.dataLabels = [[HITreemapDataLabels alloc]init];
        treemap.dataLabels.enabled = @false;
        treemap.levelIsConstant = @false;
        HITreemapLevels *level = [[HITreemapLevels alloc]init];
        level.level = @1;
        level.dataLabels = @{
                             @"enabled": @true
                             };
        level.borderWidth = @3;
        treemap.levels = @[level];
        treemap.data = [self data];
        options.series = @[treemap];

        return options;
    }
    else if ([type isEqualToString:@"Treemap With Levels"]) {
        HIOptions *options = [[HIOptions alloc]init];
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Fruit consumption";
        options.title = title;
        
        HITreemap *treemap = [[HITreemap alloc]init];
        treemap.layoutAlgorithm = @"stripes";
        treemap.alternateStartingDirection = @true;
        HITreemapLevels *level = [[HITreemapLevels alloc]init];
        level.level = @1;
        level.layoutAlgorithm = @"sliceAndDice";
        level.dataLabels = @{
                             @"enabled": @true,
                             @"align": @"left",
                             @"verticalAlign": @"top",
                             @"style": @{
                                     @"fontSize": @"15px",
                                     @"fontWeight": @"bold"
                                     }
                             };
        treemap.levels = @[level];
        treemap.data = @[
                         @{
                             @"id": @"A",
                             @"name": @"Apples",
                             @"color": @"#EC2500"
                             },
                         @{
                             @"id": @"B",
                             @"name": @"Bananas",
                             @"color": @"#ECE100"
                             },
                         @{
                             @"id": @"O",
                             @"name": @"Oranges",
                             @"color": @"#EC9800"
                             },
                         @{
                             @"name": @"Anne",
                             @"parent": @"A",
                             @"value": @5
                             },
                         @{
                             @"name": @"Rick",
                             @"parent": @"A",
                             @"value": @3
                             },
                         @{
                             @"name": @"Peter",
                             @"parent": @"A",
                             @"value": @4
                             },
                         @{
                             @"name": @"Anne",
                             @"parent": @"B",
                             @"value": @4
                             },
                         @{
                             @"name": @"Rick",
                             @"parent": @"B",
                             @"value": @10
                             },
                         @{
                             @"name": @"Peter",
                             @"parent": @"B",
                             @"value": @1
                             },
                         @{
                             @"name": @"Anne",
                             @"parent": @"O",
                             @"value": @1
                             },
                         @{
                             @"name": @"Rick",
                             @"parent": @"O",
                             @"value": @3
                             },
                         @{
                             @"name": @"Peter",
                             @"parent": @"O",
                             @"value": @3
                             },
                         @{
                             @"name": @"Susanne",
                             @"parent": @"Kiwi",
                             @"value": @2,
                             @"color": @"#9EDE00"
                             }
                         ];
        
        
        options.series = @[treemap];

        return options;
    }
    //MARK: Default
    else {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIExporting *exporting = [[HIExporting alloc]init];
        exporting.enabled = @false;
        
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"column";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"";
        
        HIXAxis *xAxis = [[HIXAxis alloc]init];
        
        HIYAxis *yAxis = [[HIYAxis alloc]init];
        yAxis.title = [[HIYAxisTitle alloc]init];
        yAxis.title.text = @"";
        yAxis.tickAmount = @1;
        
        HIColumn *series = [[HIColumn alloc]init];
        series.enableMouseTracking = @false;
        series.showInLegend = @false;
        series.data = [NSMutableArray arrayWithObjects: @49.9,
                       @71.5,
                       @106.4,
                       @129.2,
                       @144,
                       @176,
                       @135.6,
                       @148.5,
                       @216.4,
                       @194.1,
                       @95.6,
                       @54.4, nil];
        
        options.exporting = exporting;
        options.chart = chart;
        options.title = title;
        options.subtitle = subtitle;
        options.xAxis = [NSMutableArray arrayWithObjects:xAxis, nil];
        options.yAxis = [NSMutableArray arrayWithObjects:yAxis, nil];
        options.series = [NSMutableArray arrayWithObjects:series, nil];
        
        return options;
    }

    
}

+ (NSArray*)data {
    return @[
             @{
                 @"id": @"id_0_0",
                 @"name": @"Sri Lanka",
                 @"parent": @"id_0"
                 },
             @{
                 @"id": @"id_0_0_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_0_0",
                 @"value": @76
                 },
             @{
                 @"id": @"id_0_0_1",
                 @"name": @"Injuries",
                 @"parent": @"id_0_0",
                 @"value": @89
                 },
             @{
                 @"id": @"id_0_0_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_0_0",
                 @"value": @501
                 },
             @{
                 @"id": @"id_0_1",
                 @"name": @"Bangladesh",
                 @"parent": @"id_0"
                 },
             @{
                 @"id": @"id_0_1_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_0_1",
                 @"value": @549
                 },
             @{
                 @"id": @"id_0_1_1",
                 @"name": @"Injuries",
                 @"parent": @"id_0_1",
                 @"value": @64
                 },
             @{
                 @"id": @"id_0_1_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_0_1",
                 @"value": @235
                 },
             @{
                 @"id": @"id_0_2",
                 @"name": @"Myanmar",
                 @"parent": @"id_0"
                 },
             @{
                 @"id": @"id_0_2_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_0_2",
                 @"value": @316
                 },
             @{
                 @"id": @"id_0_2_1",
                 @"name": @"Injuries",
                 @"parent": @"id_0_2",
                 @"value": @102
                 },
             @{
                 @"id": @"id_0_2_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_0_2",
                 @"value": @709
                 },
             @{
                 @"id": @"id_0_3",
                 @"name": @"Maldives",
                 @"parent": @"id_0"
                 },
             @{
                 @"id": @"id_0_3_0",
                 @"name": @"Injuries",
                 @"parent": @"id_0_3",
                 @"value": @35
                 },
             @{
                 @"id": @"id_0_3_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_0_3",
                 @"value": @487
                 },
             @{
                 @"id": @"id_0_3_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_0_3",
                 @"value": @59
                 },
             @{
                 @"id": @"id_0_4",
                 @"name": @"Democratic People's Republic of Korea",
                 @"parent": @"id_0"
                 },
             @{
                 @"id": @"id_0_4_0",
                 @"name": @"Injuries",
                 @"parent": @"id_0_4",
                 @"value": @92
                 },
             @{
                 @"id": @"id_0_4_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_0_4",
                 @"value": @751
                 },
             @{
                 @"id": @"id_0_4_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_0_4",
                 @"value": @117
                 },
             @{
                 @"id": @"id_0_5",
                 @"name": @"Bhutan",
                 @"parent": @"id_0"
                 },
             @{
                 @"id": @"id_0_5_0",
                 @"name": @"Injuries",
                 @"parent": @"id_0_5",
                 @"value": @142
                 },
             @{
                 @"id": @"id_0_5_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_0_5",
                 @"value": @573
                 },
             @{
                 @"id": @"id_0_5_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_0_5",
                 @"value": @187
                 },
             @{
                 @"id": @"id_0_6",
                 @"name": @"Thailand",
                 @"parent": @"id_0"
                 },
             @{
                 @"id": @"id_0_6_0",
                 @"name": @"Injuries",
                 @"parent": @"id_0_6",
                 @"value": @73
                 },
             @{
                 @"id": @"id_0_6_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_0_6",
                 @"value": @123
                 },
             @{
                 @"id": @"id_0_6_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_0_6",
                 @"value": @449
                 },
             @{
                 @"id": @"id_0_7",
                 @"name": @"Nepal",
                 @"parent": @"id_0"
                 },
             @{
                 @"id": @"id_0_7_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_0_7",
                 @"value": @678
                 },
             @{
                 @"id": @"id_0_7_1",
                 @"name": @"Injuries",
                 @"parent": @"id_0_7",
                 @"value": @89
                 },
             @{
                 @"id": @"id_0_7_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_0_7",
                 @"value": @252
                 },
             @{
                 @"id": @"id_0_8",
                 @"name": @"Timor-Leste",
                 @"parent": @"id_0"
                 },
             @{
                 @"id": @"id_0_8_0",
                 @"name": @"Injuries",
                 @"parent": @"id_0_8",
                 @"value": @69
                 },
             @{
                 @"id": @"id_0_8_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_0_8",
                 @"value": @671
                 },
             @{
                 @"id": @"id_0_8_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_0_8",
                 @"value": @344
                 },
             @{
                 @"id": @"id_0_9",
                 @"name": @"India",
                 @"parent": @"id_0"
                 },
             @{
                 @"id": @"id_0_9_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_0_9",
                 @"value": @253
                 },
             @{
                 @"id": @"id_0_9_1",
                 @"name": @"Injuries",
                 @"parent": @"id_0_9",
                 @"value": @116
                 },
             @{
                 @"id": @"id_0_9_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_0_9",
                 @"value": @682
                 },
             @{
                 @"id": @"id_0_10",
                 @"name": @"Indonesia",
                 @"parent": @"id_0"
                 },
             @{
                 @"id": @"id_0_10_0",
                 @"name": @"Injuries",
                 @"parent": @"id_0_10",
                 @"value": @49
                 },
             @{
                 @"id": @"id_0_10_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_0_10",
                 @"value": @680
                 },
             @{
                 @"id": @"id_0_10_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_0_10",
                 @"value": @162
                 },
             @{
                 @"id": @"id_0",
                 @"name": @"South-East Asia",
                 @"color": @"#7cb5ec",
                 @"value": @889
                 },
             @{
                 @"id": @"id_1_0",
                 @"name": @"Hungary",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_0_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_0",
                 @"value": @17
                 },
             @{
                 @"id": @"id_1_0_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_0",
                 @"value": @603
                 },
             @{
                 @"id": @"id_1_0_2",
                 @"name": @"Injuries",
                 @"parent": @"id_1_0",
                 @"value": @44
                 },
             @{
                 @"id": @"id_1_1",
                 @"name": @"Poland",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_1_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_1",
                 @"value": @23
                 },
             @{
                 @"id": @"id_1_1_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_1",
                 @"value": @495
                 },
             @{
                 @"id": @"id_1_1_2",
                 @"name": @"Injuries",
                 @"parent": @"id_1_1",
                 @"value": @49
                 },
             @{
                 @"id": @"id_1_2",
                 @"name": @"Israel",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_2_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_2",
                 @"value": @31
                 },
             @{
                 @"id": @"id_1_2_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_2",
                 @"value": @311
                 },
             @{
                 @"id": @"id_1_2_2",
                 @"name": @"Injuries",
                 @"parent": @"id_1_2",
                 @"value": @21
                 },
             @{
                 @"id": @"id_1_3",
                 @"name": @"France",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_3_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_3",
                 @"value": @21
                 },
             @{
                 @"id": @"id_1_3_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_3",
                 @"value": @313
                 },
             @{
                 @"id": @"id_1_3_2",
                 @"name": @"Injuries",
                 @"parent": @"id_1_3",
                 @"value": @35
                 },
             @{
                 @"id": @"id_1_4",
                 @"name": @"Turkey",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_4_0",
                 @"name": @"Injuries",
                 @"parent": @"id_1_4",
                 @"value": @39
                 },
             @{
                 @"id": @"id_1_4_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_4",
                 @"value": @44
                 },
             @{
                 @"id": @"id_1_4_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_4",
                 @"value": @555
                 },
             @{
                 @"id": @"id_1_5",
                 @"name": @"Kyrgyzstan",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_5_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_5",
                 @"value": @66
                 },
             @{
                 @"id": @"id_1_5_1",
                 @"name": @"Injuries",
                 @"parent": @"id_1_5",
                 @"value": @65
                 },
             @{
                 @"id": @"id_1_5_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_5",
                 @"value": @835
                 },
             @{
                 @"id": @"id_1_6",
                 @"name": @"Croatia",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_6_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_6",
                 @"value": @12
                 },
             @{
                 @"id": @"id_1_6_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_6",
                 @"value": @496
                 },
             @{
                 @"id": @"id_1_6_2",
                 @"name": @"Injuries",
                 @"parent": @"id_1_6",
                 @"value": @40
                 },
             @{
                 @"id": @"id_1_7",
                 @"name": @"Portugal",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_7_0",
                 @"name": @"Injuries",
                 @"parent": @"id_1_7",
                 @"value": @25
                 },
             @{
                 @"id": @"id_1_7_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_7",
                 @"value": @40
                 },
             @{
                 @"id": @"id_1_7_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_7",
                 @"value": @343
                 },
             @{
                 @"id": @"id_1_8",
                 @"name": @"Greece",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_8_0",
                 @"name": @"Injuries",
                 @"parent": @"id_1_8",
                 @"value": @27
                 },
             @{
                 @"id": @"id_1_8_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_8",
                 @"value": @365
                 },
             @{
                 @"id": @"id_1_8_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_8",
                 @"value": @24
                 },
             @{
                 @"id": @"id_1_9",
                 @"name": @"Italy",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_9_0",
                 @"name": @"Injuries",
                 @"parent": @"id_1_9",
                 @"value": @20
                 },
             @{
                 @"id": @"id_1_9_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_9",
                 @"value": @16
                 },
             @{
                 @"id": @"id_1_9_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_9",
                 @"value": @304
                 },
             @{
                 @"id": @"id_1_10",
                 @"name": @"Belgium",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_10_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_10",
                 @"value": @28
                 },
             @{
                 @"id": @"id_1_10_1",
                 @"name": @"Injuries",
                 @"parent": @"id_1_10",
                 @"value": @39
                 },
             @{
                 @"id": @"id_1_10_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_10",
                 @"value": @357
                 },
             @{
                 @"id": @"id_1_11",
                 @"name": @"Lithuania",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_11_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_11",
                 @"value": @581
                 },
             @{
                 @"id": @"id_1_11_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_11",
                 @"value": @26
                 },
             @{
                 @"id": @"id_1_11_2",
                 @"name": @"Injuries",
                 @"parent": @"id_1_11",
                 @"value": @76
                 },
             @{
                 @"id": @"id_1_12",
                 @"name": @"Uzbekistan",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_12_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_12",
                 @"value": @86
                 },
             @{
                 @"id": @"id_1_12_1",
                 @"name": @"Injuries",
                 @"parent": @"id_1_12",
                 @"value": @47
                 },
             @{
                 @"id": @"id_1_12_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_12",
                 @"value": @811
                 },
             @{
                 @"id": @"id_1_13",
                 @"name": @"Serbia",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_13_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_13",
                 @"value": @19
                 },
             @{
                 @"id": @"id_1_13_1",
                 @"name": @"Injuries",
                 @"parent": @"id_1_13",
                 @"value": @32
                 },
             @{
                 @"id": @"id_1_13_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_13",
                 @"value": @658
                 },
             @{
                 @"id": @"id_1_14",
                 @"name": @"Austria",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_14_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_14",
                 @"value": @360
                 },
             @{
                 @"id": @"id_1_14_1",
                 @"name": @"Injuries",
                 @"parent": @"id_1_14",
                 @"value": @31
                 },
             @{
                 @"id": @"id_1_14_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_14",
                 @"value": @13
                 },
             @{
                 @"id": @"id_1_15",
                 @"name": @"Bosnia and Herzegovina",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_15_0",
                 @"name": @"Injuries",
                 @"parent": @"id_1_15",
                 @"value": @42
                 },
             @{
                 @"id": @"id_1_15_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_15",
                 @"value": @513
                 },
             @{
                 @"id": @"id_1_15_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_15",
                 @"value": @20
                 },
             @{
                 @"id": @"id_1_16",
                 @"name": @"Slovakia",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_16_0",
                 @"name": @"Injuries",
                 @"parent": @"id_1_16",
                 @"value": @39
                 },
             @{
                 @"id": @"id_1_16_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_16",
                 @"value": @35
                 },
             @{
                 @"id": @"id_1_16_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_16",
                 @"value": @533
                 },
             @{
                 @"id": @"id_1_17",
                 @"name": @"The former Yugoslav republic of Macedonia",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_17_0",
                 @"name": @"Injuries",
                 @"parent": @"id_1_17",
                 @"value": @24
                 },
             @{
                 @"id": @"id_1_17_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_17",
                 @"value": @17
                 },
             @{
                 @"id": @"id_1_17_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_17",
                 @"value": @637
                 },
             @{
                 @"id": @"id_1_18",
                 @"name": @"Sweden",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_18_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_18",
                 @"value": @19
                 },
             @{
                 @"id": @"id_1_18_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_18",
                 @"value": @334
                 },
             @{
                 @"id": @"id_1_18_2",
                 @"name": @"Injuries",
                 @"parent": @"id_1_18",
                 @"value": @26
                 },
             @{
                 @"id": @"id_1_19",
                 @"name": @"Russian Federation",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_19_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_19",
                 @"value": @790
                 },
             @{
                 @"id": @"id_1_19_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_19",
                 @"value": @74
                 },
             @{
                 @"id": @"id_1_19_2",
                 @"name": @"Injuries",
                 @"parent": @"id_1_19",
                 @"value": @103
                 },
             @{
                 @"id": @"id_1_20",
                 @"name": @"Republic of Moldova",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_20_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_20",
                 @"value": @788
                 },
             @{
                 @"id": @"id_1_20_1",
                 @"name": @"Injuries",
                 @"parent": @"id_1_20",
                 @"value": @76
                 },
             @{
                 @"id": @"id_1_20_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_20",
                 @"value": @45
                 },
             @{
                 @"id": @"id_1_21",
                 @"name": @"Ireland",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_21_0",
                 @"name": @"Injuries",
                 @"parent": @"id_1_21",
                 @"value": @32
                 },
             @{
                 @"id": @"id_1_21_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_21",
                 @"value": @22
                 },
             @{
                 @"id": @"id_1_21_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_21",
                 @"value": @344
                 },
             @{
                 @"id": @"id_1_22",
                 @"name": @"Estonia",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_22_0",
                 @"name": @"Injuries",
                 @"parent": @"id_1_22",
                 @"value": @47
                 },
             @{
                 @"id": @"id_1_22_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_22",
                 @"value": @19
                 },
             @{
                 @"id": @"id_1_22_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_22",
                 @"value": @511
                 },
             @{
                 @"id": @"id_1_23",
                 @"name": @"Cyprus",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_23_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_23",
                 @"value": @333
                 },
             @{
                 @"id": @"id_1_23_1",
                 @"name": @"Injuries",
                 @"parent": @"id_1_23",
                 @"value": @27
                 },
             @{
                 @"id": @"id_1_23_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_23",
                 @"value": @16
                 },
             @{
                 @"id": @"id_1_24",
                 @"name": @"Kazakhstan",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_24_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_24",
                 @"value": @950
                 },
             @{
                 @"id": @"id_1_24_1",
                 @"name": @"Injuries",
                 @"parent": @"id_1_24",
                 @"value": @102
                 },
             @{
                 @"id": @"id_1_24_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_24",
                 @"value": @55
                 },
             @{
                 @"id": @"id_1_25",
                 @"name": @"Netherlands",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_25_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_25",
                 @"value": @355
                 },
             @{
                 @"id": @"id_1_25_1",
                 @"name": @"Injuries",
                 @"parent": @"id_1_25",
                 @"value": @22
                 },
             @{
                 @"id": @"id_1_25_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_25",
                 @"value": @26
                 },
             @{
                 @"id": @"id_1_26",
                 @"name": @"Finland",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_26_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_26",
                 @"value": @367
                 },
             @{
                 @"id": @"id_1_26_1",
                 @"name": @"Injuries",
                 @"parent": @"id_1_26",
                 @"value": @39
                 },
             @{
                 @"id": @"id_1_26_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_26",
                 @"value": @9
                 },
             @{
                 @"id": @"id_1_27",
                 @"name": @"Romania",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_27_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_27",
                 @"value": @612
                 },
             @{
                 @"id": @"id_1_27_1",
                 @"name": @"Injuries",
                 @"parent": @"id_1_27",
                 @"value": @41
                 },
             @{
                 @"id": @"id_1_27_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_27",
                 @"value": @39
                 },
             @{
                 @"id": @"id_1_28",
                 @"name": @"Albania",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_28_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_28",
                 @"value": @672
                 },
             @{
                 @"id": @"id_1_28_1",
                 @"name": @"Injuries",
                 @"parent": @"id_1_28",
                 @"value": @48
                 },
             @{
                 @"id": @"id_1_28_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_28",
                 @"value": @47
                 },
             @{
                 @"id": @"id_1_29",
                 @"name": @"Iceland",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_29_0",
                 @"name": @"Injuries",
                 @"parent": @"id_1_29",
                 @"value": @29
                 },
             @{
                 @"id": @"id_1_29_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_29",
                 @"value": @312
                 },
             @{
                 @"id": @"id_1_29_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_29",
                 @"value": @14
                 },
             @{
                 @"id": @"id_1_30",
                 @"name": @"Azerbaijan",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_30_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_30",
                 @"value": @664
                 },
             @{
                 @"id": @"id_1_30_1",
                 @"name": @"Injuries",
                 @"parent": @"id_1_30",
                 @"value": @34
                 },
             @{
                 @"id": @"id_1_30_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_30",
                 @"value": @71
                 },
             @{
                 @"id": @"id_1_31",
                 @"name": @"Tajikistan",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_31_0",
                 @"name": @"Injuries",
                 @"parent": @"id_1_31",
                 @"value": @52
                 },
             @{
                 @"id": @"id_1_31_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_31",
                 @"value": @148
                 },
             @{
                 @"id": @"id_1_31_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_31",
                 @"value": @753
                 },
             @{
                 @"id": @"id_1_32",
                 @"name": @"Bulgaria",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_32_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_32",
                 @"value": @33
                 },
             @{
                 @"id": @"id_1_32_1",
                 @"name": @"Injuries",
                 @"parent": @"id_1_32",
                 @"value": @36
                 },
             @{
                 @"id": @"id_1_32_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_32",
                 @"value": @638
                 },
             @{
                 @"id": @"id_1_33",
                 @"name": @"United Kingdom of Great Britain and Northern Ireland",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_33_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_33",
                 @"value": @29
                 },
             @{
                 @"id": @"id_1_33_1",
                 @"name": @"Injuries",
                 @"parent": @"id_1_33",
                 @"value": @22
                 },
             @{
                 @"id": @"id_1_33_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_33",
                 @"value": @359
                 },
             @{
                 @"id": @"id_1_34",
                 @"name": @"Spain",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_34_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_34",
                 @"value": @19
                 },
             @{
                 @"id": @"id_1_34_1",
                 @"name": @"Injuries",
                 @"parent": @"id_1_34",
                 @"value": @18
                 },
             @{
                 @"id": @"id_1_34_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_34",
                 @"value": @323
                 },
             @{
                 @"id": @"id_1_35",
                 @"name": @"Ukraine",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_35_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_35",
                 @"value": @69
                 },
             @{
                 @"id": @"id_1_35_1",
                 @"name": @"Injuries",
                 @"parent": @"id_1_35",
                 @"value": @67
                 },
             @{
                 @"id": @"id_1_35_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_35",
                 @"value": @749
                 },
             @{
                 @"id": @"id_1_36",
                 @"name": @"Norway",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_36_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_36",
                 @"value": @337
                 },
             @{
                 @"id": @"id_1_36_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_36",
                 @"value": @25
                 },
             @{
                 @"id": @"id_1_36_2",
                 @"name": @"Injuries",
                 @"parent": @"id_1_36",
                 @"value": @26
                 },
             @{
                 @"id": @"id_1_37",
                 @"name": @"Denmark",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_37_0",
                 @"name": @"Injuries",
                 @"parent": @"id_1_37",
                 @"value": @23
                 },
             @{
                 @"id": @"id_1_37_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_37",
                 @"value": @30
                 },
             @{
                 @"id": @"id_1_37_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_37",
                 @"value": @406
                 },
             @{
                 @"id": @"id_1_38",
                 @"name": @"Belarus",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_38_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_38",
                 @"value": @683
                 },
             @{
                 @"id": @"id_1_38_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_38",
                 @"value": @28
                 },
             @{
                 @"id": @"id_1_38_2",
                 @"name": @"Injuries",
                 @"parent": @"id_1_38",
                 @"value": @91
                 },
             @{
                 @"id": @"id_1_39",
                 @"name": @"Malta",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_39_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_39",
                 @"value": @365
                 },
             @{
                 @"id": @"id_1_39_1",
                 @"name": @"Injuries",
                 @"parent": @"id_1_39",
                 @"value": @19
                 },
             @{
                 @"id": @"id_1_39_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_39",
                 @"value": @24
                 },
             @{
                 @"id": @"id_1_40",
                 @"name": @"Latvia",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_40_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_40",
                 @"value": @624
                 },
             @{
                 @"id": @"id_1_40_1",
                 @"name": @"Injuries",
                 @"parent": @"id_1_40",
                 @"value": @55
                 },
             @{
                 @"id": @"id_1_40_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_40",
                 @"value": @26
                 },
             @{
                 @"id": @"id_1_41",
                 @"name": @"Turkmenistan",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_41_0",
                 @"name": @"Injuries",
                 @"parent": @"id_1_41",
                 @"value": @93
                 },
             @{
                 @"id": @"id_1_41_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_41",
                 @"value": @116
                 },
             @{
                 @"id": @"id_1_41_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_41",
                 @"value": @1025
                 },
             @{
                 @"id": @"id_1_42",
                 @"name": @"Switzerland",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_42_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_42",
                 @"value": @15
                 },
             @{
                 @"id": @"id_1_42_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_42",
                 @"value": @292
                 },
             @{
                 @"id": @"id_1_42_2",
                 @"name": @"Injuries",
                 @"parent": @"id_1_42",
                 @"value": @25
                 },
             @{
                 @"id": @"id_1_43",
                 @"name": @"Luxembourg",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_43_0",
                 @"name": @"Injuries",
                 @"parent": @"id_1_43",
                 @"value": @31
                 },
             @{
                 @"id": @"id_1_43_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_43",
                 @"value": @318
                 },
             @{
                 @"id": @"id_1_43_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_43",
                 @"value": @21
                 },
             @{
                 @"id": @"id_1_44",
                 @"name": @"Georgia",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_44_0",
                 @"name": @"Injuries",
                 @"parent": @"id_1_44",
                 @"value": @32
                 },
             @{
                 @"id": @"id_1_44_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_44",
                 @"value": @39
                 },
             @{
                 @"id": @"id_1_44_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_44",
                 @"value": @615
                 },
             @{
                 @"id": @"id_1_45",
                 @"name": @"Slovenia",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_45_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_45",
                 @"value": @369
                 },
             @{
                 @"id": @"id_1_45_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_45",
                 @"value": @15
                 },
             @{
                 @"id": @"id_1_45_2",
                 @"name": @"Injuries",
                 @"parent": @"id_1_45",
                 @"value": @44
                 },
             @{
                 @"id": @"id_1_46",
                 @"name": @"Montenegro",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_46_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_46",
                 @"value": @19
                 },
             @{
                 @"id": @"id_1_46_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_46",
                 @"value": @572
                 },
             @{
                 @"id": @"id_1_46_2",
                 @"name": @"Injuries",
                 @"parent": @"id_1_46",
                 @"value": @41
                 },
             @{
                 @"id": @"id_1_47",
                 @"name": @"Armenia",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_47_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_47",
                 @"value": @848
                 },
             @{
                 @"id": @"id_1_47_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_47",
                 @"value": @45
                 },
             @{
                 @"id": @"id_1_47_2",
                 @"name": @"Injuries",
                 @"parent": @"id_1_47",
                 @"value": @49
                 },
             @{
                 @"id": @"id_1_48",
                 @"name": @"Germany",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_48_0",
                 @"name": @"Injuries",
                 @"parent": @"id_1_48",
                 @"value": @23
                 },
             @{
                 @"id": @"id_1_48_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_48",
                 @"value": @22
                 },
             @{
                 @"id": @"id_1_48_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_48",
                 @"value": @365
                 },
             @{
                 @"id": @"id_1_49",
                 @"name": @"Czech Republic",
                 @"parent": @"id_1"
                 },
             @{
                 @"id": @"id_1_49_0",
                 @"name": @"Injuries",
                 @"parent": @"id_1_49",
                 @"value": @39
                 },
             @{
                 @"id": @"id_1_49_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_1_49",
                 @"value": @461
                 },
             @{
                 @"id": @"id_1_49_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_1_49",
                 @"value": @27
                 },
             @{
                 @"id": @"id_1",
                 @"name": @"Europe",
                 @"color": @"#434348",
                 @"value": @601
                 },
             @{
                 @"id": @"id_2_0",
                 @"name": @"Equatorial Guinea",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_0_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_0",
                 @"value": @757
                 },
             @{
                 @"id": @"id_2_0_1",
                 @"name": @"Injuries",
                 @"parent": @"id_2_0",
                 @"value": @134
                 },
             @{
                 @"id": @"id_2_0_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_0",
                 @"value": @729
                 },
             @{
                 @"id": @"id_2_1",
                 @"name": @"Madagascar",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_1_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_1",
                 @"value": @649
                 },
             @{
                 @"id": @"id_2_1_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_1",
                 @"value": @430
                 },
             @{
                 @"id": @"id_2_1_2",
                 @"name": @"Injuries",
                 @"parent": @"id_2_1",
                 @"value": @89
                 },
             @{
                 @"id": @"id_2_2",
                 @"name": @"Swaziland",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_2_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_2",
                 @"value": @884
                 },
             @{
                 @"id": @"id_2_2_1",
                 @"name": @"Injuries",
                 @"parent": @"id_2_2",
                 @"value": @120
                 },
             @{
                 @"id": @"id_2_2_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_2",
                 @"value": @702
                 },
             @{
                 @"id": @"id_2_3",
                 @"name": @"Congo",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_3_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_3",
                 @"value": @632
                 },
             @{
                 @"id": @"id_2_3_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_3",
                 @"value": @667
                 },
             @{
                 @"id": @"id_2_3_2",
                 @"name": @"Injuries",
                 @"parent": @"id_2_3",
                 @"value": @89
                 },
             @{
                 @"id": @"id_2_4",
                 @"name": @"Burkina Faso",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_4_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_4",
                 @"value": @648
                 },
             @{
                 @"id": @"id_2_4_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_4",
                 @"value": @784
                 },
             @{
                 @"id": @"id_2_4_2",
                 @"name": @"Injuries",
                 @"parent": @"id_2_4",
                 @"value": @119
                 },
             @{
                 @"id": @"id_2_5",
                 @"name": @"Guinea-Bissau",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_5_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_5",
                 @"value": @870
                 },
             @{
                 @"id": @"id_2_5_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_5",
                 @"value": @765
                 },
             @{
                 @"id": @"id_2_5_2",
                 @"name": @"Injuries",
                 @"parent": @"id_2_5",
                 @"value": @112
                 },
             @{
                 @"id": @"id_2_6",
                 @"name": @"Democratic Republic of the Congo",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_6_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_6",
                 @"value": @724
                 },
             @{
                 @"id": @"id_2_6_1",
                 @"name": @"Injuries",
                 @"parent": @"id_2_6",
                 @"value": @137
                 },
             @{
                 @"id": @"id_2_6_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_6",
                 @"value": @921
                 },
             @{
                 @"id": @"id_2_7",
                 @"name": @"Mozambique",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_7_0",
                 @"name": @"Injuries",
                 @"parent": @"id_2_7",
                 @"value": @175
                 },
             @{
                 @"id": @"id_2_7_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_7",
                 @"value": @594
                 },
             @{
                 @"id": @"id_2_7_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_7",
                 @"value": @998
                 },
             @{
                 @"id": @"id_2_8",
                 @"name": @"Central African Republic",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_8_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_8",
                 @"value": @1212
                 },
             @{
                 @"id": @"id_2_8_1",
                 @"name": @"Injuries",
                 @"parent": @"id_2_8",
                 @"value": @108
                 },
             @{
                 @"id": @"id_2_8_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_8",
                 @"value": @551
                 },
             @{
                 @"id": @"id_2_9",
                 @"name": @"United Republic of Tanzania",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_9_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_9",
                 @"value": @570
                 },
             @{
                 @"id": @"id_2_9_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_9",
                 @"value": @584
                 },
             @{
                 @"id": @"id_2_9_2",
                 @"name": @"Injuries",
                 @"parent": @"id_2_9",
                 @"value": @129
                 },
             @{
                 @"id": @"id_2_10",
                 @"name": @"Cameroon",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_10_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_10",
                 @"value": @769
                 },
             @{
                 @"id": @"id_2_10_1",
                 @"name": @"Injuries",
                 @"parent": @"id_2_10",
                 @"value": @106
                 },
             @{
                 @"id": @"id_2_10_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_10",
                 @"value": @675
                 },
             @{
                 @"id": @"id_2_11",
                 @"name": @"Togo",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_11_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_11",
                 @"value": @679
                 },
             @{
                 @"id": @"id_2_11_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_11",
                 @"value": @682
                 },
             @{
                 @"id": @"id_2_11_2",
                 @"name": @"Injuries",
                 @"parent": @"id_2_11",
                 @"value": @93
                 },
             @{
                 @"id": @"id_2_12",
                 @"name": @"Eritrea",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_12_0",
                 @"name": @"Injuries",
                 @"parent": @"id_2_12",
                 @"value": @119
                 },
             @{
                 @"id": @"id_2_12_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_12",
                 @"value": @506
                 },
             @{
                 @"id": @"id_2_12_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_12",
                 @"value": @672
                 },
             @{
                 @"id": @"id_2_13",
                 @"name": @"Namibia",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_13_0",
                 @"name": @"Injuries",
                 @"parent": @"id_2_13",
                 @"value": @76
                 },
             @{
                 @"id": @"id_2_13_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_13",
                 @"value": @580
                 },
             @{
                 @"id": @"id_2_13_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_13",
                 @"value": @357
                 },
             @{
                 @"id": @"id_2_14",
                 @"name": @"Senegal",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_14_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_14",
                 @"value": @558
                 },
             @{
                 @"id": @"id_2_14_1",
                 @"name": @"Injuries",
                 @"parent": @"id_2_14",
                 @"value": @89
                 },
             @{
                 @"id": @"id_2_14_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_14",
                 @"value": @588
                 },
             @{
                 @"id": @"id_2_15",
                 @"name": @"Chad",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_15_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_15",
                 @"value": @1071
                 },
             @{
                 @"id": @"id_2_15_1",
                 @"name": @"Injuries",
                 @"parent": @"id_2_15",
                 @"value": @115
                 },
             @{
                 @"id": @"id_2_15_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_15",
                 @"value": @713
                 },
             @{
                 @"id": @"id_2_16",
                 @"name": @"Benin",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_16_0",
                 @"name": @"Injuries",
                 @"parent": @"id_2_16",
                 @"value": @98
                 },
             @{
                 @"id": @"id_2_16_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_16",
                 @"value": @762
                 },
             @{
                 @"id": @"id_2_16_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_16",
                 @"value": @577
                 },
             @{
                 @"id": @"id_2_17",
                 @"name": @"Zimbabwe",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_17_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_17",
                 @"value": @711
                 },
             @{
                 @"id": @"id_2_17_1",
                 @"name": @"Injuries",
                 @"parent": @"id_2_17",
                 @"value": @83
                 },
             @{
                 @"id": @"id_2_17_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_17",
                 @"value": @599
                 },
             @{
                 @"id": @"id_2_18",
                 @"name": @"Rwanda",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_18_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_18",
                 @"value": @585
                 },
             @{
                 @"id": @"id_2_18_1",
                 @"name": @"Injuries",
                 @"parent": @"id_2_18",
                 @"value": @106
                 },
             @{
                 @"id": @"id_2_18_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_18",
                 @"value": @402
                 },
             @{
                 @"id": @"id_2_19",
                 @"name": @"Zambia",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_19_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_19",
                 @"value": @587
                 },
             @{
                 @"id": @"id_2_19_1",
                 @"name": @"Injuries",
                 @"parent": @"id_2_19",
                 @"value": @156
                 },
             @{
                 @"id": @"id_2_19_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_19",
                 @"value": @764
                 },
             @{
                 @"id": @"id_2_20",
                 @"name": @"Mali",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_20_0",
                 @"name": @"Injuries",
                 @"parent": @"id_2_20",
                 @"value": @120
                 },
             @{
                 @"id": @"id_2_20_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_20",
                 @"value": @588
                 },
             @{
                 @"id": @"id_2_20_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_20",
                 @"value": @866
                 },
             @{
                 @"id": @"id_2_21",
                 @"name": @"Ethiopia",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_21_0",
                 @"name": @"Injuries",
                 @"parent": @"id_2_21",
                 @"value": @95
                 },
             @{
                 @"id": @"id_2_21_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_21",
                 @"value": @559
                 },
             @{
                 @"id": @"id_2_21_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_21",
                 @"value": @476
                 },
             @{
                 @"id": @"id_2_22",
                 @"name": @"South Africa",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_22_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_22",
                 @"value": @612
                 },
             @{
                 @"id": @"id_2_22_1",
                 @"name": @"Injuries",
                 @"parent": @"id_2_22",
                 @"value": @104
                 },
             @{
                 @"id": @"id_2_22_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_22",
                 @"value": @711
                 },
             @{
                 @"id": @"id_2_23",
                 @"name": @"Burundi",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_23_0",
                 @"name": @"Injuries",
                 @"parent": @"id_2_23",
                 @"value": @147
                 },
             @{
                 @"id": @"id_2_23_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_23",
                 @"value": @705
                 },
             @{
                 @"id": @"id_2_23_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_23",
                 @"value": @730
                 },
             @{
                 @"id": @"id_2_24",
                 @"name": @"Cabo Verde",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_24_0",
                 @"name": @"Injuries",
                 @"parent": @"id_2_24",
                 @"value": @54
                 },
             @{
                 @"id": @"id_2_24_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_24",
                 @"value": @482
                 },
             @{
                 @"id": @"id_2_24_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_24",
                 @"value": @142
                 },
             @{
                 @"id": @"id_2_25",
                 @"name": @"Liberia",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_25_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_25",
                 @"value": @657
                 },
             @{
                 @"id": @"id_2_25_1",
                 @"name": @"Injuries",
                 @"parent": @"id_2_25",
                 @"value": @83
                 },
             @{
                 @"id": @"id_2_25_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_25",
                 @"value": @609
                 },
             @{
                 @"id": @"id_2_26",
                 @"name": @"Uganda",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_26_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_26",
                 @"value": @664
                 },
             @{
                 @"id": @"id_2_26_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_26",
                 @"value": @697
                 },
             @{
                 @"id": @"id_2_26_2",
                 @"name": @"Injuries",
                 @"parent": @"id_2_26",
                 @"value": @167
                 },
             @{
                 @"id": @"id_2_27",
                 @"name": @"Mauritius",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_27_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_27",
                 @"value": @577
                 },
             @{
                 @"id": @"id_2_27_1",
                 @"name": @"Injuries",
                 @"parent": @"id_2_27",
                 @"value": @44
                 },
             @{
                 @"id": @"id_2_27_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_27",
                 @"value": @62
                 },
             @{
                 @"id": @"id_2_28",
                 @"name": @"Algeria",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_28_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_28",
                 @"value": @710
                 },
             @{
                 @"id": @"id_2_28_1",
                 @"name": @"Injuries",
                 @"parent": @"id_2_28",
                 @"value": @54
                 },
             @{
                 @"id": @"id_2_28_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_28",
                 @"value": @98
                 },
             @{
                 @"id": @"id_2_29",
                 @"name": @"Côte d'Ivoire",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_29_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_29",
                 @"value": @794
                 },
             @{
                 @"id": @"id_2_29_1",
                 @"name": @"Injuries",
                 @"parent": @"id_2_29",
                 @"value": @124
                 },
             @{
                 @"id": @"id_2_29_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_29",
                 @"value": @861
                 },
             @{
                 @"id": @"id_2_30",
                 @"name": @"Malawi",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_30_0",
                 @"name": @"Injuries",
                 @"parent": @"id_2_30",
                 @"value": @98
                 },
             @{
                 @"id": @"id_2_30_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_30",
                 @"value": @778
                 },
             @{
                 @"id": @"id_2_30_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_30",
                 @"value": @655
                 },
             @{
                 @"id": @"id_2_31",
                 @"name": @"Botswana",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_31_0",
                 @"name": @"Injuries",
                 @"parent": @"id_2_31",
                 @"value": @88
                 },
             @{
                 @"id": @"id_2_31_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_31",
                 @"value": @612
                 },
             @{
                 @"id": @"id_2_31_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_31",
                 @"value": @555
                 },
             @{
                 @"id": @"id_2_32",
                 @"name": @"Guinea",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_32_0",
                 @"name": @"Injuries",
                 @"parent": @"id_2_32",
                 @"value": @96
                 },
             @{
                 @"id": @"id_2_32_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_32",
                 @"value": @681
                 },
             @{
                 @"id": @"id_2_32_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_32",
                 @"value": @680
                 },
             @{
                 @"id": @"id_2_33",
                 @"name": @"Ghana",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_33_0",
                 @"name": @"Injuries",
                 @"parent": @"id_2_33",
                 @"value": @76
                 },
             @{
                 @"id": @"id_2_33_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_33",
                 @"value": @670
                 },
             @{
                 @"id": @"id_2_33_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_33",
                 @"value": @476
                 },
             @{
                 @"id": @"id_2_34",
                 @"name": @"Kenya",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_34_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_34",
                 @"value": @515
                 },
             @{
                 @"id": @"id_2_34_1",
                 @"name": @"Injuries",
                 @"parent": @"id_2_34",
                 @"value": @101
                 },
             @{
                 @"id": @"id_2_34_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_34",
                 @"value": @658
                 },
             @{
                 @"id": @"id_2_35",
                 @"name": @"Gambia",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_35_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_35",
                 @"value": @630
                 },
             @{
                 @"id": @"id_2_35_1",
                 @"name": @"Injuries",
                 @"parent": @"id_2_35",
                 @"value": @96
                 },
             @{
                 @"id": @"id_2_35_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_35",
                 @"value": @591
                 },
             @{
                 @"id": @"id_2_36",
                 @"name": @"Angola",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_36_0",
                 @"name": @"Injuries",
                 @"parent": @"id_2_36",
                 @"value": @138
                 },
             @{
                 @"id": @"id_2_36_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_36",
                 @"value": @768
                 },
             @{
                 @"id": @"id_2_36_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_36",
                 @"value": @873
                 },
             @{
                 @"id": @"id_2_37",
                 @"name": @"Sierra Leone",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_37_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_37",
                 @"value": @1327
                 },
             @{
                 @"id": @"id_2_37_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_37",
                 @"value": @964
                 },
             @{
                 @"id": @"id_2_37_2",
                 @"name": @"Injuries",
                 @"parent": @"id_2_37",
                 @"value": @150
                 },
             @{
                 @"id": @"id_2_38",
                 @"name": @"Mauritania",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_38_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_38",
                 @"value": @619
                 },
             @{
                 @"id": @"id_2_38_1",
                 @"name": @"Injuries",
                 @"parent": @"id_2_38",
                 @"value": @83
                 },
             @{
                 @"id": @"id_2_38_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_38",
                 @"value": @555
                 },
             @{
                 @"id": @"id_2_39",
                 @"name": @"Comoros",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_39_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_39",
                 @"value": @495
                 },
             @{
                 @"id": @"id_2_39_1",
                 @"name": @"Injuries",
                 @"parent": @"id_2_39",
                 @"value": @132
                 },
             @{
                 @"id": @"id_2_39_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_39",
                 @"value": @696
                 },
             @{
                 @"id": @"id_2_40",
                 @"name": @"Gabon",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_40_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_40",
                 @"value": @505
                 },
             @{
                 @"id": @"id_2_40_1",
                 @"name": @"Injuries",
                 @"parent": @"id_2_40",
                 @"value": @77
                 },
             @{
                 @"id": @"id_2_40_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_40",
                 @"value": @589
                 },
             @{
                 @"id": @"id_2_41",
                 @"name": @"Niger",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_41_0",
                 @"name": @"Injuries",
                 @"parent": @"id_2_41",
                 @"value": @98
                 },
             @{
                 @"id": @"id_2_41_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_41",
                 @"value": @740
                 },
             @{
                 @"id": @"id_2_41_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_41",
                 @"value": @649
                 },
             @{
                 @"id": @"id_2_42",
                 @"name": @"Lesotho",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_42_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_42",
                 @"value": @1111
                 },
             @{
                 @"id": @"id_2_42_1",
                 @"name": @"Injuries",
                 @"parent": @"id_2_42",
                 @"value": @143
                 },
             @{
                 @"id": @"id_2_42_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_42",
                 @"value": @672
                 },
             @{
                 @"id": @"id_2_43",
                 @"name": @"Nigeria",
                 @"parent": @"id_2"
                 },
             @{
                 @"id": @"id_2_43_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_2_43",
                 @"value": @674
                 },
             @{
                 @"id": @"id_2_43_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_2_43",
                 @"value": @866
                 },
             @{
                 @"id": @"id_2_43_2",
                 @"name": @"Injuries",
                 @"parent": @"id_2_43",
                 @"value": @146
                 },
             @{
                 @"id": @"id_2",
                 @"name": @"Africa",
                 @"color": @"#90ed7d",
                 @"value": @1443
                 },
             @{
                 @"id": @"id_3_0",
                 @"name": @"Canada",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_0_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_0",
                 @"value": @318
                 },
             @{
                 @"id": @"id_3_0_1",
                 @"name": @"Injuries",
                 @"parent": @"id_3_0",
                 @"value": @31
                 },
             @{
                 @"id": @"id_3_0_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_0",
                 @"value": @23
                 },
             @{
                 @"id": @"id_3_1",
                 @"name": @"Bolivia (Plurinational State of)",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_1_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_1",
                 @"value": @226
                 },
             @{
                 @"id": @"id_3_1_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_1",
                 @"value": @635
                 },
             @{
                 @"id": @"id_3_1_2",
                 @"name": @"Injuries",
                 @"parent": @"id_3_1",
                 @"value": @100
                 },
             @{
                 @"id": @"id_3_2",
                 @"name": @"Haiti",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_2_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_2",
                 @"value": @405
                 },
             @{
                 @"id": @"id_3_2_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_2",
                 @"value": @725
                 },
             @{
                 @"id": @"id_3_2_2",
                 @"name": @"Injuries",
                 @"parent": @"id_3_2",
                 @"value": @89
                 },
             @{
                 @"id": @"id_3_3",
                 @"name": @"Belize",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_3_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_3",
                 @"value": @471
                 },
             @{
                 @"id": @"id_3_3_1",
                 @"name": @"Injuries",
                 @"parent": @"id_3_3",
                 @"value": @82
                 },
             @{
                 @"id": @"id_3_3_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_3",
                 @"value": @105
                 },
             @{
                 @"id": @"id_3_4",
                 @"name": @"Suriname",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_4_0",
                 @"name": @"Injuries",
                 @"parent": @"id_3_4",
                 @"value": @71
                 },
             @{
                 @"id": @"id_3_4_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_4",
                 @"value": @84
                 },
             @{
                 @"id": @"id_3_4_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_4",
                 @"value": @375
                 },
             @{
                 @"id": @"id_3_5",
                 @"name": @"Argentina",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_5_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_5",
                 @"value": @69
                 },
             @{
                 @"id": @"id_3_5_1",
                 @"name": @"Injuries",
                 @"parent": @"id_3_5",
                 @"value": @51
                 },
             @{
                 @"id": @"id_3_5_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_5",
                 @"value": @467
                 },
             @{
                 @"id": @"id_3_6",
                 @"name": @"Mexico",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_6_0",
                 @"name": @"Injuries",
                 @"parent": @"id_3_6",
                 @"value": @63
                 },
             @{
                 @"id": @"id_3_6_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_6",
                 @"value": @57
                 },
             @{
                 @"id": @"id_3_6_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_6",
                 @"value": @468
                 },
             @{
                 @"id": @"id_3_7",
                 @"name": @"Jamaica",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_7_0",
                 @"name": @"Injuries",
                 @"parent": @"id_3_7",
                 @"value": @52
                 },
             @{
                 @"id": @"id_3_7_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_7",
                 @"value": @97
                 },
             @{
                 @"id": @"id_3_7_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_7",
                 @"value": @519
                 },
             @{
                 @"id": @"id_3_8",
                 @"name": @"Peru",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_8_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_8",
                 @"value": @364
                 },
             @{
                 @"id": @"id_3_8_1",
                 @"name": @"Injuries",
                 @"parent": @"id_3_8",
                 @"value": @48
                 },
             @{
                 @"id": @"id_3_8_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_8",
                 @"value": @121
                 },
             @{
                 @"id": @"id_3_9",
                 @"name": @"Brazil",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_9_0",
                 @"name": @"Injuries",
                 @"parent": @"id_3_9",
                 @"value": @80
                 },
             @{
                 @"id": @"id_3_9_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_9",
                 @"value": @93
                 },
             @{
                 @"id": @"id_3_9_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_9",
                 @"value": @514
                 },
             @{
                 @"id": @"id_3_10",
                 @"name": @"Venezuela (Bolivarian Republic of)",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_10_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_10",
                 @"value": @58
                 },
             @{
                 @"id": @"id_3_10_1",
                 @"name": @"Injuries",
                 @"parent": @"id_3_10",
                 @"value": @103
                 },
             @{
                 @"id": @"id_3_10_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_10",
                 @"value": @411
                 },
             @{
                 @"id": @"id_3_11",
                 @"name": @"Paraguay",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_11_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_11",
                 @"value": @486
                 },
             @{
                 @"id": @"id_3_11_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_11",
                 @"value": @77
                 },
             @{
                 @"id": @"id_3_11_2",
                 @"name": @"Injuries",
                 @"parent": @"id_3_11",
                 @"value": @68
                 },
             @{
                 @"id": @"id_3_12",
                 @"name": @"Chile",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_12_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_12",
                 @"value": @367
                 },
             @{
                 @"id": @"id_3_12_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_12",
                 @"value": @36
                 },
             @{
                 @"id": @"id_3_12_2",
                 @"name": @"Injuries",
                 @"parent": @"id_3_12",
                 @"value": @41
                 },
             @{
                 @"id": @"id_3_13",
                 @"name": @"Trinidad and Tobago",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_13_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_13",
                 @"value": @705
                 },
             @{
                 @"id": @"id_3_13_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_13",
                 @"value": @80
                 },
             @{
                 @"id": @"id_3_13_2",
                 @"name": @"Injuries",
                 @"parent": @"id_3_13",
                 @"value": @98
                 },
             @{
                 @"id": @"id_3_14",
                 @"name": @"Colombia",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_14_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_14",
                 @"value": @377
                 },
             @{
                 @"id": @"id_3_14_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_14",
                 @"value": @55
                 },
             @{
                 @"id": @"id_3_14_2",
                 @"name": @"Injuries",
                 @"parent": @"id_3_14",
                 @"value": @73
                 },
             @{
                 @"id": @"id_3_15",
                 @"name": @"Cuba",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_15_0",
                 @"name": @"Injuries",
                 @"parent": @"id_3_15",
                 @"value": @45
                 },
             @{
                 @"id": @"id_3_15_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_15",
                 @"value": @422
                 },
             @{
                 @"id": @"id_3_15_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_15",
                 @"value": @33
                 },
             @{
                 @"id": @"id_3_16",
                 @"name": @"El Salvador",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_16_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_16",
                 @"value": @475
                 },
             @{
                 @"id": @"id_3_16_1",
                 @"name": @"Injuries",
                 @"parent": @"id_3_16",
                 @"value": @158
                 },
             @{
                 @"id": @"id_3_16_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_16",
                 @"value": @96
                 },
             @{
                 @"id": @"id_3_17",
                 @"name": @"Honduras",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_17_0",
                 @"name": @"Injuries",
                 @"parent": @"id_3_17",
                 @"value": @81
                 },
             @{
                 @"id": @"id_3_17_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_17",
                 @"value": @118
                 },
             @{
                 @"id": @"id_3_17_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_17",
                 @"value": @442
                 },
             @{
                 @"id": @"id_3_18",
                 @"name": @"Ecuador",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_18_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_18",
                 @"value": @410
                 },
             @{
                 @"id": @"id_3_18_1",
                 @"name": @"Injuries",
                 @"parent": @"id_3_18",
                 @"value": @84
                 },
             @{
                 @"id": @"id_3_18_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_18",
                 @"value": @97
                 },
             @{
                 @"id": @"id_3_19",
                 @"name": @"Costa Rica",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_19_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_19",
                 @"value": @31
                 },
             @{
                 @"id": @"id_3_19_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_19",
                 @"value": @392
                 },
             @{
                 @"id": @"id_3_19_2",
                 @"name": @"Injuries",
                 @"parent": @"id_3_19",
                 @"value": @47
                 },
             @{
                 @"id": @"id_3_20",
                 @"name": @"Dominican Republic",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_20_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_20",
                 @"value": @396
                 },
             @{
                 @"id": @"id_3_20_1",
                 @"name": @"Injuries",
                 @"parent": @"id_3_20",
                 @"value": @66
                 },
             @{
                 @"id": @"id_3_20_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_20",
                 @"value": @77
                 },
             @{
                 @"id": @"id_3_21",
                 @"name": @"Nicaragua",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_21_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_21",
                 @"value": @75
                 },
             @{
                 @"id": @"id_3_21_1",
                 @"name": @"Injuries",
                 @"parent": @"id_3_21",
                 @"value": @64
                 },
             @{
                 @"id": @"id_3_21_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_21",
                 @"value": @547
                 },
             @{
                 @"id": @"id_3_22",
                 @"name": @"Barbados",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_22_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_22",
                 @"value": @405
                 },
             @{
                 @"id": @"id_3_22_1",
                 @"name": @"Injuries",
                 @"parent": @"id_3_22",
                 @"value": @28
                 },
             @{
                 @"id": @"id_3_22_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_22",
                 @"value": @61
                 },
             @{
                 @"id": @"id_3_23",
                 @"name": @"Uruguay",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_23_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_23",
                 @"value": @446
                 },
             @{
                 @"id": @"id_3_23_1",
                 @"name": @"Injuries",
                 @"parent": @"id_3_23",
                 @"value": @54
                 },
             @{
                 @"id": @"id_3_23_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_23",
                 @"value": @46
                 },
             @{
                 @"id": @"id_3_24",
                 @"name": @"Panama",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_24_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_24",
                 @"value": @86
                 },
             @{
                 @"id": @"id_3_24_1",
                 @"name": @"Injuries",
                 @"parent": @"id_3_24",
                 @"value": @67
                 },
             @{
                 @"id": @"id_3_24_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_24",
                 @"value": @373
                 },
             @{
                 @"id": @"id_3_25",
                 @"name": @"Bahamas",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_25_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_25",
                 @"value": @465
                 },
             @{
                 @"id": @"id_3_25_1",
                 @"name": @"Injuries",
                 @"parent": @"id_3_25",
                 @"value": @46
                 },
             @{
                 @"id": @"id_3_25_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_25",
                 @"value": @122
                 },
             @{
                 @"id": @"id_3_26",
                 @"name": @"Guyana",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_26_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_26",
                 @"value": @177
                 },
             @{
                 @"id": @"id_3_26_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_26",
                 @"value": @1024
                 },
             @{
                 @"id": @"id_3_26_2",
                 @"name": @"Injuries",
                 @"parent": @"id_3_26",
                 @"value": @150
                 },
             @{
                 @"id": @"id_3_27",
                 @"name": @"United States of America",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_27_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_27",
                 @"value": @413
                 },
             @{
                 @"id": @"id_3_27_1",
                 @"name": @"Injuries",
                 @"parent": @"id_3_27",
                 @"value": @44
                 },
             @{
                 @"id": @"id_3_27_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_27",
                 @"value": @31
                 },
             @{
                 @"id": @"id_3_28",
                 @"name": @"Guatemala",
                 @"parent": @"id_3"
                 },
             @{
                 @"id": @"id_3_28_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_3_28",
                 @"value": @213
                 },
             @{
                 @"id": @"id_3_28_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_3_28",
                 @"value": @409
                 },
             @{
                 @"id": @"id_3_28_2",
                 @"name": @"Injuries",
                 @"parent": @"id_3_28",
                 @"value": @111
                 },
             @{
                 @"id": @"id_3",
                 @"name": @"Americas",
                 @"color": @"#f7a35c",
                 @"value": @647
                 },
             @{
                 @"id": @"id_4_0",
                 @"name": @"Egypt",
                 @"parent": @"id_4"
                 },
             @{
                 @"id": @"id_4_0_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_4_0",
                 @"value": @74
                 },
             @{
                 @"id": @"id_4_0_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_4_0",
                 @"value": @782
                 },
             @{
                 @"id": @"id_4_0_2",
                 @"name": @"Injuries",
                 @"parent": @"id_4_0",
                 @"value": @34
                 },
             @{
                 @"id": @"id_4_1",
                 @"name": @"South Sudan",
                 @"parent": @"id_4"
                 },
             @{
                 @"id": @"id_4_1_0",
                 @"name": @"Injuries",
                 @"parent": @"id_4_1",
                 @"value": @143
                 },
             @{
                 @"id": @"id_4_1_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_4_1",
                 @"value": @831
                 },
             @{
                 @"id": @"id_4_1_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_4_1",
                 @"value": @623
                 },
             @{
                 @"id": @"id_4_2",
                 @"name": @"Sudan",
                 @"parent": @"id_4"
                 },
             @{
                 @"id": @"id_4_2_0",
                 @"name": @"Injuries",
                 @"parent": @"id_4_2",
                 @"value": @134
                 },
             @{
                 @"id": @"id_4_2_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_4_2",
                 @"value": @551
                 },
             @{
                 @"id": @"id_4_2_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_4_2",
                 @"value": @495
                 },
             @{
                 @"id": @"id_4_3",
                 @"name": @"Libya",
                 @"parent": @"id_4"
                 },
             @{
                 @"id": @"id_4_3_0",
                 @"name": @"Injuries",
                 @"parent": @"id_4_3",
                 @"value": @63
                 },
             @{
                 @"id": @"id_4_3_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_4_3",
                 @"value": @550
                 },
             @{
                 @"id": @"id_4_3_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_4_3",
                 @"value": @53
                 },
             @{
                 @"id": @"id_4_4",
                 @"name": @"Jordan",
                 @"parent": @"id_4"
                 },
             @{
                 @"id": @"id_4_4_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_4_4",
                 @"value": @640
                 },
             @{
                 @"id": @"id_4_4_1",
                 @"name": @"Injuries",
                 @"parent": @"id_4_4",
                 @"value": @54
                 },
             @{
                 @"id": @"id_4_4_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_4_4",
                 @"value": @53
                 },
             @{
                 @"id": @"id_4_5",
                 @"name": @"Pakistan",
                 @"parent": @"id_4"
                 },
             @{
                 @"id": @"id_4_5_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_4_5",
                 @"value": @296
                 },
             @{
                 @"id": @"id_4_5_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_4_5",
                 @"value": @669
                 },
             @{
                 @"id": @"id_4_5_2",
                 @"name": @"Injuries",
                 @"parent": @"id_4_5",
                 @"value": @99
                 },
             @{
                 @"id": @"id_4_6",
                 @"name": @"Djibouti",
                 @"parent": @"id_4"
                 },
             @{
                 @"id": @"id_4_6_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_4_6",
                 @"value": @631
                 },
             @{
                 @"id": @"id_4_6_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_4_6",
                 @"value": @626
                 },
             @{
                 @"id": @"id_4_6_2",
                 @"name": @"Injuries",
                 @"parent": @"id_4_6",
                 @"value": @106
                 },
             @{
                 @"id": @"id_4_7",
                 @"name": @"Syrian Arab Republic",
                 @"parent": @"id_4"
                 },
             @{
                 @"id": @"id_4_7_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_4_7",
                 @"value": @41
                 },
             @{
                 @"id": @"id_4_7_1",
                 @"name": @"Injuries",
                 @"parent": @"id_4_7",
                 @"value": @308
                 },
             @{
                 @"id": @"id_4_7_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_4_7",
                 @"value": @573
                 },
             @{
                 @"id": @"id_4_8",
                 @"name": @"Morocco",
                 @"parent": @"id_4"
                 },
             @{
                 @"id": @"id_4_8_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_4_8",
                 @"value": @708
                 },
             @{
                 @"id": @"id_4_8_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_4_8",
                 @"value": @132
                 },
             @{
                 @"id": @"id_4_8_2",
                 @"name": @"Injuries",
                 @"parent": @"id_4_8",
                 @"value": @47
                 },
             @{
                 @"id": @"id_4_9",
                 @"name": @"Yemen",
                 @"parent": @"id_4"
                 },
             @{
                 @"id": @"id_4_9_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_4_9",
                 @"value": @515
                 },
             @{
                 @"id": @"id_4_9_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_4_9",
                 @"value": @627
                 },
             @{
                 @"id": @"id_4_9_2",
                 @"name": @"Injuries",
                 @"parent": @"id_4_9",
                 @"value": @84
                 },
             @{
                 @"id": @"id_4_10",
                 @"name": @"Bahrain",
                 @"parent": @"id_4"
                 },
             @{
                 @"id": @"id_4_10_0",
                 @"name": @"Injuries",
                 @"parent": @"id_4_10",
                 @"value": @34
                 },
             @{
                 @"id": @"id_4_10_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_4_10",
                 @"value": @506
                 },
             @{
                 @"id": @"id_4_10_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_4_10",
                 @"value": @49
                 },
             @{
                 @"id": @"id_4_11",
                 @"name": @"United Arab Emirates",
                 @"parent": @"id_4"
                 },
             @{
                 @"id": @"id_4_11_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_4_11",
                 @"value": @547
                 },
             @{
                 @"id": @"id_4_11_1",
                 @"name": @"Injuries",
                 @"parent": @"id_4_11",
                 @"value": @32
                 },
             @{
                 @"id": @"id_4_11_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_4_11",
                 @"value": @36
                 },
             @{
                 @"id": @"id_4_12",
                 @"name": @"Lebanon",
                 @"parent": @"id_4"
                 },
             @{
                 @"id": @"id_4_12_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_4_12",
                 @"value": @385
                 },
             @{
                 @"id": @"id_4_12_1",
                 @"name": @"Injuries",
                 @"parent": @"id_4_12",
                 @"value": @41
                 },
             @{
                 @"id": @"id_4_12_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_4_12",
                 @"value": @31
                 },
             @{
                 @"id": @"id_4_13",
                 @"name": @"Saudi Arabia",
                 @"parent": @"id_4"
                 },
             @{
                 @"id": @"id_4_13_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_4_13",
                 @"value": @549
                 },
             @{
                 @"id": @"id_4_13_1",
                 @"name": @"Injuries",
                 @"parent": @"id_4_13",
                 @"value": @41
                 },
             @{
                 @"id": @"id_4_13_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_4_13",
                 @"value": @71
                 },
             @{
                 @"id": @"id_4_14",
                 @"name": @"Iran (Islamic Republic of)",
                 @"parent": @"id_4"
                 },
             @{
                 @"id": @"id_4_14_0",
                 @"name": @"Injuries",
                 @"parent": @"id_4_14",
                 @"value": @75
                 },
             @{
                 @"id": @"id_4_14_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_4_14",
                 @"value": @56
                 },
             @{
                 @"id": @"id_4_14_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_4_14",
                 @"value": @569
                 },
             @{
                 @"id": @"id_4_15",
                 @"name": @"Iraq",
                 @"parent": @"id_4"
                 },
             @{
                 @"id": @"id_4_15_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_4_15",
                 @"value": @87
                 },
             @{
                 @"id": @"id_4_15_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_4_15",
                 @"value": @716
                 },
             @{
                 @"id": @"id_4_15_2",
                 @"name": @"Injuries",
                 @"parent": @"id_4_15",
                 @"value": @129
                 },
             @{
                 @"id": @"id_4_16",
                 @"name": @"Qatar",
                 @"parent": @"id_4"
                 },
             @{
                 @"id": @"id_4_16_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_4_16",
                 @"value": @28
                 },
             @{
                 @"id": @"id_4_16_1",
                 @"name": @"Injuries",
                 @"parent": @"id_4_16",
                 @"value": @41
                 },
             @{
                 @"id": @"id_4_16_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_4_16",
                 @"value": @407
                 },
             @{
                 @"id": @"id_4_17",
                 @"name": @"Afghanistan",
                 @"parent": @"id_4"
                 },
             @{
                 @"id": @"id_4_17_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_4_17",
                 @"value": @363
                 },
             @{
                 @"id": @"id_4_17_1",
                 @"name": @"Injuries",
                 @"parent": @"id_4_17",
                 @"value": @169
                 },
             @{
                 @"id": @"id_4_17_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_4_17",
                 @"value": @846
                 },
             @{
                 @"id": @"id_4_18",
                 @"name": @"Somalia",
                 @"parent": @"id_4"
                 },
             @{
                 @"id": @"id_4_18_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_4_18",
                 @"value": @551
                 },
             @{
                 @"id": @"id_4_18_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_4_18",
                 @"value": @927
                 },
             @{
                 @"id": @"id_4_18_2",
                 @"name": @"Injuries",
                 @"parent": @"id_4_18",
                 @"value": @189
                 },
             @{
                 @"id": @"id_4_19",
                 @"name": @"Kuwait",
                 @"parent": @"id_4"
                 },
             @{
                 @"id": @"id_4_19_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_4_19",
                 @"value": @83
                 },
             @{
                 @"id": @"id_4_19_1",
                 @"name": @"Injuries",
                 @"parent": @"id_4_19",
                 @"value": @25
                 },
             @{
                 @"id": @"id_4_19_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_4_19",
                 @"value": @406
                 },
             @{
                 @"id": @"id_4_20",
                 @"name": @"Oman",
                 @"parent": @"id_4"
                 },
             @{
                 @"id": @"id_4_20_0",
                 @"name": @"Injuries",
                 @"parent": @"id_4_20",
                 @"value": @53
                 },
             @{
                 @"id": @"id_4_20_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_4_20",
                 @"value": @478
                 },
             @{
                 @"id": @"id_4_20_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_4_20",
                 @"value": @84
                 },
             @{
                 @"id": @"id_4_21",
                 @"name": @"Tunisia",
                 @"parent": @"id_4"
                 },
             @{
                 @"id": @"id_4_21_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_4_21",
                 @"value": @509
                 },
             @{
                 @"id": @"id_4_21_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_4_21",
                 @"value": @65
                 },
             @{
                 @"id": @"id_4_21_2",
                 @"name": @"Injuries",
                 @"parent": @"id_4_21",
                 @"value": @39
                 },
             @{
                 @"id": @"id_4",
                 @"name": @"Eastern Mediterranean",
                 @"color": @"#8085e9",
                 @"value": @898
                 },
             @{
                 @"id": @"id_5_0",
                 @"name": @"Mongolia",
                 @"parent": @"id_5"
                 },
             @{
                 @"id": @"id_5_0_0",
                 @"name": @"Injuries",
                 @"parent": @"id_5_0",
                 @"value": @69
                 },
             @{
                 @"id": @"id_5_0_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_5_0",
                 @"value": @967
                 },
             @{
                 @"id": @"id_5_0_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_5_0",
                 @"value": @83
                 },
             @{
                 @"id": @"id_5_1",
                 @"name": @"Cambodia",
                 @"parent": @"id_5"
                 },
             @{
                 @"id": @"id_5_1_0",
                 @"name": @"Injuries",
                 @"parent": @"id_5_1",
                 @"value": @62
                 },
             @{
                 @"id": @"id_5_1_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_5_1",
                 @"value": @228
                 },
             @{
                 @"id": @"id_5_1_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_5_1",
                 @"value": @394
                 },
             @{
                 @"id": @"id_5_2",
                 @"name": @"Japan",
                 @"parent": @"id_5"
                 },
             @{
                 @"id": @"id_5_2_0",
                 @"name": @"Injuries",
                 @"parent": @"id_5_2",
                 @"value": @41
                 },
             @{
                 @"id": @"id_5_2_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_5_2",
                 @"value": @244
                 },
             @{
                 @"id": @"id_5_2_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_5_2",
                 @"value": @34
                 },
             @{
                 @"id": @"id_5_3",
                 @"name": @"Brunei Darussalam",
                 @"parent": @"id_5"
                 },
             @{
                 @"id": @"id_5_3_0",
                 @"name": @"Injuries",
                 @"parent": @"id_5_3",
                 @"value": @45
                 },
             @{
                 @"id": @"id_5_3_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_5_3",
                 @"value": @475
                 },
             @{
                 @"id": @"id_5_3_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_5_3",
                 @"value": @56
                 },
             @{
                 @"id": @"id_5_4",
                 @"name": @"Solomon Islands",
                 @"parent": @"id_5"
                 },
             @{
                 @"id": @"id_5_4_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_5_4",
                 @"value": @231
                 },
             @{
                 @"id": @"id_5_4_1",
                 @"name": @"Injuries",
                 @"parent": @"id_5_4",
                 @"value": @75
                 },
             @{
                 @"id": @"id_5_4_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_5_4",
                 @"value": @710
                 },
             @{
                 @"id": @"id_5_5",
                 @"name": @"Viet Nam",
                 @"parent": @"id_5"
                 },
             @{
                 @"id": @"id_5_5_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_5_5",
                 @"value": @96
                 },
             @{
                 @"id": @"id_5_5_1",
                 @"name": @"Injuries",
                 @"parent": @"id_5_5",
                 @"value": @59
                 },
             @{
                 @"id": @"id_5_5_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_5_5",
                 @"value": @435
                 },
             @{
                 @"id": @"id_5_6",
                 @"name": @"Lao People's Democratic Republic",
                 @"parent": @"id_5"
                 },
             @{
                 @"id": @"id_5_6_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_5_6",
                 @"value": @329
                 },
             @{
                 @"id": @"id_5_6_1",
                 @"name": @"Injuries",
                 @"parent": @"id_5_6",
                 @"value": @75
                 },
             @{
                 @"id": @"id_5_6_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_5_6",
                 @"value": @680
                 },
             @{
                 @"id": @"id_5_7",
                 @"name": @"China",
                 @"parent": @"id_5"
                 },
             @{
                 @"id": @"id_5_7_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_5_7",
                 @"value": @41
                 },
             @{
                 @"id": @"id_5_7_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_5_7",
                 @"value": @576
                 },
             @{
                 @"id": @"id_5_7_2",
                 @"name": @"Injuries",
                 @"parent": @"id_5_7",
                 @"value": @50
                 },
             @{
                 @"id": @"id_5_8",
                 @"name": @"New Zealand",
                 @"parent": @"id_5"
                 },
             @{
                 @"id": @"id_5_8_0",
                 @"name": @"Injuries",
                 @"parent": @"id_5_8",
                 @"value": @33
                 },
             @{
                 @"id": @"id_5_8_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_5_8",
                 @"value": @314
                 },
             @{
                 @"id": @"id_5_8_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_5_8",
                 @"value": @18
                 },
             @{
                 @"id": @"id_5_9",
                 @"name": @"Papua New Guinea",
                 @"parent": @"id_5"
                 },
             @{
                 @"id": @"id_5_9_0",
                 @"name": @"Injuries",
                 @"parent": @"id_5_9",
                 @"value": @100
                 },
             @{
                 @"id": @"id_5_9_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_5_9",
                 @"value": @554
                 },
             @{
                 @"id": @"id_5_9_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_5_9",
                 @"value": @693
                 },
             @{
                 @"id": @"id_5_10",
                 @"name": @"Philippines",
                 @"parent": @"id_5"
                 },
             @{
                 @"id": @"id_5_10_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_5_10",
                 @"value": @226
                 },
             @{
                 @"id": @"id_5_10_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_5_10",
                 @"value": @720
                 },
             @{
                 @"id": @"id_5_10_2",
                 @"name": @"Injuries",
                 @"parent": @"id_5_10",
                 @"value": @54
                 },
             @{
                 @"id": @"id_5_11",
                 @"name": @"Malaysia",
                 @"parent": @"id_5"
                 },
             @{
                 @"id": @"id_5_11_0",
                 @"name": @"Injuries",
                 @"parent": @"id_5_11",
                 @"value": @63
                 },
             @{
                 @"id": @"id_5_11_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_5_11",
                 @"value": @563
                 },
             @{
                 @"id": @"id_5_11_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_5_11",
                 @"value": @117
                 },
             @{
                 @"id": @"id_5_12",
                 @"name": @"Australia",
                 @"parent": @"id_5"
                 },
             @{
                 @"id": @"id_5_12_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_5_12",
                 @"value": @14
                 },
             @{
                 @"id": @"id_5_12_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_5_12",
                 @"value": @303
                 },
             @{
                 @"id": @"id_5_12_2",
                 @"name": @"Injuries",
                 @"parent": @"id_5_12",
                 @"value": @28
                 },
             @{
                 @"id": @"id_5_13",
                 @"name": @"Fiji",
                 @"parent": @"id_5"
                 },
             @{
                 @"id": @"id_5_13_0",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_5_13",
                 @"value": @804
                 },
             @{
                 @"id": @"id_5_13_1",
                 @"name": @"Injuries",
                 @"parent": @"id_5_13",
                 @"value": @64
                 },
             @{
                 @"id": @"id_5_13_2",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_5_13",
                 @"value": @105
                 },
             @{
                 @"id": @"id_5_14",
                 @"name": @"Singapore",
                 @"parent": @"id_5"
                 },
             @{
                 @"id": @"id_5_14_0",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_5_14",
                 @"value": @66
                 },
             @{
                 @"id": @"id_5_14_1",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_5_14",
                 @"value": @265
                 },
             @{
                 @"id": @"id_5_14_2",
                 @"name": @"Injuries",
                 @"parent": @"id_5_14",
                 @"value": @18
                 },
             @{
                 @"id": @"id_5_15",
                 @"name": @"Republic of Korea",
                 @"parent": @"id_5"
                 },
             @{
                 @"id": @"id_5_15_0",
                 @"name": @"Injuries",
                 @"parent": @"id_5_15",
                 @"value": @53
                 },
             @{
                 @"id": @"id_5_15_1",
                 @"name": @"Communicable diseases",
                 @"parent": @"id_5_15",
                 @"value": @34
                 },
             @{
                 @"id": @"id_5_15_2",
                 @"name": @"Non-communicable diseases",
                 @"parent": @"id_5_15",
                 @"value": @302
                 },
             @{
                 @"id": @"id_5",
                 @"name": @"Western Pacific",
                 @"color": @"#f15c80",
                 @"value": @723
                 }
             ];
    
}


@end
