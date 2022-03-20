import { NativeModulesProxy } from 'expo-modules-core';
import PageyView from './PageyView';
const { Pagey } = NativeModulesProxy;
export async function helloAsync(options) {
    return await Pagey.helloAsync(options);
}
export { PageyView };
//# sourceMappingURL=Pagey.js.map