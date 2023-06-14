package com.reactnativehighcharts;

import android.view.View;
import androidx.annotation.NonNull;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;

public class HighchartsViewManager extends SimpleViewManager<View> {
    public static final String REACT_CLASS = "HighchartsView";
  ReactApplicationContext mCallerContext;

  @Override
  public LayoutShadowNode createShadowNodeInstance() {
    return super.createShadowNodeInstance();
  }

  public HighchartsViewManager(ReactApplicationContext reactContext) {
    mCallerContext = reactContext;
  }
    @Override
    @NonNull
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    @NonNull
    public View createViewInstance(@NonNull ThemedReactContext reactContext) {
      return new CustomHIChartView(mCallerContext.getCurrentActivity());

    }

  @ReactProp(name = "cartData")
  public void setChart(CustomHIChartView view, ReadableMap chartData) {
    view.setChart(chartData);
  }
}
