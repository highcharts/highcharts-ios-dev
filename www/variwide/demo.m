#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.plugins = @[ @"variwide" ];
    
    HIOptions *options = [[HIOptions alloc] init];
    
    HIChart *chart = [[HIChart alloc] init];
    chart.type = @"variwide";
    
    HITitle *title = [[HITitle alloc] init];
    title.text = @"Labor Costs in Europe, 2016";
    
    HISubtitle *subtitle = [[HISubtitle alloc] init];
    subtitle.text = @"Source: <a href=\"http://ec.europa.eu/eurostat/web/labour-market/labour-costs/main-tables\">eurostat</a>";
    
    HIXAxis *xaxis = [[HIXAxis alloc] init];
    xaxis.type = @"category";
    xaxis.title = [[HITitle alloc] init];
    xaxis.title.text = @"Column widths are proportional to GDP";
    
    HILegend *legend = [[HILegend alloc] init];
    legend.enabled = [[NSNumber alloc] initWithBool:false];
    
    HIVariwide *variwide = [[HIVariwide alloc] init];
    variwide.name = @"Labor Costs";
    variwide.data = [NSMutableArray arrayWithObjects:
                     @[@"Norway", @50.2, @335504],
                     @[@"Denmark", @42, @277339],
                     @[@"Belgium", @39.2, @421611],
                     @[@"Sweden", @38, @462057],
                     @[@"France", @35.6, @2228857],
                     @[@"Netherlands", @34.3, @702641],
                     @[@"Finland", @33.2, @215615],
                     @[@"Germany", @33.0, @3144050],
                     @[@"Austria", @32.7, @349344],
                     @[@"Ireland", @30.4, @275567],
                     @[@"Italy", @27.8, @1672438],
                     @[@"United Kingdom", @26.7, @2366911],
                     @[@"Spain", @21.3, @1113851],
                     @[@"Greece", @14.2, @175887],
                     @[@"Portugal", @13.7, @184933],
                     @[@"Czech Republic", @10.2, @176564],
                     @[@"Poland", @8.6, @424269],
                     @[@"Romania", @5.5, @169578], nil];
    
    variwide.dataLabels = [[HIDataLabels alloc] init];
    variwide.dataLabels.enabled = [[NSNumber alloc] initWithBool:true];
    variwide.dataLabels.format = @"€{point.y:.0f}";
    variwide.tooltip = [[HITooltip alloc] init];
    variwide.tooltip.pointFormat = @"Labor Costs: <b>€ {point.y}/h</b><br>GDP: <b>€ {point.z} million</b><br>";
    variwide.colorByPoint = [[NSNumber alloc] initWithBool:true];
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.legend = legend;
    options.series = [NSMutableArray arrayWithObjects:variwide, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
