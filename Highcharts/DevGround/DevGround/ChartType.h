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
    if ([type isEqualToString:@"Area"]) {
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"area";
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"US and USSR nuclear stockpiles";
        
        HISubtitle *subtitle = [[HISubtitle alloc]init];
        subtitle.text = @"Source: <a href=\"http://thebulletin.metapress.com/content/c4120650912x74k7/fulltext.pdf\">thebulletin.metapress.com</a>";
        
        HIXAxis *xaxis = [[HIXAxis alloc]init];
        xaxis.allowDecimals = @NO;
        
        HIYAxis *yaxis = [[HIYAxis alloc]init];
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Nuclear weapon states";
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.pointFormat = @"{series.name} produced <b>{point.y:,.0f}</b><br/>warheads in {point.x}";
        
        HIPlotOptions *plotOptions = [[HIPlotOptions alloc]init];
        plotOptions.area = [[HIPlotOptionsArea alloc]init];
        plotOptions.area.pointStart = @1940;
        plotOptions.area.marker = [[HIPlotOptionsAreaMarker alloc]init];
        plotOptions.area.marker.enabled = @NO;
        plotOptions.area.marker.symbol = @"circle";
        plotOptions.area.marker.radius = @2;
        plotOptions.area.marker.states = [[HIPlotOptionsAreaMarkerStates alloc]init];
        plotOptions.area.marker.states.hover = [[HIPlotOptionsAreaMarkerStatesHover alloc]init];
        plotOptions.area.marker.states.hover.enabled = @YES;
        
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
        plotOptions.bar.dataLabels.enabled = @YES;
        
        HILegend *legend = [[HILegend alloc]init];
        legend.layout = @"vertical";
        legend.align = @"right";
        legend.verticalAlign = @"top";
        legend.x = @-40;
        legend.y = @80;
        legend.floating = @YES;
        legend.borderWidth = @1;
        legend.backgroundColor = [[HIHexColor alloc]initWithString:@"#FFFFFF"];
        legend.shadow = @YES;
        
        HICredits *credits = [[HICredits alloc]init];
        credits.enabled = @NO;
        
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
        tooltip.shared = @YES;
        tooltip.useHTML = @YES;
        
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
    else if ([type isEqualToString:@"Pie"]) {
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"pie";
        chart.plotShadow = @NO;
        
        HITitle *title = [[HITitle alloc]init];
        title.text = @"Browser market shares January, 2015 to May, 2015";
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.pointFormat = @"{series.name}: <b>{point.percentage:.1f}%</b>";
        
        HIPlotOptions *plotOptions = [[HIPlotOptions alloc]init];
        plotOptions.pie = [[HIPlotOptionsPie alloc]init];
        plotOptions.pie.allowPointSelect = @YES;
        plotOptions.pie.cursor = @"pointer";
        plotOptions.pie.dataLabels = [[HIPlotOptionsPieDataLabels alloc]init];
        plotOptions.pie.dataLabels.enabled = @YES;
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
    else if ([type isEqualToString:@"Bubble"]) {
        HIChart *chart = [[HIChart alloc]init];
        chart.type = @"bubble";
        chart.plotBorderWidth = @1;
        chart.zoomType = @"xy";
        
        HILegend *legend = [[HILegend alloc]init];
        legend.enabled = @NO;
        
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
        plotLines.color = [[HIHexColor alloc]initWithString:@"#FFFFFF"];
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
        yaxis.startOnTick = @NO;
        yaxis.endOnTick = @NO;
        yaxis.title = [[HIYAxisTitle alloc]init];
        yaxis.title.text = @"Daily sugar intake";
        yaxis.labels = [[HIYAxisLabels alloc]init];
        yaxis.labels.format = @"{value} gr";
        yaxis.maxPadding = @0.2;
        HIYAxisPlotLines *yplotLines = [[HIYAxisPlotLines alloc]init];
        yplotLines.color = [[HIHexColor alloc]initWithString:@"#FFFFFF"];
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
        tooltip.useHTML = @YES;
        tooltip.headerFormat = @"<table>";
        tooltip.pointFormat = @"<tr><th colspan=\"2\"><h3>{point.country}</h3></th></tr><tr><th>Fat intake:</th><td>{point.x}g</td></tr><tr><th>Sugar intake:</th><td>{point.y}g</td></tr><tr><th>Obesity (adults):</th><td>{point.z}%</td></tr>";
        tooltip.footerFormat = @"</table>";
        tooltip.followPointer = @YES;
        
        HIPlotOptions *plotOptions = [[HIPlotOptions alloc]init];
        plotOptions.bubble = [[HIPlotOptionsBubble alloc]init];
        plotOptions.bubble.dataLabels = [[HIPlotOptionsBubbleDataLabels alloc]init];
        plotOptions.bubble.dataLabels.enabled = @YES;
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
    else if ([type isEqualToString:@"Polar"]) {
        HIChart *chart = [[HIChart alloc]init];
        chart.polar = @YES;
        
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
        //column.type = @"column";
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
        //line.type = @"line";
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
        //area.type = @"area";
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
        
        NSLog(@"%@", [options getParams]);
        
        return options;
        
    }
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
        plotOptions.funnel.dataLabels.enabled = @YES;
        plotOptions.funnel.dataLabels.format = @"<b>{point.name}</b> ({point.y:,.0f})";
        plotOptions.funnel.dataLabels.color = [[HIHexColor alloc]initWithString:@"#FFFFFF"];
        plotOptions.funnel.dataLabels.softConnector = @YES;
        plotOptions.funnel.neckWidth = @"30%";
        plotOptions.funnel.neckHeight = @"25%";
        
        HILegend *legend = [[HILegend alloc]init];
        legend.enabled = @NO;
        
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
        
        return options;
    }
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
        legend.enabled = @NO;
        
        HITooltip *tooltip = [[HITooltip alloc]init];
        tooltip.pointFormat = @"<b>${point.y:,.2f}</b> USD";
        
        HIWaterfall *series = [[HIWaterfall alloc]init];
        series.upColor = [[HIHexColor alloc]initWithString:@"#90ed7d"];
        series.color = [[HIHexColor alloc]initWithString:@"#f7a35c"];
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
                       @{
                         @"name": @"Positive Balance",
                         @"isIntermediateSum": @true,
                         @"color": @"#434348"
                         },
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
        series.dataLabels.enabled = @YES;
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
    else {
        HIOptions *options = [[HIOptions alloc]init];
        
        HIExporting *exporting = [[HIExporting alloc]init];
        exporting.enabled = @NO;
        
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
        series.enableMouseTracking = @NO;
        series.showInLegend = @NO;
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

@end
