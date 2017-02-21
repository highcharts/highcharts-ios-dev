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
    if ([type isEqualToString:@"Line"]) {
        Title *title = [[Title alloc]init];
        title.text = @"Monthly Average Temperature";
        title.x = @-20;
        
        Subtitle *subtitle = [[Subtitle alloc]init];
        subtitle.text = @"Source: WorldClimate.com";
        subtitle.x = @-20;
        
        XAxis *xaxis = [[XAxis alloc]init];
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
        YAxis *yaxis = [[YAxis alloc]init];
        yaxis.title = [[YAxisTitle alloc]init];
        yaxis.title.text = @"Temperature (°C)";
        yaxis.plotLines = [NSMutableArray arrayWithObjects:@{
                                                             @"value": @0,
                                                             @"width": @1,
                                                             @"color": @"#808080"
                                                             }, nil];
        
        Tooltip *tooltip = [[Tooltip alloc]init];
        tooltip.valueSuffix = @"°C";
        
        Legend *legend = [[Legend alloc]init];
        legend.layout = @"vertical";
        legend.align = @"right";
        legend.verticalAlign = @"middle";
        legend.borderWidth = @0;
        
        Line *line1 = [[Line alloc]init];
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
        
        Line *line2 = [[Line alloc]init];
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
        
        Line *line3 = [[Line alloc]init];
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
        
        Line *line4 = [[Line alloc]init];
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
    else {
        HIOptions *options = [[HIOptions alloc]init];
        
        Exporting *exporting = [[Exporting alloc]init];
        exporting.enabled = @NO;
        
        Chart *chart = [[Chart alloc]init];
        chart.type = @"column";
        
        Title *title = [[Title alloc]init];
        title.text = @"";
        
        Subtitle *subtitle = [[Subtitle alloc]init];
        subtitle.text = @"";
        
        XAxis *xAxis = [[XAxis alloc]init];
        
        YAxis *yAxis = [[YAxis alloc]init];
        yAxis.title = [[YAxisTitle alloc]init];
        yAxis.title.text = @"";
        yAxis.tickAmount = @1;
        
        Column *series = [[Column alloc]init];
        series.enableMouseTracking = @NO;
        series.showInLegend = @NO;
        series.data = [NSMutableArray arrayWithObjects: @49.9,
                       @71.5,
                       @106.4, nil];
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
