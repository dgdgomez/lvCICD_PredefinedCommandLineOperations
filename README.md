<h1>NI LabVIEW CLI - Predefined Command Line Operations (🛠️ Under Construction)</h1>

<h2>Introduction</h2>

<p>You only need a GitHub repository to create and run a GitHub Actions workflow. In this guide, you'll add a workflow that demonstrates some of the essential features of GitHub Actions.</p>

<p>The following example shows you how GitHub Actions jobs can be automatically triggered, where they run, and how they can interact with the code in your repository.</p>

<h2>GitHub Actions Runner</h2>

<h3>Adding a self-hosted runner to a repository</h3>

  <ol>
    <!--1.--><li><i class="fa-solid fa-circle-9"></i>On GitHub.com, navigate to the main page of the repository.</li>
    <!--2.--><li>Under your repository name, click <strong>Settings</strong>. If you cannot see the "Settings" tab, select the ... dropdown manu, then click <strong>Settings</strong>.</li></br>
      <p align="center">
        <img src="./images/repository-settings.png">
      </p>
    <!--3.--><li>In the left sidebar, clic <strong>Actions</strong>, then click <strong>Runners</strong>.</li></br>
      <p align="left">
        <img src="./images/actions-runners.png">
      </p>
    <!--4.--><li>Click <strong>New self-hosted runner</strong>.</li></br>
      <p align="center">
        <img src="./images/new-selfhosted-runner.png">
      </p>
    <!--5.--><li>Select the operating system image and architecture of your self-hosted runner machine.</li></br>
      <p align="center">
        <img src="./images/runner-image.png">
      </p>
    <!--6.--><li>Download the latest runner package by paste the following url directly into the browser.</li></br>
      <p align="center">
        <img src="./images/runner-image.png">
      </p>
      <p>
        Download the latest runner package
        https://github.com/actions/runner/releases/latest
      </p>
    <!--7.--><li>Create a folder of the Windows under the drive root (e.g. "C:\actions-runner")</li>
    <!--8.--><li>Extract the installer in the folder created in the previous step. </li>
    <!--9.--><li>P. </li>
      <p>
      The following snipped needs to be run on `powershell`:
      <pre><code>
      PowerShell Command: Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
      </code></pre>
      It is necessary to execute the following command from PowerShell Admin, to communicate with a remote server
      </p>
    <!--10.--><li>Configure Runner.</li>
      <p>
      The following snipped needs to be run on `cmd`:
      <pre><code>
      config.cmd --url https://gitbub.com/...
      </code></pre>
      </p>
      <p>
      <pre><code>
      # Runner Registration
      Enter the name of the runner group to add this runner to: [press Enter for Default]: Enter
      # Runner will have the following labels: 'self-hosted', 'Windows', 'X64'
      Enter any additional labels (ex. label-1, label-2): [press Enter to skip]: Enter
      # Runner settings
      Enter name of work folder:[press Enter for _work]: Enter
      # Runner as service
      Would you like to run the runner as service? (Y/N) [press Enter for N]: Enter
      </code></pre>
      </p>
    <!--11.--><li>Run Runner.</li>
      <p>
      The following snipped needs to be run on `cmd`:
      <pre><code>
      run.cmd
      </code></pre>
      </p>
    <!--12.--><li>Checking that your self-hosted runner was successfylly added.</li>
      <p>
      <pre><code>
      √ Connected to GitHub</br>
      YYYY-MM-DD HH:MM:SSZ: Listening for Jobs
      </code></pre>
      </p>
    <!--13.--><li>Checking the status of a self-hosted runner.</li>
      <ol>
        <!--13.1.--><li><p>In your repository, navigate to the main page and click <strong>Settings</strong>.</p></li>
        <!--13.2.--><li><p>In the left sidebar, click <strong>Actions</strong>, then click <strong>Runners</strong>.</p></li>
        <!--13.3.--><li><p>Under "Runners", you can view a list of registered runners, including the runner's name, labels, and status.</p></li>
          <p>
          The status can be one of the following:</br>
          * <strong>Idle</strong>: The runner is connected to GitHub and is ready to execute jobs.</br>
          * <strong>Active</strong>: The runner is currently executing a job.</br>
          * <strong>Offline</strong>: The runner is not connected to GitHub. This could be because the machine is offline, the self-hosted runner application is not running on the machine, or the self-hosted runner application cannot communicate with GitHub.</br>
          </p>
      </ol>
    </li>                        
  </ol>


Go to Settings > Actions > Runners and see de cofigured Runner 

For more information about how to Monitoring and troubleshooting self-hosted runners, see this [help topic](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/monitoring-and-troubleshooting-self-hosted-runners "Monitoring and troubleshooting self-hosted runners").

For more information about how to Adding self-hosted runners, see this [help topic](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/adding-self-hosted-runners "Adding self-hosted runners").

For more information about how to use GitHub Actions Runner, see this [help topic](https://github.com/actions/runner "GitHub Actions Runner").

