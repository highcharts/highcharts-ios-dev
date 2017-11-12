#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

HIChartView *chartView;
NSString *currentButtonClicked;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    chartView = [[HIChartView alloc] initWithFrame:CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y, self.view.bounds.size.width, self.view.bounds.size.height - 50)];
    
    chartView.theme = @"grid-light";
    
    HIOptions *options = [[HIOptions alloc] init];
    
    HIChart *chart = [[HIChart alloc] init];
    chart.type = @"column";
    
    HITitle *title = [[HITitle alloc] init];
    title.text = @"Chart.update";
    
    HISubtitle *subtitle = [[HISubtitle alloc] init];
    subtitle.text = @"Plain";
    currentButtonClicked = @"Plain";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.categories = [NSMutableArray arrayWithObjects:@"Jan", @"Feb", @"Mar", @"Apr", @"May", @"Jun", @"Jul", @"Aug", @"Sep", @"Oct", @"Nov", @"Dec", nil];
    
    HIColumn *column = [[HIColumn alloc] init];
    column.colorByPoint = [[NSNumber alloc] initWithBool:true];
    column.data = [NSMutableArray arrayWithObjects:@29.9, @71.5, @106.4, @129.2, @144.0, @176.0, @135.6, @148.5, @216.4, @194.1, @95.6, @54.4, nil];
    column.showInLegend = [[NSNumber alloc] initWithBool:false];
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.series = [NSMutableArray arrayWithObjects:column, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
    
    [self addButton:@"Plain" atXPosition:50];
    [self addButton:@"Inverted" atXPosition:160];
    [self addButton:@"Polar" atXPosition:270];
}

- (void)addButton:(NSString*)name atXPosition:(CGFloat)x{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:name forState:UIControlStateNormal];
    button.frame = CGRectMake(x, self.view.bounds.size.height - 40, 60, 30);
    [self.view addSubview:button];
}

- (void)buttonPressed:(UIButton*)sender{
    NSString* buttonTitle = sender.currentTitle;
    if ([buttonTitle isEqualToString:currentButtonClicked]) {
        return;
    }
    
    HIOptions *newOptions = [[HIOptions alloc] init];
    
    HIChart *chart = [[HIChart alloc] init];
    chart.type = @"column";
    
    HISubtitle *subtitle = [[HISubtitle alloc] init];
    
    if([buttonTitle isEqualToString:@"Plain"]) {
        chart.inverted = [[NSNumber alloc] initWithBool:false];
        chart.polar = [[NSNumber alloc] initWithBool:false];
        subtitle.text = buttonTitle;
        currentButtonClicked = buttonTitle;
    }
    else if ([buttonTitle isEqualToString:@"Inverted"]) {
        chart.inverted = [[NSNumber alloc] initWithBool:true];
        chart.polar = [[NSNumber alloc] initWithBool:false];
        subtitle.text = buttonTitle;
        currentButtonClicked = buttonTitle;
    }
    else if ([buttonTitle isEqualToString:@"Polar"]) {
        chart.inverted = [[NSNumber alloc] initWithBool:false];
        chart.polar = [[NSNumber alloc] initWithBool:true];
        subtitle.text = buttonTitle;
        currentButtonClicked = buttonTitle;
    }
    
    HITitle *title = [[HITitle alloc] init];
    title.text = @"Chart.update";
    
    HIXAxis *xaxis = [[HIXAxis alloc] init];
    xaxis.categories = [NSMutableArray arrayWithObjects:@"Jan", @"Feb", @"Mar", @"Apr", @"May", @"Jun", @"Jul", @"Aug", @"Sep", @"Oct", @"Nov", @"Dec", nil];
    
    HIColumn *column = [[HIColumn alloc] init];
    column.colorByPoint = [[NSNumber alloc] initWithBool:true];
    column.data = [NSMutableArray arrayWithObjects:@29.9, @71.5, @106.4, @129.2, @144.0, @176.0, @135.6, @148.5, @216.4, @194.1, @95.6, @54.4, nil];
    column.showInLegend = [[NSNumber alloc] initWithBool:false];
    
    newOptions.chart = chart;
    newOptions.title = title;
    newOptions.subtitle = subtitle;
    newOptions.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    newOptions.series = [NSMutableArray arrayWithObjects:column, nil];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        chartView.options = newOptions;
    });
}

@end

