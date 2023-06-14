import {
  requireNativeComponent,
  UIManager,
  Platform,
  ViewStyle,
} from 'react-native';

const LINKING_ERROR =
  `The package 'react-native-highcharts' doesn't seem to be linked. Make sure: \n\n` +
  Platform.select({ ios: "- You have run 'pod install'\n", default: '' }) +
  '- You rebuilt the app after installing the package\n' +
  '- You are not using Expo managed workflow\n';

type HighchartsProps = {
  cartData: {};
  style: ViewStyle;
};

const ComponentName = 'HighchartsView';

export const HighchartsView =
  UIManager.getViewManagerConfig(ComponentName) != null
    ? requireNativeComponent<HighchartsProps>(ComponentName)
    : () => {
        throw new Error(LINKING_ERROR);
      };
