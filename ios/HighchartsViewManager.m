#import <React/RCTViewManager.h>

@interface RCT_EXTERN_MODULE(HighchartsViewManager, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(color, NSString)
RCT_EXPORT_VIEW_PROPERTY(seriesData, NSArray)
RCT_EXPORT_VIEW_PROPERTY(seriesHexColor, NSString)
//RCT_EXPORT_VIEW_PROPERTY(chartViewWidth, NSInt)
//RCT_EXPORT_VIEW_PROPERTY(chartViewHeight, NSInt)
RCT_EXPORT_VIEW_PROPERTY(seriesType, NSString)
RCT_EXPORT_VIEW_PROPERTY(optionsTitle, NSString)

@end
