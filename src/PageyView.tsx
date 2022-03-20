import { requireNativeViewManager } from "expo-modules-core";
import * as React from "react";

export type PageyViewProps = {
  numberOfPages: number;
  currentPage: number;
  backgroundColor: string;
  currentPageColor: string;
};

type PageyViewState = {};

const NativeView: React.ComponentType<PageyViewProps> =
  requireNativeViewManager("Pagey");

export default class PageyView extends React.Component<
  PageyViewProps,
  PageyViewState
> {
  render() {
    return (
      <NativeView
        numberOfPages={this.props.numberOfPages}
        currentPage={this.props.currentPage}
        backgroundColor={this.props.backgroundColor}
        currentPageColor={this.props.currentPageColor}
      />
    );
  }
}
