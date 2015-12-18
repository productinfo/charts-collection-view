//
//  DataGenerator.swift
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

import Foundation

class DataGenerator
{
    class func generateChartDatasources() -> [ChartDatasource]
    {
        var dataSourceArr = [ChartDatasource]()
        dataSourceArr.append(ChartDatasource(title: "New York", data: [ 2.0, 2.0, 4.0, 11.0, 16.0, 22.0, 25.0, 24.0, 20.0, 14.0, 9.0, 9.0 ]))
        dataSourceArr.append(ChartDatasource(title: "San Francisco", data: [ 10.0, 11.0, 11.0, 11.0, 13.0, 13.0, 14.0, 14.0, 14.0, 14.0, 13.0, 10.0 ]))
        dataSourceArr.append(ChartDatasource(title: "London", data: [ 7.0, 7.0, 9.0, 11.0, 14.0, 16.0, 19.0, 19.0, 17.0, 13.0, 10.0, 7.0 ]))
        dataSourceArr.append(ChartDatasource(title: "Paris", data: [ 5.0, 6.0, 9.0, 11.0, 15.0, 16.0, 20.0, 20.0, 16.0, 12.0, 7.0, 5.0 ]))
        dataSourceArr.append(ChartDatasource(title: "Sydney", data: [ 23.0, 23.0, 22.0, 19.0, 16.0, 14.0, 13.0, 14.0, 16.0, 18.0, 20.0, 22.0 ]))
        dataSourceArr.append(ChartDatasource(title: "Toronto", data: [ -3.0, -3.0, 1.0, 7.0, 14.0, 16.0, 21.0, 21.0, 18.0, 11.0, 5.0, -1.0 ]))
        dataSourceArr.append(ChartDatasource(title: "Rome", data: [ 8.0, 9.0, 12.0, 14.0, 21.0, 23.0, 26.0, 24.0, 22.0, 18.0, 13.0, 10.0 ]))
        dataSourceArr.append(ChartDatasource(title: "Brussels", data: [ 3.0, 3.0, 7.0, 9.0, 13.0, 15.0, 18.0, 18.0, 15.0, 12.0, 7.0, 5.0 ]))
        dataSourceArr.append(ChartDatasource(title: "Vienna", data: [ -1.0, 1.0, 5.0, 9.0, 15.0, 18.0, 19.0, 19.0, 15.0, 10.0, 5.0, -1.0 ]))
        dataSourceArr.append(ChartDatasource(title: "Johannesburg", data: [ 21.0, 20.0, 19.0, 16.0, 14.0, 10.0, 11.0, 14.0, 16.0, 18.0, 19.0, 20.0 ]))
        
        return dataSourceArr
    }
}
