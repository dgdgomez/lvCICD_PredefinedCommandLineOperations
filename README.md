<h1>NI LabVIEW CLI - Predefined Command Line Operations (🛠️ Under Construction)</h1>

<h2>Introduction</h2>

<p>You only need a GitHub repository to create and run a GitHub Actions workflow. In this guide, you'll add a workflow that demonstrates some of the essential features of GitHub Actions.</p>

<p>The following example shows you how GitHub Actions jobs can be automatically triggered, where they run, and how they can interact with the code in your repository.</p>

<h2>GitHub Actions Runner</h2>

<h3>Adding a self-hosted runner to a repository</h3>

  <ol>
    <!--1.--><li><p>On GitHub.com, navigate to the main page of the repository.</p></li>
    <!--2.--><li><p>Under your repository name, click <strong>Settings</strong>. If you cannot see the "Settings" tab, select the ... dropdown manu, then click <strong>Settings</strong>.</p></li>
      <p align="center">
        <img src="./images/repository-settings.png">
      </p>
    <!--3.--><li><p>In the left sidebar, clic <strong>Actions</strong>, then click <strong>Runners</strong>.</p></li>
      <p align="left">
        <img src="./images/actions-runners.png">
      </p>
    <!--4.--><li><p>Click <strong>New self-hosted runner</strong>.</p></li>
      <p align="center">
        <img src="./images/new-selfhosted-runner.png">
      </p>
    <!--5.--><li><p>Select the operating system image and architecture of your self-hosted runner machine.</p></li>
      <p align="center">
        <img src="./images/runner-image.png">
      </p>
      <p>
      <blockquote>
        <p>[!IMPORTANT]<br>Select Windows x64.</p>
      </blockquote>
      </p>
    <!--6.--><li><p>Download the latest runner package by paste the following url directly into the browser.</p></li>
      <p align="center">
        <img src="./images/runner-image.png">
      </p>
      <p>
        Download the latest runner package
        https://github.com/actions/runner/releases/latest
      </p>
    <!--7.--><li><p>Create a folder of the Windows under the drive root (e.g. "C:\actions-runner")</p></li>
    <!--8.--><li><p>Extract the installer in the folder created in the previous step.</p></li>
    <!--9.--><li><p>P.</p></li>
      <p></p>
      <p>The following snipped needs to be run on <code>powershell</code>:</p>
      <p></p>
      <pre><code class="language-powershell">
      Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
      </code></pre>
      <p>
      It is necessary to execute the following command from PowerShell Admin, to communicate with a remote server
      </p>
    <!--10.--><li><p>Configure Runner.</p></li>
      <p></p>
      <p>The following snipped needs to be run on <code>cmd</code>:</p>
      <pre><code class="language-cmd">
      config.cmd --url https://gitbub.com/...
      </code></pre>
      <p></p>
      <blockquote>
      <p><font size="-1">[!IMPORTANT]<br>it is necessary to ignore: $ ./</font></p>
      </blockquote>
      <pre><code class="language-cmd">
      <span class="hljs-comment"># Runner Registration</span>
      Enter the name of the runner group to add this runner to: [press Enter for Default]: Enter
      <span class="hljs-comment"># Runner will have the following labels: 'self-hosted', 'Windows', 'X64'</span>
      Enter any additional labels (ex. label-1, label-2): [press Enter to skip]: Enter
      <span class="hljs-comment"># Runner settings</span>
      Enter name of work folder:[press Enter for _work]: Enter
      <span class="hljs-comment"># Runner as service</span>
      Would you like to run the runner as service? (Y/N) [press Enter for N]: Enter
      </code></pre>
      <p></p>
    <!--11.--><li><p>Run Runner.</p></li>
      <p></p>
      <p>The following snipped needs to be run on <code>cmd</code>:</p>
      <pre><code class="language-cmd">
      run.cmd
      </code></pre>
      <p></p>
    <!--12.--><li><p>Checking that your self-hosted runner was successfylly added.</p></li>
      <p></p>
      <pre><code class="language-cmd">
      √ Connected to GitHub</br>
      YYYY-MM-DD HH:MM:SSZ: Listening for Jobs
      </code></pre>
      <p></p>
    <!--13.--><li><p>Checking the status of a self-hosted runner.</p></li>
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

<p>For more information about how to Monitoring and troubleshooting self-hosted runners, see this <a href="https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/monitoring-and-troubleshooting-self-hosted-runners" title="Monitoring and troubleshooting self-hosted runners">help topic</a>.</p>

<p>For more information about how to Adding self-hosted runners, see this <a href="https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/adding-self-hosted-runners" title="Adding self-hosted runners">help topic</a>.</p>

<p>For more information about how to use GitHub Actions Runner, see this <a href="https://github.com/actions/runner" title="GitHub Actions Runner">help topic</a>.</p>

