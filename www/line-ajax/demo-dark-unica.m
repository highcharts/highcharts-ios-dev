#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"dark-unica";

    chartView.plugins = @[ @"series-label" ];
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIData *data = [[HIData alloc] init];
    data.csv = @"# ----------------------------------------\n# highcharts.com\n# Audience Overview\n# 20130309-20130408\n# ----------------------------------------\nDay,Visits,Unique Visitors\n3/9/13,5691,4346\n3/10/13,5403,4112\n3/11/13,15574,11356\n3/12/13,16211,11876\n3/13/13,16427,11966\n3/14/13,16486,12086\n3/15/13,14737,10916\n3/16/13,5838,4507\n3/17/13,5542,4202\n3/18/13,15560,11523\n3/19/13,18940,14431\n3/20/13,16970,12599\n3/21/13,17580,13094\n3/22/13,17511,13234\n3/23/13,6601,5213\n3/24/13,6158,4806\n3/25/13,17353,12639\n3/26/13,17660,12768\n3/27/13,16921,12389\n3/28/13,15964,11686\n3/29/13,12028,8891\n3/30/13,5835,4513\n3/31/13,4799,3661\n4/1/13,13037,9503\n4/2/13,16976,12666\n4/3/13,17100,12635\n4/4/13,15701,11394\n4/5/13,14378,10530\n4/6/13,5889,4521\n4/7/13,6779,5109\n4/8/13,16068,11599\n";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Daily visits at www.highcharts.com";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"Source: Google Analytics";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.tickInterval = @(7 * 24 * 3600 * 1000);
    xaxis.tickWidth = @0;
    xaxis.gridLineWidth = @1;
    xaxis.labels = [[HILabels alloc] init];
    xaxis.labels.align = @"left";
    xaxis.labels.x = @3;
    xaxis.labels.y = @-3;
    
    HIYAxis *yaxis1 = [[HIYAxis alloc]init];
    yaxis1.title = [[HITitle alloc]init];
    yaxis1.labels = [[HILabels alloc] init];
    yaxis1.labels.align = @"left";
    yaxis1.labels.x = @3;
    yaxis1.labels.y = @16;
    yaxis1.labels.format = @"{value:.,0f}";
    yaxis1.showFirstLabel = [[NSNumber alloc] initWithBool:false];
    
    HIYAxis *yaxis2 = [[HIYAxis alloc]init];
    yaxis2.linkedTo = @0;
    yaxis2.gridLineWidth = @0;
    yaxis2.opposite = [[NSNumber alloc] initWithBool:true];
    yaxis2.title = [[HITitle alloc]init];
    yaxis2.labels = [[HILabels alloc] init];
    yaxis2.labels.x = @-3;
    yaxis2.labels.y = @16;
    yaxis2.labels.format = @"{value:.,0f}";
    yaxis2.showFirstLabel = [[NSNumber alloc] initWithBool:false];
    
    HILegend *legend = [[HILegend alloc]init];
    legend.align = @"left";
    legend.verticalAlign = @"top";
    legend.y = @20;
    legend.floating = [[NSNumber alloc] initWithBool:true];
    legend.borderWidth = @0;
    
    HITooltip *tooltip = [[HITooltip alloc] init];
    tooltip.shared = [[NSNumber alloc] initWithBool:true];
    tooltip.crosshairs = [[NSNumber alloc] initWithBool:true];
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc] init];
    plotoptions.series = [[HISeries alloc] init];
    plotoptions.series.cursor = @"pointer";
    plotoptions.series.point = [[HIPoint alloc] init];
    plotoptions.series.point.events = [[HIEvents alloc] init];
    plotoptions.series.point.events.click = [[HIFunction alloc] initWithFunction:@"function (e) { hs.htmlExpand(null, { pageOrigin: { x: e.pageX || e.clientX, y: e.pageY || e.clientY }, headingText: this.series.name, maincontentText: Highcharts.dateFormat('%A, %b %e, %Y', this.x) + ':<br/> ' + this.y + ' visits', width: 200 }); }"];
    plotoptions.series.marker = [[HIMarker alloc] init];
    plotoptions.series.marker.lineWidth = @1;
    
    HILine *line1 = [[HILine alloc]init];
    line1.name = @"All visits";
    line1.lineWidth = @4;
    line1.marker = [[HIMarker alloc] init];
    line1.marker.radius = @4;
    
    HILine *line2 = [[HILine alloc]init];
    line2.name = @"New visitors";
    
    HIResponsive *responsive = [[HIResponsive alloc] init];
    
    HIRules *rules1 = [[HIRules alloc] init];
    rules1.condition = [[HICondition alloc] init];
    rules1.condition.maxWidth = @600;
    rules1.chartOptions = @{
                            @"legend" : @{
                                        @"verticalAlign": @"bottom",
                                        @"y": @0,
                                        @"floating": @false
                                    }
                            
                            };
    responsive.rules = [NSMutableArray arrayWithObjects:rules1, nil];
    
    options.data = data;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObject:xaxis];
    options.yAxis = @[yaxis1, yaxis2];
    options.legend = legend;
    options.tooltip = tooltip;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects:line1, line2, nil];
    options.responsive = responsive;
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
