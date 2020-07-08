import Highcharts
import UIKit

class ViewController: UIViewController {

  private var chartView: HIChartView!

  override func viewDidLoad() {
    super.viewDidLoad()

    chartView = HIChartView(frame: CGRect(x: view.bounds.minX, y: view.bounds.minY, width: view.bounds.width, height: view.bounds.height - 100))
    chartView.theme = "dark-unica"

    let options = HIOptions()

    let title = HITitle()
    title.text = "Chart.update"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Plain"
    options.subtitle = subtitle

    let xAxis = HIXAxis()
    xAxis.categories = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    options.xAxis = [xAxis]

    let column = HIColumn()
    column.colorByPoint = true
    column.data = [29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]
    column.showInLegend = false

    options.series = [column]

    chartView.options = options

    view.addSubview(chartView)

    addButton(title: "Plain", xPosition: 50)
    addButton(title: "Inverted", xPosition: 160)
    addButton(title: "Polar", xPosition: 270)
  }

  private func addButton(title: String, xPosition: CGFloat) {
    let button = UIButton(type: .system)
    button.frame = CGRect(x: xPosition, y: chartView.frame.height + 30, width: 60, height: 30)
    button.setTitle(title, for: .normal)
    button.addTarget(self, action: #selector(buttonPressed(sender:)), for: .touchUpInside)
    view.addSubview(button)
  }

  @objc private func buttonPressed(sender: UIButton) {
    if sender.titleLabel?.text == "Plain" {
      let options = HIOptions()

      let chart = HIChart()
      chart.inverted = false
      chart.polar = false
      options.chart = chart

      let subtitle = HISubtitle()
      subtitle.text = "Plain"
      options.subtitle = subtitle

      chartView.update(options)
    } else if sender.titleLabel?.text == "Inverted" {
      let options = HIOptions()

      let chart = HIChart()
      chart.inverted = true
      chart.polar = false
      options.chart = chart

      let subtitle = HISubtitle()
      subtitle.text = "Inverted"
      options.subtitle = subtitle

      chartView.update(options)

    } else if sender.titleLabel?.text == "Polar" {
      let chart = HIChart()
      chart.inverted = false
      chart.polar = true
      chartView.options.chart = chart

      chartView.options.subtitle.text = "Polar"
    }
  }

}
