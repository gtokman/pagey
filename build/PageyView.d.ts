import * as React from "react";
export declare type PageyViewProps = {
    numberOfPages: number;
    currentPage: number;
    backgroundColor: string;
    currentPageColor: string;
};
declare type PageyViewState = {};
export default class PageyView extends React.Component<PageyViewProps, PageyViewState> {
    render(): JSX.Element;
}
export {};
