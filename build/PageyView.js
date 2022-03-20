import { requireNativeViewManager } from 'expo-modules-core';
import * as React from 'react';
const NativeView = requireNativeViewManager('Pagey');
export default class PageyView extends React.Component {
    render() {
        return React.createElement(NativeView, { name: this.props.name });
    }
}
//# sourceMappingURL=PageyView.js.map