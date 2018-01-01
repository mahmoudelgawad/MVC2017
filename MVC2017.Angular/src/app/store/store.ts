 import { createStore, applyMiddleware, compose, GenericStoreEnhancer } from 'redux';
 import { courseReducer } from './reducer';
 import { IAppState } from './IAppState';

 declare var window:any;
 const devToolsExtension:GenericStoreEnhancer = (window.devToolsExtension) ? window.devToolsExtension() : (f) => f;

// export const reduxStore = createStore<IAppState>(courseReducer,compose(devToolsExtension) as GenericStoreEnhancer);