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
