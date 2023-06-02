///
/*
In Flutter, the lifecycle of a widget is managed by the framework. 
Understanding the widget lifecycle is important for managing state, 
performing initialization and cleanup tasks, and responding to changes 
in the app's state. Here is an overview of the basic widget lifecycle in Flutter:

! 1. `createState`:
 This is called when a StatefulWidget is instantiated, and it creates the
  associated State object for that widget.

! 2. `initState`: 
This method is called once when the associated State object is created.
 It is typically used for initializing variables, subscribing to streams,
  or setting up listeners. It's important to call `super.initState()` 
  at the beginning of this method.

! 3. `didChangeDependencies`: 
This method is called when the dependencies of the widget change.
 It's called immediately after `initState` and also whenever the widget is
  rebuilt due to a change in dependencies. It's commonly used to fetch data 
  from a database or API based on the widget's dependencies.

! 4. `build`:
 This is the method that builds the widget's user interface.
  It's called whenever the widget needs to be rebuilt, which can happen due
   to various reasons such as state changes, layout updates, or parent widget
    rebuilds. The framework calls this method frequently, so it's important 
    to make it fast and efficient.

! 5. `didUpdateWidget`: 
This method is called when the widget is rebuilt with updated configuration.
 It's useful for responding to changes in widget properties and performing any
  necessary updates in the widget's state.

! 6. `setState`: 
This method is used to update the state of a StatefulWidget.
 When called, it triggers a rebuild of the widget, including its `build` method,
  allowing the UI to reflect the updated state.

! 7. `deactivate`: 
This method is called when a StatefulWidget is removed from the widget tree.
 It allows the widget to perform any cleanup tasks or dispose of resources before
  it is destroyed. It's important to call `super.deactivate()` at the end of this method.

! 8. `dispose`: 
This method is called when a State object is being permanently removed from
 the widget tree. It's used to release any resources held by the State object,
  such as closing streams or canceling timers.

By understanding and utilizing the widget lifecycle methods, you can manage the
 state of your Flutter widgets effectively and ensure proper initialization and
   cleanup of resources.
 */