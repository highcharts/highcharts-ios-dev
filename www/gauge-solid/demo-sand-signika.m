
#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"sand-signika";
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"solidgauge";
    options.chart = chart;
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"";
    options.title = title;
    
    HIPane *pane = [[HIPane alloc]init];
    pane.center = @[@"50%", @"85%"];
    pane.size = @"140%";
    pane.startAngle = @-90;
    pane.endAngle = @90;
    HIBackground *background = [[HIBackground alloc]init];
    background.backgroundColor = [[HIColor alloc]initWithHexValue:@"EEE"];
    background.innerRadius = @"60%";
    background.outerRadius = @"100%";
    background.shape = @"arc";
    pane.background = @[background];
    options.pane = pane;
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.enabled = [[NSNumber alloc] initWithBool:false];
    options.tooltip = tooltip;
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.solidgauge = [[HISolidgauge alloc]init];
    plotoptions.solidgauge.dataLabels = [[HIDataLabels alloc]init];
    plotoptions.solidgauge.dataLabels.y = @5;
    plotoptions.solidgauge.dataLabels.borderWidth = @0;
    plotoptions.solidgauge.dataLabels.useHTML = [[NSNumber alloc] initWithBool:true];
    options.plotOptions = plotoptions;
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.stops = @[
                    @[
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
                        ]
                    ];
    yaxis.lineWidth = @0;
    yaxis.tickAmount = @2;
    yaxis.title = [[HITitle alloc]init];
    yaxis.title.text = @"Speed";
    yaxis.labels = [[HILabels alloc]init];
    yaxis.labels.y = @16;
    yaxis.min = @0;
    yaxis.max = @200;
    options.yAxis = @[yaxis];
    
    HICredits *credits = [[HICredits alloc]init];
    credits.enabled = [[NSNumber alloc] initWithBool:false];
    options.credits = credits;
    
    HISolidgauge *gauge = [[HISolidgauge alloc]init];
    gauge.name = @"Speed";
    gauge.data = @[@80];
    gauge.dataLabels = [[HIDataLabels alloc]init];
    gauge.dataLabels.format = @"<div style=\"text-align:center\"><span style=\"font-size:25px;color:black\">{y}</span><br/><span style=\"font-size:12px;color:silver\">km/h</span></div>";
    gauge.tooltip = [[HITooltip alloc]init];
    gauge.tooltip.valueSuffix = @" km/h";
    options.series = @[gauge];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
