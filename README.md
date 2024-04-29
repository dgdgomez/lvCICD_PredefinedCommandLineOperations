# NI LabVIEW CLI - Predefined Command Line Operations (🛠️ Under Construction)

## Introduction

You only need a GitHub repository to create and run a GitHub Actions workflow. In this guide, you'll add a workflow that demonstrates some of the essential features of GitHub Actions.

The following example shows you how GitHub Actions jobs can be automatically triggered, where they run, and how they can interact with the code in your repository.

## Example

### Objective

Develop a VI that simulates a keypad using the given application front panel (figure 1).

### General Operation

The VI must continuously run until the **E** key is pressed. While the VI is running, the **String** indicator must display the number. When the **C** key pressed, the **String** indicator must clear any numbers and display 0. When the **E** key is pressed, the number in the **String** indicator must be converted to a numeric value and displayed in the **Numeric** indicator. 

For example: if keys 5678 are consecutively pressed, the **String** indicator must display 5, then 56, then 567 and finally 5678.

### Application Therminology

| **Keypad** | Cluster of Booleans |
| **String** | String indicator    |
| **Numeric**| Numeric indicator   |

### Initialization

The application must initialize as shown in figure 1, and the front panel controls and indicators must be in the following states.
- **String**: Set to 0
- **Numeric**: Set to 0

## Creating your first workflow

1. Create a `.github/workflows` directory in your repository on GitHub if this directory does not already exist. The directory must have this exact name in order for GitHub to discover any GitHub Actions workflows that it contains.

