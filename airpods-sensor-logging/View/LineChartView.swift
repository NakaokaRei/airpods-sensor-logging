//
//  LineChartView.swift
//  airpods-sensor-logging
//
//  Created by rei.nakaoka on 2022/05/27.
//

import SwiftUI
import Charts

struct LineChartsView: UIViewRepresentable {

    func makeUIView(context: Context) -> LineChartView {
        let chart = LineChartView()

        let lineChartEntry : [ChartDataEntry] = [
                    ChartDataEntry(x: 0, y: 0),
                    ChartDataEntry(x: 1, y: 1),
                    ChartDataEntry(x: 2, y: 2),
                    ChartDataEntry(x: 3, y: 3),
                    ChartDataEntry(x: 4, y: 4),
                    ChartDataEntry(x: 5, y: 5),
                ]

        let lineChartEntry2 : [ChartDataEntry] = [
                    ChartDataEntry(x: 0, y: 1),
                    ChartDataEntry(x: 1, y: 2),
                    ChartDataEntry(x: 2, y: 3),
                    ChartDataEntry(x: qq3, y: 4),
                    ChartDataEntry(x: 4, y: 5),
                    ChartDataEntry(x: 5, y: 6),
                ]

        let data = LineChartData()
        let dataSet = LineChartDataSet(entries: lineChartEntry, label: "A")
        let dataSet2 = LineChartDataSet(entries: lineChartEntry2, label: "B")

        data.append(dataSet)
        data.append(dataSet2)
        chart.data = data

        return chart
    }

    func updateUIView(_ uiView: LineChartView, context: Context) {

    }
}
