import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    // Data gathered from http://populationpyramid.net/germany/2015/

    // Age categories
    let categories = [
        "0-4", "5-9", "10-14", "15-19",
        "20-24", "25-29", "30-34", "35-39", "40-44",
        "45-49", "50-54", "55-59", "60-64", "65-69",
        "70-74", "75-79", "80-84", "85-89", "90-94",
        "95-99", "100 + "
    ]

    let chartView = HIChartView(frame: view.bounds)
    
    let options = HIOptions()

    let chart = HIChart()
    chart.type = "bar"
    options.chart = chart

    let title = HITitle()
    title.text = "Population pyramid for Germany, 2018"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Source: <a href=\"http://populationpyramid.net/germany/2018/\">Population Pyramids of the World from 1950 to 2100</a>"
    options.subtitle = subtitle

    let accessibility = HIAccessibility()
    accessibility.point = HIPoint()
    accessibility.point.valueDescriptionFormat = "{index}. Age {xDescription}, {value}%."
    options.accessibility = accessibility

    let leftXAxis = HIXAxis()
    leftXAxis.categories = categories
    leftXAxis.reversed = false
    leftXAxis.labels = HILabels()
    leftXAxis.labels.step = 1
    leftXAxis.accessibility = HIAccessibility()
    leftXAxis.accessibility.definition = "Age (male)"

    let rightXAxis = HIXAxis() // mirror axis on right side
    rightXAxis.opposite = true
    rightXAxis.reversed = false
    rightXAxis.categories = categories
    rightXAxis.linkedTo = 0
    rightXAxis.labels = HILabels()
    rightXAxis.labels.step = 1
    rightXAxis.accessibility = HIAccessibility()
    rightXAxis.accessibility.definition = "Age (female)"

    options.xAxis = [leftXAxis, rightXAxis]

    let yAxis = HIYAxis()
    yAxis.labels = HILabels()
    yAxis.labels.formatter = HIFunction(jsFunction: "function () { return Math.abs(this.value) + '%'; }")
    yAxis.accessibility = HIAccessibility()
    yAxis.accessibility.definition = "Percentage population"
    yAxis.accessibility.rangeDescription = "Range: 0 to 5%"
    options.yAxis = [yAxis]

    let plotOptions = HIPlotOptions()
    plotOptions.series = HISeries()
    plotOptions.series.stacking = "normal"
    options.plotOptions = plotOptions

    let tooltip = HITooltip()
    tooltip.formatter = HIFunction(jsFunction: "function () { return '<b>' + this.series.name + ', age ' + this.point.category + '</b><br/>' + 'Population: ' + Highcharts.numberFormat(Math.abs(this.point.y), 1) + '%'; }")
    options.tooltip = tooltip

    let male = HIBar()
    male.name = "Male"
    male.data = [
        -2.2, -2.1, -2.2, -2.4,
        -2.7, -3.0, -3.3, -3.2,
        -2.9, -3.5, -4.4, -4.1,
        -3.4, -2.7, -2.3, -2.2,
        -1.6, -0.6, -0.3, -0.0,
        -0.0
    ]

    let female = HIBar()
    female.name = "Female"
    female.data = [
        2.1, 2.0, 2.1, 2.3, 2.6,
        2.9, 3.2, 3.1, 2.9, 3.4,
        4.3, 4.0, 3.5, 2.9, 2.5,
        2.7, 2.2, 1.1, 0.6, 0.2,
        0.0
    ]

    options.series = [male, female]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}
