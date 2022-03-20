import { requireNativeViewManager } from "expo-modules-core";
import * as React from "react";
const NativeView = requireNativeViewManager("Pagey");
export default class PageyView extends React.Component {
    render() {
        return (React.createElement(NativeView, { numberOfPages: this.props.numberOfPages, currentPage: this.props.currentPage, backgroundColor: this.props.backgroundColor, currentPageColor: this.props.currentPageColor }));
    }
}
//# sourceMappingURL=PageyView.js.map