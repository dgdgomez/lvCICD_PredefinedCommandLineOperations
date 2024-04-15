# NI LabVIEW CLI - Predefined Command Line Operations (🛠️ Under Construction)

## Introduction

You only need a GitHub repository to create and run a GitHub Actions workflow. In this guide, you'll add a workflow that demonstrates some of the essential features of GitHub Actions.

The following example shows you how GitHub Actions jobs can be automatically triggered, where they run, and how they can interact with the code in your repository.

## Setting github action

1. Go to GitHub repository.

2. Settings>Actions>Runners>New self-hosted runner

3. Select Windowsx64

3.1. Download runners

3.1.1. Create a folder under the drive root

We recommend configuring the runner in a root folder of the Windows drive (e.g. "C:\actions-runner"). This will help avoid issues related to service identity folder permissions and long file path restrictions on Windows.

3.1.2. Download the lastet runner package

https://github.com/actions/runner/releases/latest

3.1.3. Extract the installer into the folder created in the previous step

3.2. Configure


The following snipped needs to be run on `powershell`:
``` powershell
# XX
PowerShell Command: Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

It is necessary to execute the following command from PowerShell Admin, to communicate with a remote server
```

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

For more information about how to use GitHub Actions Runner, see this [help topic](https://github.com/actions/runner "GitHub Actions Runner").

## Creating your first workflow

1. Create a `.github/workflows` directory in your repository on GitHub if this directory does not already exist. The directory must have this exact name in order for GitHub to discover any GitHub Actions workflows that it contains.

2. In the `.github/workflows` directory, create a file with the `.yml` or `.yaml` extension. This tutorial will use `github-actions-demo.yml` as the file name. For more information, see (https://docs.github.com/en/repositories/working-with-files/managing-files/creating-new-files "Creating new files").

3. Copy the following YAML contents into the `github-actions-demo.yml` file:

   ```yaml copy
   name: GitHub Actions Demo
   run-name: ${{ github.actor }} is testing out GitHub Actions 🚀
   on: [push]
   jobs:
      Explore-GitHub-Actions:
         runs-on: ubuntu-latest
         steps:
            - run: echo "🎉 The job was automatically triggered by a ${{ github.event_name }} event."
            - run: echo "🐧 This job is now running on a ${{ runner.os }} server hosted by GitHub!"
            - run: echo "🔎 The name of your branch is ${{ github.ref }} and your repository is ${{ github.repository }}."
            - name: Check out repository code
            uses: actions/checkout@v4
            - run: echo "💡 The ${{ github.repository }} repository has been cloned to the runner."
            - run: echo "🖥️ The workflow is now ready to test your code on the runner."
            - name: List files in the repository
              run: |
               ls ${{ github.workspace }}
            - run: echo "🍏 This job's status is ${{ job.status }}."
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


