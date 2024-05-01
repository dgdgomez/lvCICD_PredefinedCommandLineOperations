# NI LabVIEW CLI - Predefined Command Line Operations (🛠️ Under Construction)

## Introduction

You only need a GitHub repository to create and run a GitHub Actions workflow. In this guide, you'll add a workflow that demonstrates some of the essential features of GitHub Actions.

The following example shows you how GitHub Actions jobs can be automatically triggered, where they run, and how they can interact with the code in your repository.

## GitHub Actions Runner

### Download

1. Go to GitHub repository.
2. Settings > Actions > Runners > New self-hosted runner
3. Runner image > Select Windows x64
4. Download the latest runner package
https://github.com/actions/runner/releases/latest

### Create the runner

1. Create a folder under the drive root
2. Extract the installer in a root folder of the Windows drive (e.g. "C:\actions-runner"). This will help avoid issues related to service identity folder permissions and long file path restrictions on Windows.

### Setting

1. P

The following snipped needs to be run on `powershell`:
``` powershell
# XX
PowerShell Command: Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```
It is necessary to execute the following command from PowerShell Admin, to communicate with a remote server

2. Start the configuration
   
The following snipped needs to be run on `cmd`:

```cmd
   config.cmd --url https://gitbub.com/...
```

> [!IMPORTANT]
> it is necessary to ignore: $ ./

```cmd
# Runner Registration
Enter the name of the runner group to add this runner to: [press Enter for Default]: Enter

# Runner will have the following labels: 'self-hosted', 'Windows', 'X64'
Enter any additional labels (ex. label-1, label-2): [press Enter to skip]: Enter

# Runner settings
Enter name of work folder:[press Enter for _work]: Enter

# Runner as service
Would you like to run the runner as service? (Y/N) [press Enter for N]: Enter
```

### Run

The following snipped needs to be run on `cmd`:

```cmd copy
run.cmd
```

> [!IMPORTANT]
> it is necessary to ignore: $ ./

Go to Settings > Actions > Runners and see de cofigured Runner 

For more information about how to use GitHub Actions Runner, see this [help topic](https://github.com/actions/runner "GitHub Actions Runner").

