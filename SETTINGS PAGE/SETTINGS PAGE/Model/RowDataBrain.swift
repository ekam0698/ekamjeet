//
//  RowDataBrain.swift
//  SETTINGS PAGE
//
//  Created by sentieo on 07/08/20.
//

import Foundation

struct RowDataBrain {
    let rowData = [[RowTitles(title: "Version",type: 6 , section:0),
                   RowTitles(title: "New Features",type: 0 , section:0)],
                   [RowTitles(title: "Stream Sensitivity",type: 2 , section:1),
                   RowTitles(title: "Mobile Alerts",type: 1 , section:1),
                   RowTitles(title: "Doc Search Settings",type: 0 , section:1),
                   RowTitles(title: "Doc Sync Status",type: 0 , section:1),
                   RowTitles(title: "Keep History Saved",type: 3 , section:1),
                   RowTitles(title: "Font Size",type: 5 , section:1),
                   RowTitles(title: "Clear Saved Data",type: 4 , section:1)],
                   [RowTitles(title: "Help",type: 0 , section:2),
                   RowTitles(title: "FAQ",type: 0 , section:2),
                   RowTitles(title: "Feedback",type: 0 , section:2)
                   ]]
    let headerData=["App Version","Settings","Support"]
    let secRow = [0:2, 1:7 , 2:3]
        }
