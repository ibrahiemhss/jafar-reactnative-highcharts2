import * as React from 'react';

import { StyleSheet, View } from 'react-native';
import { HighchartsView } from 'react-native-highcharts';

const chartData = {
  title: '',
  type: 'line',
  xAxisVisible: false,
  xAxisMaxPadding: 1,
  xAxisMinPadding: 1,
  xAxisMargin: 6,
  yAxisVisible: false,
  yAxisMaxPadding: 0,
  yAxisMinPadding: 0,
  yAxisMargin: 5,
  legendY: 10,
  legendMrginBottom: 10,
  legendMrginTop: 10,
  legendTitleColor: '#F7FBFD',
  legendSubtitleColor: '#a9b0b2',
  legendTitleFontSize: 24,
  //chartWidth: 100,
  //chartHeight: 100,
  legendSubTitleFontSize: 14,
  chartBackgroundColor: '#161e1b',
  chartData: {
    seriesColor: '#DC362E',
    plotBandsColor: '#d5d2d2',
    seriesName: 'APPL',
    legendSupTitle: 'Apple, Inc.',
    seriesData: [
      50, 70, 65, 75, 72, 86, 70, 64, 67, 74, 50, 70, 65, 75, 72, 86, 70, 64,
      67, 74, 50, 70, 65, 75, 72, 86, 70, 64, 67, 74, 50, 70, 65, 75, 72, 86,
      70, 64, 67, 74, 70, 64, 67, 74, 67, 74,
    ],
  },
  chartData2: {
    seriesColor: '#34A853',
    plotBandsColor: '#f8f7f7',
    seriesName: 'DOW J',
    legendSupTitle: 'Dow Jones Industrial Average',
    seriesData: [
      10, 20, 15, 10, 30, 14, 20, 25, 55, 45, 30, 28, 30, 40, 45, 50, 10, 20,
      15, 10, 30, 14, 20, 25, 55, 45, 30, 28, 30, 40, 45, 50, 15, 10, 30, 14,
      20, 25, 55, 45, 30, 28, 30, 40, 45, 50,
    ],
  },
  chartData3: {
    seriesColor: '#efe0ba',
    plotBandsColor: '#f8f7f7',
    seriesName: 'OTHER',
    legendSupTitle: 'TEST ANY',
    seriesData: [
      10, 20, 15, 10, 30, 14, 20, 25, 55, 45, 15, 10, 30, 14, 45, 30, 28, 30,
      40, 45, 50, 15, 10, 30, 14, 50, 70, 65, 75, 72, 86, 70, 64, 67, 74, 50,
      70, 65, 75, 72, 86, 70, 64,
    ],
  },
};
export default function App() {
  return (
    <View style={styles.container}>
      <HighchartsView cartData={chartData} style={styles.box} />
    </View>
  );
}
const styles = StyleSheet.create({
  container: {
    alignItems: 'center',
    justifyContent: 'center',
    width: '100%',
    height: '100%',
    backgroundColor: 'rgb(255,4,4)',
  },
  box: {
    backgroundColor: 'rgb(255,4,4)',
    width: '100%',
    height: '100%',
    marginVertical: 0,
  },
});
