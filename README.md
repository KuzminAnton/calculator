# Simple ios project generator
### Simple usage
###### First: clone this repository
###### Second: run install_gems.sh (one time to install supporting gems and apps)
```sh
$ sh install_gems.sh
```
###### Third: to generate project run make.sh and enter project name
```sh
$ sh make.sh 
Please enter project name: your_project_name      
Project.yml updated
Podfile updated
📋  Loaded project:
  Name: your_project_name
  Targets:
    📱  your_project_nameDev: application
    📱  your_project_nameProd: application
    📱  your_project_nameStaging: application
⚙️  Generating project...
⚙️  Writing project...
💾  Saved project to /Users/user/Projects/Work/xcodegen/your_project_name.xcodeproj
Analyzing dependencies
Downloading dependencies
Using KRActivityIndicatorView (2.1.2)
Using KRProgressHUD (3.2.2)
Using SwiftLint (0.25.1)
Using Swinject (2.4.0)
Generating Pods project
Integrating client project

[!] Please close any current Xcode sessions and use `your_project_name.xcworkspace` for this project from now on.
Sending stats
Pod installation complete! There are 3 dependencies from the Podfile and 4 total pods installed.
```
#### Thats all, new project with typical pod libraries generated!
###### Some about this package
-project.pbxproj and project.xcworkspace ignored git by default (no merge conflicts at all!)
-package also included generamba templates, just eneter generamba gen %service_name% service to generate simple service files (also supported screen and operation generations)
-generated project included base VC and Presenter classes and protocols, just inherit it during development process
-to use DI just add your assemble function execution to IoCContainer
-package templates folder hierarchy 

