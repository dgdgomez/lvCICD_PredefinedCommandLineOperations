# NI LabVIEW CLI - Predefined Command Line Operations (🛠️ Under Construction)

## Introduction

You only need a GitHub repository to create and run a GitHub Actions workflow. In this guide, you'll add a workflow that demonstrates some of the essential features of GitHub Actions.

The following example shows you how GitHub Actions jobs can be automatically triggered, where they run, and how they can interact with the code in your repository.

## GitHub Actions Runner

### Adding a self-hosted runner to a repository

1. On GitHub.com, navigate to the main page of the repository.
2. Under your repository name, click **Settings**. If you cannot see the "Settings" tab, select the ... dropdown manu, then click **Settings**.

<p align="center">
   <img src="./images/repository-settings.png">
</p>

3. In the left sidebar, clic **Actions**, then click **Runners**.

<p align="left">
   <img src="./images/actions-runners.png">
</p>

4. Click **New self-hosted runner**.

<p align="center">
   <img src="./images/new-selfhosted-runner.png">
</p>

5. Select the operating system image and architecture of your self-hosted runner machine.

<p align="center">
   <img src="./images/runner-image.png">
</p>

> [!IMPORTANT]
> Select Windows x64.

6. Download

You will see instructions showing you how to download the runner application and install it on your self-hosted runner machine.

Download the latest runner package
https://github.com/actions/runner/releases/latest

For more information about how to Adding self-hosted runners, see this [help topic](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/adding-self-hosted-runners "Adding self-hosted runners").

7. Create a folder under the drive root

8. Extract the installer in a root folder of the Windows drive (e.g. "C:\actions-runner"). This will help avoid issues related to service identity folder permissions and long file path restrictions on Windows.

9. P

The following snipped needs to be run on `powershell`:
``` powershell
PowerShell Command: Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```
It is necessary to execute the following command from PowerShell Admin, to communicate with a remote server

10. Configure Runner
   
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

11. Run Runner

The following snipped needs to be run on `cmd`:

```cmd copy
run.cmd
```

> [!IMPORTANT]
> it is necessary to ignore: $ ./

12. Checking that your self-hosted runner was successfylly added

```
√ Connected to GitHub

YYYY-MM-DD HH:MM:SSZ: Listening for Jobs
```

13. 

Go to Settings > Actions > Runners and see de cofigured Runner 

For more information about how to use GitHub Actions Runner, see this [help topic](https://github.com/actions/runner "GitHub Actions Runner").

