<p align="center" >
	<img src="http://www.highcharts.com/media/templates/highsoft_bootstrap/images/logo.svg" alt="Highcharts" title="Highcharts">
</p>

Highcharts iOS is a delightful wrapper of HighchartsJS for iOS.

## Documentation
Highcharts iOS i based on Highcharts JS therefore standard documentation apply.

- Read the ["General Docummentation"](http://www.highcharts.com/docs)

## Installation
Highcharts-iOS supports for now only one method of installation.

## Drag&Drop
Drag Highcharts folder in your project, and select **Create groups**, add to your target and click **Finish**

```
// Init HighchartView with specified frame.
HighchartsView *highchartsView = [[HighchartsView alloc] initWithFrame:self.view.bounds];
[self.view addSubview:self.highchartsView];

// Load your chart.
NSString *chartJS = @"...";
[self.highchartsView loadHighcharts:chartJS];
```

## Demo
ExampleCharts contains project with chart.

## Creating chart
To create chart you need to use JS. Like in standard Highcharts JS.

```
var chart = new Highcharts.Chart({
    chart: {
        renderTo: 'container'
    },

    xAxis: {
        categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
            'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
        ]
    },

    series: [{
        data: [29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]
    }]

});
```
