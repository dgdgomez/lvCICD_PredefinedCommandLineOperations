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
    <li><span>7.</span>Create a folder of the Windows under the drive root (e.g. "C:\actions-runner")</li>
    <li><span>8.</span>Extract the installer in the folder created in the previous step. </li>
    <li><span>9.</span>P. </li>
      <p>
      The following snipped needs to be run on `powershell`:
      ``` powershell
      PowerShell Command: Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
      ```
      It is necessary to execute the following command from PowerShell Admin, to communicate with a remote server
      </p>
    <li><span>10.</span>Configure Runner.</li>
      <p>
      The following snipped needs to be run on `cmd`:
      ```cmd
      config.cmd --url https://gitbub.com/...
      ```
      </p>
      <p>
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
      </p>
    <li><span>11.</span>Run Runner.</li>
      <p>
      The following snipped needs to be run on `cmd`:
      ```cmd copy
      run.cmd
      ```
      </p>
    <li><span>12.</span>Checking that your self-hosted runner was successfylly added.</li>
      <p>
      ```
      √ Connected to GitHub
      YYYY-MM-DD HH:MM:SSZ: Listening for Jobs
      ```
      </p>
    <li><span>13.</span>Checking the status of a self-hosted runner.</li>
      <ol>
        <li><span>13.1</span> <p>In your repository, navigate to the main page and click <strong>Settings</strong>.</p></li>
        <li><span>13.2</span> <p>In the left sidebar, click <strong>Actions</strong>, then click <strong>Runners</strong>.</p></li>
        <li><span>13.3</span> <p>Under "Runners", you can view a list of registered runners, including the runner's name, labels, and status.</p></li>
          <p>The status can be one of the following:
          * <strong>Idle</strong>: The runner is connected to GitHub and is ready to execute jobs.
          * <strong>Active</strong>: The runner is currently executing a job.
          * <strong>Offline</strong>: The runner is not connected to GitHub. This could be because the machine is offline, the self-hosted runner application is not running on the machine, or the self-hosted runner application cannot communicate with GitHub.</p>
      </ol>
    </li>                        
  </ol>


Go to Settings > Actions > Runners and see de cofigured Runner 

For more information about how to Monitoring and troubleshooting self-hosted runners, see this [help topic](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/monitoring-and-troubleshooting-self-hosted-runners "Monitoring and troubleshooting self-hosted runners").

For more information about how to Adding self-hosted runners, see this [help topic](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/adding-self-hosted-runners "Adding self-hosted runners").

For more information about how to use GitHub Actions Runner, see this [help topic](https://github.com/actions/runner "GitHub Actions Runner").