2. In the `.github/workflows` directory, create a file with the `.yml` or `.yaml` extension. This tutorial will use `github-actions-demo.yml` as the file name. For more information, see (https://docs.github.com/en/repositories/working-with-files/managing-files/creating-new-files "Creating new files").

3. Copy the following YAML contents into the `github-actions-demo.yml` file:

   ```yaml copy
  # This is a basic workflow to help you get started with Actions

  name: CI - Test&Build

  # Controls when the workflow will run
  on:
    # Triggers the workflow on push or pull request events but only for the "main" branch
    push:
      branches: [ "main" ]
    pull_request:
      branches: [ "main" ]

    # Allows you to run this workflow manually from the Actions tab
    workflow_dispatch:

  # A workflow run is made up of one or more jobs that can run sequentially or in parallel
  jobs:
    # This workflow contains a single job called "build"
    build:
      permissions: write-all
      # The type of runner that the job will run on
      runs-on: self-hosted
      
      # Steps represent a sequence of tasks that will be executed as part of the job
      steps:
            
        # Checks-out your repository under $GITHUB_WORKSPACE, so your job can access it
        - uses: actions/checkout@v3
                  
        # Build LabVIEW Executable via LabVIEWCLI
        - name: LabVIEW build
          run: LabVIEWCLI -LogToConsole true -OperationName ExecuteBuildSpec -ProjectPath "$pwd\source\Lhelloworld.lvproj" -BuildSpecName "helloworld" -LabVIEWPath "C:\Program Files (x86)\National Instruments\LabVIEW 2023\LabVIEW.exe" -PortNumber 3363
   ```

4. Scroll to the bottom of the page and select **Create a new branch for this commit and start a pull request**. Then, to create a pull request, click **Propose new file**.

  ![Screenshot of the "Commit new file" area of the page.](https://docs.github.com/assets/cb-67313/mw-1440/images/help/repository/actions-quickstart-commit-new-file.webp)

Committing the workflow file to a branch in your repository triggers the `push` event and runs your workflow.

## Viewing your workflow results

1. On GitHub.com, navigate to the main page of the repository.

2. Under your repository name, click 🍏 **Actions**.

  ![Screenshot of the "Commit new file" area of the page.](https://docs.github.com/assets/cb-15465/mw-1440/images/help/repository/actions-tab-global-nav-update.webp)

3. In the left sidebar, click the workflow you want to display, in this example "GitHub Actions Demo."

  ![Screenshot of the "Commit new file" area of the page.](https://docs.github.com/assets/cb-64036/mw-1440/images/help/repository/actions-quickstart-workflow-sidebar.webp)

4. From the list of workflow runs, click the name of the run you want to see, in this example "USERNAME is testing out GitHub Actions."

5. In the left sidebar of the workflow run page, under **Jobs**, click the **Explore-GitHub-Actions** job.

  ![Screenshot of the "Commit new file" area of the page.](https://docs.github.com/assets/cb-53821/mw-1440/images/help/repository/actions-quickstart-job.webp)

6. The log shows you how each of the steps was processed. Expand any of the steps to view its details.

  ![Screenshot of the "Commit new file" area of the page.](https://docs.github.com/assets/cb-95213/mw-1440/images/help/repository/actions-quickstart-logs.webp)

For example, you can see the list of files in your repository:

  ![Screenshot of the "Commit new file" area of the page.](https://docs.github.com/assets/cb-53979/mw-1440/images/help/repository/actions-quickstart-log-detail.webp)

The example workflow you just added is triggered each time code is pushed to the branch, and shows you how GitHub Actions can work with the contents of your repository. For an in-depth tutorial, see "(https://docs.github.com/en/actions/learn-github-actions/understanding-github-actions "Understanding GibHub Actions")."

For more information about how to use GitHub Actions Quickstart, see this [help topic](https://docs.github.com/en/actions/quickstart "GitHub Actions Quickstart").

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

## GitHub Actions

## Introduction

You only need a {% data variables.product.prodname_dotcom %} repository to create and run a {% data variables.product.prodname_actions %} workflow. In this guide, you'll add a workflow that demonstrates some of the essential features of {% data variables.product.prodname_actions %}.

The following example shows you how {% data variables.product.prodname_actions %} jobs can be automatically triggered, where they run, and how they can interact with the code in your repository.

## Creating your first workflow

1. Create a `.github/workflows` directory in  your repository on {% data variables.product.prodname_dotcom %} if this directory does not already exist. The directory must have this exact name in order for {% data variables.product.prodname_dotcom %} to discover any {% data variables.product.prodname_actions %} workflows that it contains.
1. In the `.github/workflows` directory, create a file with the `.yml` or `.yaml` extension. This tutorial will use `github-actions-demo.yml` as the file name. For more information, see "[AUTOTITLE](/repositories/working-with-files/managing-files/creating-new-files)."
1. Copy the following YAML contents into the `github-actions-demo.yml` file:

   ```yaml copy
   name: GitHub Actions Demo
   {%- ifversion actions-run-name %}
   run-name: {% raw %}${{ github.actor }}{% endraw %} is testing out GitHub Actions 🚀
   {%- endif %}
   on: [push]
   jobs:
     Explore-GitHub-Actions:
       runs-on: ubuntu-latest
       steps:
         - run: echo "🎉 The job was automatically triggered by a {% raw %}${{ github.event_name }}{% endraw %} event."
         - run: echo "🐧 This job is now running on a {% raw %}${{ runner.os }}{% endraw %} server hosted by GitHub!"
         - run: echo "🔎 The name of your branch is {% raw %}${{ github.ref }}{% endraw %} and your repository is {% raw %}${{ github.repository }}{% endraw %}."
         - name: Check out repository code
           uses: {% data reusables.actions.action-checkout %}
         - run: echo "💡 The {% raw %}${{ github.repository }}{% endraw %} repository has been cloned to the runner."
         - run: echo "🖥️ The workflow is now ready to test your code on the runner."
         - name: List files in the repository
           run: |
             ls {% raw %}${{ github.workspace }}{% endraw %}
         - run: echo "🍏 This job's status is {% raw %}${{ job.status }}{% endraw %}."
   ```

1. Scroll to the bottom of the page and select **Create a new branch for this commit and start a pull request**. Then, to create a pull request, click **Propose new file**.

   ![Screenshot of the "Commit new file" area of the page.](https://docs.github.com/assets/images/help/repository/actions-quickstart-commit-new-file.png)

Committing the workflow file to a branch in your repository triggers the `push` event and runs your workflow.

## Viewing your workflow results

{% data reusables.repositories.navigate-to-repo %}
{% data reusables.repositories.actions-tab %}
1. In the left sidebar, click the workflow you want to display, in this example "GitHub Actions Demo."

   ![Screenshot of the "Actions" page. The name of the example workflow, "GitHub Actions Demo", is highlighted by a dark orange outline.](https://docs.github.com/assets/images/help/repository/actions-quickstart-workflow-sidebar.png)
1. From the list of workflow runs, click the name of the run you want to see, in this example "USERNAME is testing out GitHub Actions."
1. In the left sidebar of the workflow run page, under **Jobs**, click the **Explore-GitHub-Actions** job.

   ![Screenshot of the "Workflow run" page. In the left sidebar, the "Explore-GitHub-Actions" job is highlighted with a dark orange outline.](https://docs.github.com/assets/images/help/repository/actions-quickstart-job.png)
1. The log shows you how each of the steps was processed. Expand any of the steps to view its details.

   ![Screenshot of steps run by the workflow.](https://docs.github.com/assets/images/help/repository/actions-quickstart-logs.png)

   For example, you can see the list of files in your repository:
   ![Screenshot of the "List files in the repository" step expanded to show the log output. The output for the step is highlighted with a dark orange highlight.](https://docs.github.com/assets/images/help/repository/actions-quickstart-log-detail.png)

The example workflow you just added is triggered each time code is pushed to the branch, and shows you how {% data variables.product.prodname_actions %} can work with the contents of your repository. For an in-depth tutorial, see "[AUTOTITLE](/actions/learn-github-actions/understanding-github-actions)."

## More starter workflows

{% data reusables.actions.workflow-template-overview %}

## Next steps

{% data reusables.actions.onboarding-next-steps %}

For more information about how to use GitHub Actions, see this [help topic](https://docs.github.com/actions "GitHub Actions").


## Running Operations Using the Command Line Interface
For more information about how to running predefined NI LabVIEW CLI operations, see this [help topic](https://www.ni.com/docs/en-US/bundle/labview/page/running-operations-using-the-command-line-interface-for-labview.html "Running Operations Using the Command Line Interface").

## Reference
For more information about how to use predefined NI LabVIEW CLI operations, see this [help topic](https://www.ni.com/docs/en-US/bundle/labview/page/predefined-command-line-operations.html "Predefined Command Line Operations").



