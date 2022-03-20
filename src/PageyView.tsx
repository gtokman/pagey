import { requireNativeViewManager } from 'expo-modules-core';
import * as React from 'react';

export type PageyViewProps = {
  name: number;
};

type PageyViewState = {}

const NativeView: React.ComponentType<PageyViewProps> =
  requireNativeViewManager('Pagey');

export default class PageyView extends React.Component<PageyViewProps, PageyViewState> {
  render() {
    return <NativeView name={this.props.name} />;
  }
}
