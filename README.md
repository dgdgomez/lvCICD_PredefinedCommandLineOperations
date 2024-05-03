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

6. Download the latest runner package by paste the following url directly into the browser

<p align="center">
   <img src="./images/runner-image.png">
</p>

Download the latest runner package
https://github.com/actions/runner/releases/latest

7. Create a folder of the Windows under the drive root (e.g. "C:\actions-runner")

> [!TIP]
> This will help avoid issues related to service identity folder permissions and long file path restrictions on Windows.

8. Extract the installer in the folder created in the previous step. 

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

13. Checking the status of a self-hosted runner

13.1. In your repository, navigate to the main page and click **Settings**.
13.2. In the left sidebar, click **Actions**, then click **Runners**.
13.3. Under "Runners", you can view a list of registered runners, including the runner's name, labels, and status.

The status can be one of the following:

* **Idle**: The runner is connected to GitHub and is ready to execute jobs.
* **Active**: The runner is currently executing a job.
* **Offline**: The runner is not connected to GitHub. This could be because the machine is offline, the self-hosted runner application is not running on the machine, or the self-hosted runner application cannot communicate with GitHub.

Go to Settings > Actions > Runners and see de cofigured Runner 

For more information about how to Monitoring and troubleshooting self-hosted runners, see this [help topic](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/monitoring-and-troubleshooting-self-hosted-runners "Monitoring and troubleshooting self-hosted runners").

For more information about how to Adding self-hosted runners, see this [help topic](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/adding-self-hosted-runners "Adding self-hosted runners").

For more information about how to use GitHub Actions Runner, see this [help topic](https://github.com/actions/runner "GitHub Actions Runner").

