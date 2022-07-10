import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "sand-signika"

    let options = HIOptions()

    let chart = HIChart()
    chart.polar = true
    chart.type = "column"
    options.chart = chart

    let title = HITitle()
    title.text = "Wind rose for South Shore Met Station, Oregon"
    title.align = "left"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Source: or.water.usgs.gov"
    subtitle.align = "left"
    options.subtitle = subtitle

    let pane = HIPane()
    pane.size = "85%"
    options.pane = pane

    let legend = HILegend()
    legend.align = "right"
    legend.verticalAlign = "top"
    legend.y = 100
    legend.layout = "vertical"
    options.legend = legend

    let xAxis = HIXAxis()
    xAxis.tickmarkPlacement = "on"
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.min = 0
    yAxis.endOnTick = false
    yAxis.showLastLabel = true
    yAxis.title = HITitle()
    yAxis.title.text = "Frequency (%)"
    yAxis.labels = HILabels()
    yAxis.labels.formatter = HIFunction(jsFunction: "function () { return this.value + '%'; }")
    yAxis.reversedStacks = false
    options.yAxis = [yAxis]

    let tooltip = HITooltip()
    tooltip.valueSuffix = "%"
    options.tooltip = tooltip

    let plotOptions = HIPlotOptions()
    plotOptions.series = HISeries()
    plotOptions.series.stacking = "normal"
    plotOptions.series.shadow = HIShadowOptionsObject()
    plotOptions.series.shadow.opacity = 0
    // plotOptions.series.groupPadding = 0
    plotOptions.series.pointPlacement = "on"
    options.plotOptions = plotOptions

    let column1 = HIColumn()
    column1.data = [
      ["N", 1.81],
      ["NNE", 0.62],
      ["NE", 0.82],
      ["ENE", 0.59],
      ["E", 0.62],
      ["ESE", 1.22],
      ["SE", 1.61],
      ["SSE", 2.04],
      ["S", 2.66],
      ["SSW", 2.96],
      ["SW", 2.53],
      ["WSW", 1.97],
      ["W", 1.64],
      ["WNW", 1.32],
      ["NW", 1.58],
      ["NNW", 1.51]
    ]
    column1.turboThreshold = 0
    column1.name = "&lt; 0.5 m/s"

    let column2 = HIColumn()
    column2.data = [
      ["N", 1.78],
      ["NNE", 1.09],
      ["NE", 0.82],
      ["ENE", 1.22],
      ["E", 2.2],
      ["ESE", 2.01],
      ["SE", 3.06],
      ["SSE", 3.42],
      ["S", 4.74],
      ["SSW", 4.14],
      ["SW", 4.01],
      ["WSW", 2.66],
      ["W", 1.71],
      ["WNW", 2.4],
      ["NW", 4.28],
      ["NNW", 5]
    ]
    column2.turboThreshold = 0
    column2.name = "0.5-2 m/s"

    let column3 = HIColumn()
    column3.data = [
      ["N", 0.16],
      ["NNE", 0],
      ["NE", 0.07],
      ["ENE", 0.07],
      ["E", 0.49],
      ["ESE", 1.55],
      ["SE", 2.37],
      ["SSE", 1.97],
      ["S", 0.43],
      ["SSW", 0.26],
      ["SW", 1.22],
      ["WSW", 1.97],
      ["W", 0.92],
      ["WNW", 0.99],
      ["NW", 1.28],
      ["NNW", 1.32]
    ]
    column3.turboThreshold = 0
    column3.name = "2-4 m/s"

    let column4 = HIColumn()
    column4.data = [
      ["N", 0],
      ["NNE", 0],
      ["NE", 0],
      ["ENE", 0],
      ["E", 0],
      ["ESE", 0.3],
      ["SE", 2.14],
      ["SSE", 0.86],
      ["S", 0],
      ["SSW", 0],
      ["SW", 0.49],
      ["WSW", 0.79],
      ["W", 1.45],
      ["WNW", 1.61],
      ["NW", 0.76],
      ["NNW", 0.13]
    ]
    column4.turboThreshold = 0
    column4.name = "4-6 m/s"


    let column5 = HIColumn()
    column5.data = [
      ["N", 0],
      ["NNE", 0],
      ["NE", 0],
      ["ENE", 0],
      ["E", 0],
      ["ESE", 0.13],
      ["SE", 1.74],
      ["SSE", 0.53],
      ["S", 0],
      ["SSW", 0],
      ["SW", 0.13],
      ["WSW", 0.3],
      ["W", 0.26],
      ["WNW", 0.33],
      ["NW", 0.66],
      ["NNW", 0.23]
    ]
    column5.turboThreshold = 0
    column5.name = "6-8 m/s"

    let column6 = HIColumn()
    column6.data = [
      ["N", 0],
      ["NNE", 0],
      ["NE", 0],
      ["ENE", 0],
      ["E", 0],
      ["ESE", 0],
      ["SE", 0.39],
      ["SSE", 0.49],
      ["S", 0],
      ["SSW", 0],
      ["SW", 0],
      ["WSW", 0],
      ["W", 0.1],
      ["WNW", 0],
      ["NW", 0.69],
      ["NNW", 0.13]
    ]
    column6.turboThreshold = 0
    column6.name = "8-10 m/s"

    let column7 = HIColumn()
    column7.data = [
      ["N", 0],
      ["NNE", 0],
      ["NE", 0],
      ["ENE", 0],
      ["E", 0],
      ["ESE", 0],
      ["SE", 0.13],
      ["SSE", 0],
      ["S", 0],
      ["SSW", 0],
      ["SW", 0],
      ["WSW", 0],
      ["W", 0],
      ["WNW", 0],
      ["NW", 0.03],
      ["NNW", 0.07]
    ]
    column7.turboThreshold = 0
    column7.name = "&gt; 10 m/s"

    options.series = [column1, column2, column3, column4, column5, column6, column7]

    self.view.addSubview(chartView)
  }

}
