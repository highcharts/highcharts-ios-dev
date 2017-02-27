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
        plotOptions.funnel.dataLabels.color = [[HIColor alloc]initWithHexValue:@"FFFFFF"];
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
    else if ([type isEqualToString:@"Gauge"]) {
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

@end
