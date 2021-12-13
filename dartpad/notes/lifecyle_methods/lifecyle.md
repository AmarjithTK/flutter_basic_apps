#### In flutter we have stateless and stateful widgets


In stateless widget , it only get built once , and cannot be updated without rebuilding

    so there aren't any methods to be called in the lifecycle of stateless widgets

But in the case of stateful widgets, we can update the contents of the widgets after the initial build


#### so we have lifecycle methods

    creation -> updation -> deletion
    
    void initstate() , build() , void deactivate()
    
they are the 3 lifecycle methods in stateful widgets

#### when to apply them ??

initstate - anything that you want to run at the `time of creation of the widget`

build method - any code that you want to run `each time the state of the widget changes`

deactivate - any code that I want to run at the `destruction of the widget`


##### eg :
      
    in initstate , we can start running all the async ( data fetching and reading etc ) functions 
    
    in build , we might want to run an animation each time widget gets rebuilt
    
    in deactivate , we can save and write to disk the important data or deallocate the memory allocated

