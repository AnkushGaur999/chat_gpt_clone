# chatgpt_clone

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

 
 main() -> Like any other programming language main() method is entry point of dart programming language. Without it application will not run.

 runApp() -> runApp() method is entry point of flutter framework. runApp() method is used to start the flutter application. It takes an instance
            of Widget as a parameter, which servers as the root of the widget tree for the application.

 In Flutter, 'WidgetApp' and 'MaterialApp' are both classes that can be used as the root widget of a Flutter application. However, there are some
         differences between them.

 WidgetApp -> WidgetApp is base class for creating a Flutter application that doesn't have any predefined visual styling or theme.
    It is a more generic class that allows us to build custom UI for our application using any combination of Flutter widgets.
    One of the primary roles that WidgetApp provides is binding the system back button to pop the Navigation or quiting th application.

 MaterialApp -> MaterialApp is a subclass of WidgetApp that provides a pre-designed material-themed Ui and follows Material Design guidelines.
    It includes various visual components, such as app bars, buttons, cards, dialogs, and navigation patterns likes tabs and drawers.
    MaterialApp sets up a lot of default styling and behaviors based on Material Design principles, making suitable for building app with a
    consistent and familiar Android-like look.

 versionCde -> versionCode is an integer value that is used by the system to determine whether one version of an app is more recent than another.
    It is not displayed to the user directly but is used internally for version comparison.

 versionName -> versionName is a string value that represents the user-visible version of the app. It is typically displayed to the users in the 
    app's Play Store listing and within the app itself. The versionName can contain both numeric and non-numeric characters, allowing for more 
    descriptive version names, such sa "1.0.0" unlike the versionCode the versionName does not seed to be incremented with each version release.

 dependencies -> dependencies is used to specify the packages that is the libraries that our flutter project is using in development and deployment.

 dev_dependencies -> the dev_dependencies section is used to specify packages that are only required during the development phase of flutter project.
      these dependencies are not necessary for the funtioning of application in production environment but are helpful for tasks like testing, debugging,
     code generation, or development-specific tools.
     Dev dependencies are typically used for testing frameworks, mocking libraries, code generation tools like 'build_runner', and other utilities that aid
     development.

 flutter-packages -> flutter packages have multiple files with dart code.

 flutter-plugins -> flutter plugins have both dart and native codes file.

 Lifecycle of stateful widget ->
  
 Stateful widget have seven lifecycle method in flutter ->

 1: createState :-> When flutter builds a stateful widget, it first executes the constructor function of the widget and then calls the createState() method. 
   This method crate a State object. This object is where all the mutable state for that widget is held. this method is required within
     the Stateful widget.
 
example- class MyStateFulWidget extends StatefulWidget{
   
   @override
    
  State<MyStatefulWidget> createState() => _MyStateFullWidget
    
   }


  mounted(true) :-> Once we create a State object, the framework will associate the State object with BuildContext by setting the boolean property
      called mounted to true.

 2: initState() :-> When the object is inserted into the tree (mounted property is set to true), this method is automatically executed after the class
   constructor. 
 initState() is called only once, when the state object is created for the first time.

 Note: * We can not use BuildContext in this method.
       * Use this method to manage HTTP request and subscribe to stream or any other object that could change the data on this widget.

 3: didChangeDependencies() :-> This method is called after initState() method called. It will also called when an object that a widget depends on changes.
    

 4: build() : -> This method is required and it will be called many times during the lifecycle of widget, but the first time is after the didChangeDependencies()
  method. So whenever the widget that belongs to the state is updated, the framework will always execute this method.

 5:-> didUpdateWidget() :-> Gets called if the parent widget changes its configuration and has to rebuild the widget. The framework give us the old 
     widget as argument that we can use to compare it with the new widget.

 6: deactivate() :-> This method is called when the widget is removed from the widget tree, but it can be reinserted before the current frame changes
    are finished when the state is moved from one point in a tree to another.

 7: dispose(): -> This is called when the State object is removed permanently from the widget tree. 




 

 