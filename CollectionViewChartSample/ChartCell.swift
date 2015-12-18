//
//  ChartCell.swift
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

class ChartCell: UICollectionViewCell
{
    @IBOutlet weak var chart: ShinobiChart!
    
    override func awakeFromNib()
    {
        setupChart()
    }
    
    func setupChart()
    {
        self.chart.backgroundColor = UIColor.whiteColor()
        self.chart.titleLabel.font = UIFont.systemFontOfSize(14)
        self.chart.loadDataInBackground = true
        
        let xAxis = SChartDateTimeAxis()
        xAxis.labelFormatString = "MMM"
        self.chart.xAxis = xAxis
        
        let yAxis = SChartNumberAxis()
        yAxis.defaultRange = SChartRange(minimum: -10, andMaximum: 30)
        yAxis.style.majorGridLineStyle.showMajorGridLines = true
        self.chart.yAxis = yAxis
    }
}
