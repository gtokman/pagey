import { requireNativeViewManager } from "expo-modules-core";
import * as React from "react";
const NativeView = requireNativeViewManager("Pagey");
export default class PageyView extends React.Component {
    render() {
        const { numberOfPages, currentPage, backgroundColor, currentPageColor } = this.props;
        return React.createElement(NativeView, { ...this.props });
    }
}
//# sourceMappingURL=PageyView.js.map