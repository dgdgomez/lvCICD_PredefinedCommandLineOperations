# NI LabVIEW CLI - Predefined Command Line Operations (🛠️ Under Construction)

## Introduction

You only need a GitHub repository to create and run a GitHub Actions workflow. In this guide, you'll add a workflow that demonstrates some of the essential features of GitHub Actions.

The following example shows you how GitHub Actions jobs can be automatically triggered, where they run, and how they can interact with the code in your repository.

## Setting github action

## 1. Go to GitHub repository.

## 2. Settings>Actions>Runners>New self-hosted runner

## 3. Select Windowsx64

## GitHub Actions Runner

### Windows x64

The following snipped needs to be run on `powershell`:
``` powershell
# Create a folder under the drive root
We recommend configuring the runner in a root folder of the Windows drive (e.g. "C:\actions-runner"). This will help avoid issues related to service identity folder permissions and long file path restrictions on Windows.
# Download the latest runner package
https://github.com/actions/runner/releases/latest
# Extract the installer into the folder created in the previous step
```
For more information about how to use GitHub Actions Runner, see this [help topic](https://github.com/actions/runner "GitHub Actions Runner").

### 3.1. Download runners

#### 3.1.1. Create a folder under the drive root

We recommend configuring the runner in a root folder of the Windows drive (e.g. "C:\actions-runner"). This will help avoid issues related to service identity folder permissions and long file path restrictions on Windows.

#### 3.1.2. Download the lastet runner package

https://github.com/actions/runner/releases/latest

#### 3.1.3. Extract the installer into the folder created in the previous step

### 3.2. Configure


The following snipped needs to be run on `powershell`:
``` powershell
# XX
PowerShell Command: Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```
It is necessary to execute the following command from PowerShell Admin, to communicate with a remote server

3.2.1 Create the runner and start the configuration experience
   
The following snipped needs to be run on `cmd`:
``` cmd
   config.cmd --url https://gitbub.com/...
   
   it is necessary to ignore: $ ./

# Runner Registration
Enter the name of the runner group to add this runner to: [press Enter for Default]: Enter

# Runner will have the following labels: 'self-hosted', 'Windows', 'X64'
Enter any additional labels (ex. label-1, label-2): [press Enter to skip]: Enter

# Runner settings
Enter name of work folder:[press Enter for _work]: Enter

# Runner as service
Would you like to run the runner as service? (Y/N) [press Enter for N]: Enter

# Run
run.cmd
it is necessary to ignore: $ ./

```

Go to Settings>Actions>Runners and see de cofigured Runner 

For more information about how to use GitHub Actions Runner, see this [help topic](https://github.com/actions/runner "GitHub Actions Runner").

