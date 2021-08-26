function install.reactRedux(){
  mkdir src/redux && mkdir src/redux/action-creators && mkdir src/redux/reducers;
  createFile "src/redux/action-creators/index.js" "export const action1 = (param) => {
  return (dispatch) => {
    dispatch({
      type: \"action1\",
      payload: param,
    })
  }
}

export const action2 = (param) => {
  return (dispatch) => {
    dispatch({
      type: \"action2\",
      payload: param,
    })
  }
}";
  createFile "src/redux/reducers/xxxReducer.js" "const initialState = 0
const reducer = (state = initialState, action) => {
  switch (action.type) {
    case 'action1':
      return state + action.payload
    case 'action2':
      return state - action.payload
    default:
      return state
  }
}

export default reducer"
  createFile "src/redux/reducers/index.js" "import { combineReducers } from 'redux'
import xxxReducer from './xxxReducer'

const rootReducer = combineReducers({
  xxx: xxxReducer,
})

export default rootReducer";
  createFile "src/redux/index.js" "export * as actionCreators from './action-creators/index'";
  createFile "src/redux/store.js" "import { createStore, applyMiddleware } from 'redux'
import rootReducer from './reducers/index'
import thunk from 'redux-thunk'

const store = createStore(rootReducer, {}, applyMiddleware(thunk))

export default store";
  createFile "src/redux/reduxInfo.txt" "Important steps
  First wrap your app in a Provider component (import it from 'react-redux') with a store attribute of store (import it from './redux/store.js')
  
Then in any component
  import { useSelector, useDispatch } from 'react-redux'
  import { bindActionCreators } from 'redux'
  import { actionCreators } from './redux/index'
    const store = useSelector((state) => state)
    const dispatch = useDispatch()

    const { action1, action2 } = bindActionCreators(
      actionCreators,
      dispatch,
    )
  
After doing this, you should be all set up!
Happy coding!";
  if [ $1 ];then npm i redux react-redux redux-thunk;else yarn add redux react-redux redux-thunk;fi;
}
