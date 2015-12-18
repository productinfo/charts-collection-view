//
//  ChartDatasource.swift
//  CollectionViewChartSample
//
//  Copyright © 2015 Scott Logic Ltd. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import UIKit

class ChartDatasource: NSObject, SChartDatasource {

    let title: String
    let data: [Double]
    
    init(title: String, data: [Double])
    {
        self.title = title
        self.data = data
    }
    
    func numberOfSeriesInSChart(chart: ShinobiChart!) -> Int
    {
        return 1
    }
    
    func sChart(chart: ShinobiChart!, seriesAtIndex index: Int) -> SChartSeries!
    {
        let lineSeries = SChartLineSeries()
        lineSeries.style().lineWidth = 3
        lineSeries.style().lineColor = UIColor.redColor()
        
        return lineSeries
    }
    
    func sChart(chart: ShinobiChart!, numberOfDataPointsForSeriesAtIndex seriesIndex: Int) -> Int
    {
        return data.count
    }
    
    func sChart(chart: ShinobiChart!, dataPointAtIndex dataIndex: Int, forSeriesAtIndex seriesIndex: Int) -> SChartData!
    {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        let date = dateFormatter.dateFromString("01/\(dataIndex+1)/2015")
        
        let datapoint = SChartDataPoint()
        datapoint.xValue = date
        datapoint.yValue = data[dataIndex]
        return datapoint
    }
}
