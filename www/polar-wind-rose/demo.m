#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIData *data = [[HIData alloc] init];
    data.table = @"<table id='freq' border='0' cellspacing='0' cellpadding='0'> <tr nowrap bgcolor='#CCCCFF'> <th colspan='9' class='hdr'>Table of Frequencies (percent)</th> </tr> <tr nowrap bgcolor='#CCCCFF'> <th class='freq'>Direction</th> <th class='freq'>&lt; 0.5 m/s</th> <th class='freq'>0.5-2 m/s</th> <th class='freq'>2-4 m/s</th> <th class='freq'>4-6 m/s</th> <th class='freq'>6-8 m/s</th> <th class='freq'>8-10 m/s</th> <th class='freq'>&gt; 10 m/s</th> <th class='freq'>Total</th> </tr> <tr nowrap> <td class='dir'>N</td> <td class='data'>1.81</td> <td class='data'>1.78</td> <td class='data'>0.16</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>3.75</td> </tr> <tr nowrap bgcolor='#DDDDDD'> <td class='dir'>NNE</td> <td class='data'>0.62</td> <td class='data'>1.09</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>1.71</td> </tr> <tr nowrap> <td class='dir'>NE</td> <td class='data'>0.82</td> <td class='data'>0.82</td> <td class='data'>0.07</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>1.71</td> </tr> <tr nowrap bgcolor='#DDDDDD'> <td class='dir'>ENE</td> <td class='data'>0.59</td> <td class='data'>1.22</td> <td class='data'>0.07</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>1.88</td> </tr> <tr nowrap> <td class='dir'>E</td> <td class='data'>0.62</td> <td class='data'>2.20</td> <td class='data'>0.49</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>3.32</td> </tr> <tr nowrap bgcolor='#DDDDDD'> <td class='dir'>ESE</td> <td class='data'>1.22</td> <td class='data'>2.01</td> <td class='data'>1.55</td> <td class='data'>0.30</td> <td class='data'>0.13</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>5.20</td> </tr> <tr nowrap> <td class='dir'>SE</td> <td class='data'>1.61</td> <td class='data'>3.06</td> <td class='data'>2.37</td> <td class='data'>2.14</td> <td class='data'>1.74</td> <td class='data'>0.39</td> <td class='data'>0.13</td> <td class='data'>11.45</td> </tr> <tr nowrap bgcolor='#DDDDDD'> <td class='dir'>SSE</td> <td class='data'>2.04</td> <td class='data'>3.42</td> <td class='data'>1.97</td> <td class='data'>0.86</td> <td class='data'>0.53</td> <td class='data'>0.49</td> <td class='data'>0.00</td> <td class='data'>9.31</td> </tr> <tr nowrap> <td class='dir'>S</td> <td class='data'>2.66</td> <td class='data'>4.74</td> <td class='data'>0.43</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>7.83</td> </tr> <tr nowrap bgcolor='#DDDDDD'> <td class='dir'>SSW</td> <td class='data'>2.96</td> <td class='data'>4.14</td> <td class='data'>0.26</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>7.37</td> </tr> <tr nowrap> <td class='dir'>SW</td> <td class='data'>2.53</td> <td class='data'>4.01</td> <td class='data'>1.22</td> <td class='data'>0.49</td> <td class='data'>0.13</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>8.39</td> </tr> <tr nowrap bgcolor='#DDDDDD'> <td class='dir'>WSW</td> <td class='data'>1.97</td> <td class='data'>2.66</td> <td class='data'>1.97</td> <td class='data'>0.79</td> <td class='data'>0.30</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>7.70</td> </tr> <tr nowrap> <td class='dir'>W</td> <td class='data'>1.64</td> <td class='data'>1.71</td> <td class='data'>0.92</td> <td class='data'>1.45</td> <td class='data'>0.26</td> <td class='data'>0.10</td> <td class='data'>0.00</td> <td class='data'>6.09</td> </tr> <tr nowrap bgcolor='#DDDDDD'> <td class='dir'>WNW</td> <td class='data'>1.32</td> <td class='data'>2.40</td> <td class='data'>0.99</td> <td class='data'>1.61</td> <td class='data'>0.33</td> <td class='data'>0.00</td> <td class='data'>0.00</td> <td class='data'>6.64</td> </tr> <tr nowrap> <td class='dir'>NW</td> <td class='data'>1.58</td> <td class='data'>4.28</td> <td class='data'>1.28</td> <td class='data'>0.76</td> <td class='data'>0.66</td> <td class='data'>0.69</td> <td class='data'>0.03</td> <td class='data'>9.28</td> </tr> <tr nowrap bgcolor='#DDDDDD'> <td class='dir'>NNW</td> <td class='data'>1.51</td> <td class='data'>5.00</td> <td class='data'>1.32</td> <td class='data'>0.13</td> <td class='data'>0.23</td> <td class='data'>0.13</td> <td class='data'>0.07</td> <td class='data'>8.39</td> </tr> <tr nowrap> <td class='totals'>Total</td> <td class='totals'>25.53</td> <td class='totals'>44.54</td> <td class='totals'>15.07</td> <td class='totals'>8.52</td> <td class='totals'>4.31</td> <td class='totals'>1.81</td> <td class='totals'>0.23</td> <td class='totals'>&nbsp;</td> </tr> </table>";
    
    data.startRow = @1;
    data.endRow = @17;
    data.endColumn = @7;
    
    
    HIChart *chart = [[HIChart alloc]init];
    chart.polar = [[NSNumber alloc] initWithBool:true];
    chart.type = @"column";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Wind rose for South Shore Met Station, Oregon";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"Source: or.water.usgs.gov";
    
    HIPane *pane = [[HIPane alloc]init];
    pane.size = @"85%";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.tickmarkPlacement = @"on";
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.min = @0;
    yaxis.endOnTick = [[NSNumber alloc] initWithBool:false];
    yaxis.showLastLabel = [[NSNumber alloc] initWithBool:true];
    yaxis.title = [[HITitle alloc] init];
    yaxis.title.text = @"Frequency (%)";
    yaxis.labels = [[HILabels alloc] init];
    yaxis.labels.formatter = [[HIFunction alloc] initWithFunction:@"function () { return this.value + '%'; }"];
    yaxis.reversedStacks = [[NSNumber alloc] initWithBool:false];
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.valueSuffix = @"%";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc] init];
    plotoptions.series = [[HISeries alloc] init];
    plotoptions.series.stacking = @"normal";
    plotoptions.series.shadow = [[NSNumber alloc] initWithBool:false];
    plotoptions.series.pointPlacement = @"on";
    
    HILegend *legend = [[HILegend alloc]init];
    legend.align = @"right";
    legend.verticalAlign = @"top";
    legend.y = @100;
    legend.layout = @"vertical";
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.pane = pane;
    options.tooltip = tooltip;
    options.legend = legend;
    options.plotOptions = plotoptions;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.data = data;
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
