<h1>NI LabVIEW CLI - Predefined Command Line Operations (🛠️ Under Construction)</h1>

<h2>Introduction</h2>

<p>You only need a GitHub repository to create and run a GitHub Actions workflow. In this guide, you'll add a workflow that demonstrates some of the essential features of GitHub Actions.</p>

<p>The following example shows you how GitHub Actions jobs can be automatically triggered, where they run, and how they can interact with the code in your repository.</p>

<h2>GitHub Actions Runner</h2>

<h3>Adding a self-hosted runner to a repository</h3>

  <ol>
    <li><span>1.</span>On GitHub.com, navigate to the main page of the repository.</li>
    <li><span>2.</span>Under your repository name, click <strong>Settings</strong>. If you cannot see the "Settings" tab, select the ... dropdown manu, then click <strong>Settings</strong>.</li>
      <p align="center">
        <img src="./images/repository-settings.png">
      </p>
    <li><span>3.</span>In the left sidebar, clic <strong>Actions</strong>, then click <strong>Runners</strong>.</li>
      <p align="left">
        <img src="./images/actions-runners.png">
      </p>
    <li><span>4.</span>Click <strong>New self-hosted runner</strong>.</li>
      <p align="center">
        <img src="./images/new-selfhosted-runner.png">
      </p>
    <li><span>5.</span>Select the operating system image and architecture of your self-hosted runner machine.</li>
      <p align="center">
        <img src="./images/runner-image.png">
      </p>
    <li><span>6.</span>Download the latest runner package by paste the following url directly into the browser.</li>
      <p align="center">
        <img src="./images/runner-image.png">
      </p>
      <p>
        Download the latest runner package
        https://github.com/actions/runner/releases/latest
      </p>
      <ol>
        <li><span>1.1</span> <p>ItemItemItem ItemItemItemItemItemItemItemItem ItemItemItemItemItemItemItemItem ItemItemItemItemItemItemItemItem</p></li>
        <li><span>1.2</span> <p>ItemItemItem ItemItemItemItemItemItemItemItem ItemItemItemItemItemItemItemItem ItemItemItemItemItemItemItemItem</p></li>
        <li><span>1.3</span> <p>ItemItemItem ItemItemItemItemItemItemItemItem ItemItemItemItemItemItemItemItem ItemItemItemItemItemItemItemItem</p></li>
        <li><span>1.4</span> <p>Item</p></li>
      </ol>
    </li>            
    <li><span>2.</span> Item
      <ol>
        <li><span>2.1</span> Item</li>
      </ol>            
    </li>
    <li><span>1.</span> Item</li>
      <ol>
        <li><span>1.1</span> <p>ItemItemItem ItemItemItemItemItemItemItemItem ItemItemItemItemItemItemItemItem ItemItemItemItemItemItemItemItem</p></li>
        <li><span>1.2</span> <p>ItemItemItem ItemItemItemItemItemItemItemItem ItemItemItemItemItemItemItemItem ItemItemItemItemItemItemItemItem</p></li>
        <li><span>1.3</span> <p>ItemItemItem ItemItemItemItemItemItemItemItem ItemItemItemItemItemItemItemItem ItemItemItemItemItemItemItemItem</p></li>
        <li><span>1.4</span> <p>Item</p></li>
      </ol>
    </li>            
    <li><span>2.</span> Item
      <ol>
        <li><span>2.1</span> Item</li>
      </ol>            
    </li>
  </ol>



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

13.1. In your repository, navigate to the main page and click <strong>Settings</strong>.
13.2. In the left sidebar, click <strong>Actions</strong>, then click <strong>Runners</strong>.
13.3. Under "Runners", you can view a list of registered runners, including the runner's name, labels, and status.

<p>The status can be one of the following:

* <strong>Idle</strong>: The runner is connected to GitHub and is ready to execute jobs.
* <strong>Active</strong>: The runner is currently executing a job.
* <strong>Offline</strong>: The runner is not connected to GitHub. This could be because the machine is offline, the self-hosted runner application is not running on the machine, or the self-hosted runner application cannot communicate with GitHub.</p>

Go to Settings > Actions > Runners and see de cofigured Runner 

For more information about how to Monitoring and troubleshooting self-hosted runners, see this [help topic](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/monitoring-and-troubleshooting-self-hosted-runners "Monitoring and troubleshooting self-hosted runners").

For more information about how to Adding self-hosted runners, see this [help topic](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/adding-self-hosted-runners "Adding self-hosted runners").

For more information about how to use GitHub Actions Runner, see this [help topic](https://github.com/actions/runner "GitHub Actions Runner").

