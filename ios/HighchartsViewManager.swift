import Foundation
import Highcharts
import UIKit

@objc(HighchartsViewManager)
class HighchartsViewManager: RCTViewManager {

  override func view() -> (HighchartsView) {
    return HighchartsView()
  }

  @objc override static func requiresMainQueueSetup() -> Bool {
    return true
  }
}

class HighchartsView : UIView {
    let rootController = ViewController();

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(rootController.view);
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    @objc
    var seriesData: NSArray = [] {
        didSet {
            rootController.setData( seriesData: seriesData,view: self)
            self.addSubview(rootController.view);

        }
    }
    @objc
    var seriesHexColor: String = "" {
        didSet {

            rootController.setSeriesHexColor(seriesHexColor: seriesHexColor)

        }
    }

    @objc
    var seriesType: String = "" {
        didSet {

            rootController.setSeriesHexColor(seriesHexColor: seriesHexColor)

        }
    }

    @objc
    var chartViewWidth: Int = 0 {
        didSet {

            rootController.setSeriesHexColor(seriesHexColor: seriesHexColor)

        }
    }

    @objc
    var chartViewHeight: Int = 0 {
        didSet {

            rootController.setSeriesHexColor(seriesHexColor: seriesHexColor)

        }
    }

    @objc var optionsTitle: String = "" {
        didSet {
            self.backgroundColor = hexStringToUIColor(hexColor: color)
        }
    }

    @objc var color: String = "" {
        didSet {
            self.backgroundColor = hexStringToUIColor(hexColor: color)
        }
    }

    func hexStringToUIColor(hexColor: String) -> UIColor {
        let stringScanner = Scanner(string: hexColor)

        if(hexColor.hasPrefix("#")) {
            stringScanner.scanLocation = 1
        }
        var color: UInt32 = 0
        stringScanner.scanHexInt32(&color)

        let r = CGFloat(Int(color >> 16) & 0x000000FF)
        let g = CGFloat(Int(color >> 8) & 0x000000FF)
        let b = CGFloat(Int(color) & 0x000000FF)

        return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1)
    }
}

class ViewController: UIViewController {

    var chartView: HIChartView!
    let options = HIOptions()
    let chart = HIChart()
    let series = HIColumn()
    let hitTitle = HITitle()
    var parentView=UIView()

    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
        let width = view.bounds.size.width
        let height = view.bounds.size.height
        chartView = HIChartView(frame: CGRect(x: 0,
                                                  y: 0,
                                                  width: width,
                                                  height: height))


        
            options.chart = chart
            options.title = hitTitle
            options.series = [series]
            chartView.options = options
        view.addSubview(chartView)

}
    func setData( seriesData: NSArray,view :UIView){

        series.data = seriesData as? [Any]
        options.series = [series]
        chartView.options = options
}

func setTitle(title: String){
    hitTitle.text = title

 }

    func setSeriesType(type: String){
        chart.type = type

     }
    func setSeriesHexColor(seriesHexColor: String){
        series.color = HIColor.init(hexValue:seriesHexColor)

     }
}
extension UIViewController {
    func embed(_ viewController:UIViewController, inView view:UIView){
        viewController.willMove(toParent: self)
        viewController.view.frame = view.bounds
        view.addSubview(viewController.view)
        self.addChild(viewController)
        viewController.didMove(toParent: self)
    }
}
