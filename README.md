<h1>NI LabVIEW CLI - Predefined Command Line Operations (&#x1F6E0 Under Construction)</h1>

<h2>Introduction</h2>

<p>You only need a GitHub repository to create and run a GitHub Actions workflow. In this guide, you'll add a workflow that demonstrates some of the essential features of GitHub Actions.</p>
<p>The following example shows you how GitHub Actions jobs can be automatically triggered, where they run, and how they can interact with the code in your repository.</p>

<h2>GitHub Actions Runner on Windows</h2>

<h3>Adding a self-hosted runner to a repository</h3>

<h4>Download the GitHub Actions Runner for Windows</h4>
  <p />
  <!--1.--><p>&#x2776 On GitHub.com, navigate to the main page of the repository.</p>
  <!--2.--><p>&#x2777 Under your repository name, click <strong>Settings</strong>. If you cannot see the "Settings" tab, select the <strong>&#x22EF</strong> dropdown manu, then click <strong>Settings</strong>.</p>
    <p align="center">
      <img src="./images/repository-settings.png">
    </p>
  <!--3.--><p>&#x2778 In the left sidebar, clic <strong>Actions</strong>, then click <strong>Runners</strong>.</p>
    <p align="left">
      <img src="./images/actions-runners.png">
    </p>
  <!--4.--><p>&#x2779 Click <strong>New self-hosted runner</strong>.</p>
    <p align="center">
      <img src="./images/new-selfhosted-runner.png">
    </p>
  <!--5.--><p>&#x277A Select the operating system image and architecture of your self-hosted runner machine.</p>
    <p align="center">
      <img src="./images/runner-image.png">
    </p>
    <p/>
    <blockquote>
      <p><font size="-1">[!IMPORTANT]<br>Select Windows x64.</font></p>
    </blockquote>
    <p/>
  <!--6.--><p>&#x277B Download the latest runner package by paste the following url directly into the browser.</p>
    <p align="center">
      <img src="./images/runner-image.png">
    </p>
    <p>
      Download the latest runner package
      https://github.com/actions/runner/releases/latest
    </p>

<p>For more information about how to Adding self-hosted runners, see this <a href="https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/adding-self-hosted-runners" title="Adding self-hosted runners">help topic</a>.</p>

<h4>Configure and Run the GitHub Actions Runner on Windows</h4>
  <p />
  <!--1.--><p>&#x2776 Create a folder of the Windows under the drive root (e.g. "C:\actions-runner")</p>
  <!--2.--><p>&#x2777 Extract the installer in the folder created in the previous step.</p>
  <!--3.--><p>&#x2778 P.</p>
    <p/>
    <p>The following snipped needs to be run on <code>powershell</code>:</p>
    <p/>
    <pre><code class="language-powershell">Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser</code></pre>
    <p>It is necessary to execute the following command from PowerShell Admin, to communicate with a remote server</p>
  <!--4.--><p>&#x2779 Configure Runner.</p>
    <p/>
    <p>The following snipped needs to be run on <code>cmd</code>:</p>
    <pre><code class="language-cmd">config.cmd --url https://gitbub.com/...</code></pre>
    <p/>
    <blockquote>
    <p><font size="-1">[!IMPORTANT]<br/>it is necessary to ignore: $ ./</font></p>
    </blockquote>
    <pre><code class="language-cmd"><span class="hljs-comment"># Runner Registration</span>Enter the name of the runner group to add this runner to: [press Enter for Default]: Enter<br/><span class="hljs-comment"># Runner will have the following labels: 'self-hosted', 'Windows', 'X64'</span><br/>Enter any additional labels (ex. label-1, label-2): [press Enter to skip]: Enter<br/><span class="hljs-comment"># Runner settings</span><br/>Enter name of work folder:[press Enter for _work]: Enter<br/><span class="hljs-comment"># Runner as service</span><br/>Would you like to run the runner as service? (Y/N) [press Enter for N]: Enter</code></pre>
    <p/>
  <!--5.--><p>&#x277A Run Runner.</p>
    <p/>
    <p>The following snipped needs to be run on <code>cmd</code>:</p>
    <pre><code class="language-cmd">run.cmd</code></pre>
    <p/>
    <blockquote>
    <p><font size="-1">[!IMPORTANT]<br>it is necessary to ignore: $ ./</font></p>
    </blockquote>
    <p/>
  <!--6.--><p>&#x277B Checking that your self-hosted runner was successfylly added.</p>
    <p/>
    <pre><code class="language-cmd">&#x221A Connected to GitHub<br/><br/>YYYY-MM-DD HH:MM:SSZ: Listening for Jobs</code></pre>
    <p/>

<p>For more information about how to use GitHub Actions Runner, see this <a href="https://github.com/actions/runner" title="GitHub Actions Runner">help topic</a>.</p>

<h4>On GitHub.com, checking the status of a self-hosted runner</h4>
  <p />
  <!--1.--><p>&#x2776 In your repository, navigate to the main page and click <strong>Settings</strong>.</p>
  <!--2.--><p>&#x2777 In the left sidebar, click <strong>Actions</strong>, then click <strong>Runners</strong>.</p>
  <!--3.--><p>&#x2778 Under "Runners", you can view a list of registered runners, including the runner's name, labels, and status.</p>
  <p>
  The status can be one of the following:<br/>
  * <strong>Idle</strong>: The runner is connected to GitHub and is ready to execute jobs.<br/>
  * <strong>Active</strong>: The runner is currently executing a job.<br/>
  * <strong>Offline</strong>: The runner is not connected to GitHub. This could be because the machine is offline, the self-hosted runner application is not running on the machine, or the self-hosted runner application cannot communicate with GitHub.<br/>
  </p>
                       
<p>For more information about how to Monitoring and troubleshooting self-hosted runners, see this <a href="https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/monitoring-and-troubleshooting-self-hosted-runners" title="Monitoring and troubleshooting self-hosted runners">help topic</a>.</p>

<h5>Related concepts:</h5>

<p><a href="https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/configuring-the-self-hosted-runner-application-as-a-service">Configuring the self-hosted runner application as a service.</a>
<a href="https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/removing-self-hosted-runners">Removing self-hosted runners.</a></p>