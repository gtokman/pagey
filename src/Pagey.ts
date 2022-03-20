import { NativeModulesProxy } from 'expo-modules-core';

import PageyView, { PageyViewProps } from './PageyView'

const { Pagey } = NativeModulesProxy;

export async function helloAsync(options: Record<string, string>) {
  return await Pagey.helloAsync(options);
}

export {
  PageyView,
  PageyViewProps
};
