//
//  ChartCollectionViewController.swift
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

class ChartCollectionViewController: UICollectionViewController {

    var datasources = [ChartDatasource]()
    let cellPadding: CGFloat = 10.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // hardcoded data values for demonstrational purposes
        datasources = DataGenerator.generateChartDatasources()
    }
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int
    {
        return 1
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return datasources.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("ChartCell", forIndexPath: indexPath) as! ChartCell
        cell.chart.title = datasources[indexPath.row].title
        cell.chart.datasource = datasources[indexPath.row]
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize
    {
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        let cellWidth = (screenSize.width / 2) - (cellPadding / 2)
        let cellHeight = cellWidth
        
        return CGSizeMake(cellWidth, cellHeight)
    }
    
    override func willRotateToInterfaceOrientation(toInterfaceOrientation: UIInterfaceOrientation, duration: NSTimeInterval)
    {
        collectionViewLayout.invalidateLayout()
    }
}

