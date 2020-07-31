import Highcharts
import UIKit

class ViewController: UIViewController {

  private var chartView: HIChartView!

  override func viewDidLoad() {
    super.viewDidLoad()

    chartView = HIChartView(frame: CGRect(x: view.bounds.minX, y: view.bounds.minY, width: view.bounds.width, height: view.bounds.height - 100))

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "column"
    options.chart = chart

    let title = HITitle()
    title.text = "Highcharts responsive chart"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Resize the frame or click buttons to change appearance"
    options.subtitle = subtitle

    let legend = HILegend()
    legend.align = "right"
    legend.verticalAlign = "middle"
    legend.layout = "vertical"
    options.legend = legend

    let xAxis = HIXAxis()
    xAxis.categories = ["Apples", "Oranges", "Bananas"]
    xAxis.labels = HILabels()
    xAxis.labels.x = -10
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.allowDecimals = false
    yAxis.title = HITitle()
    yAxis.title.text = "Amount"
    options.yAxis = [yAxis]

    let column1 = HIColumn()
    column1.name = "Christmas Eve"
    column1.data = [1, 4, 3]

    let column2 = HIColumn()
    column2.name = "Christmas Day before dinner"
    column2.data = [6, 4, 2]

    let column3 = HIColumn()
    column3.name = "Christmas Day after dinner"
    column3.data = [8, 4, 3]

    options.series = [column1, column2, column3]

    let responsive = HIResponsive()
    let rule = HIRules()
    rule.condition = HICondition()
    rule.condition.maxWidth = 500
    rule.chartOptions = [
      "legend": [
          "align": "center",
          "verticalAlign": "bottom",
          "layout": "horizontal"
      ],
      "yAxis": [
          "labels": [
              "align": "left",
              "x": 0,
              "y": -5
          ]
      ],
      "credits": [
          "enabled": false
      ]
    ]
    responsive.rules = [rule]
    options.responsive = responsive

    chartView.options = options

    view.addSubview(chartView)

    addButton(title: "Small", xPosition: 50)
    addButton(title: "Large", xPosition: 160)
    addButton(title: "Auto", xPosition: 270)
  }

  private func addButton(title: String, xPosition: CGFloat) {
    let button = UIButton(type: .system)
    button.frame = CGRect(x: xPosition, y: chartView.frame.height + 30, width: 60, height: 30)
    button.setTitle(title, for: .normal)
    button.addTarget(self, action: #selector(buttonPressed(sender:)), for: .touchUpInside)
    view.addSubview(button)
  }

  @objc private func buttonPressed(sender: UIButton) {
    if sender.titleLabel?.text == "Small" {
      chartView.options.chart.width = 400
    } else if sender.titleLabel?.text == "Large" {
      chartView.options.chart.width = 600
    } else if sender.titleLabel?.text == "Polar" {
      chartView.options.chart.width = nil
    }
  }

}
