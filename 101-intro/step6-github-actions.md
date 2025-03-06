## GitHub Actions

`vet` has first class support for integration with GitHub Actions using [vet-action](https://github.com/safedep/vet-action).
This integration allows you to setup a security guardrail for your GitHub repositories by enforcing policies on the open source components used.

### Clone sample repository

* Start by authenticating with your GitHub account

`gh auth login`{{exec}}

* Execute the following command to clone the repository where you want to integrate `vet`

> **Note:** This will create a fork of the repository in your GitHub account. You can replace
> the command below with `git clone <your-repo-url>` to clone any other repository.

`gh repo fork safedep/demo-client-python`{{exec}}

* Navigate to the cloned repository

`cd demo-client-python`{{exec}}

* Create a new branch for your changes

`git switch -c ci/integrate-vet`{{exec}}

### Add vet-action to the repository

* Create the workflow directory if it doesn't exist

`mkdir -p .github/workflows .github/vet`{{exec}}

* Add the `vet` policy to the repository

`curl -o .github/vet/policy.yml -L https://raw.githubusercontent.com/safedep/vet-action/main/example/policy.yml`{{exec}}

* Add the `vet` workflow to the repository

`curl -o .github/workflows/vet-ci.yml -L https://raw.githubusercontent.com/safedep/vet-action/main/example/vet-ci.yml`{{exec}}

* Commit and push the changes

`git add .github/workflows/vet-ci.yml .github/vet/policy.yml`{{exec}}

`git commit -m "Add vet-action to the repository"`{{exec}}

`git push origin ci/integrate-vet`{{exec}}

* Create a pull request

`gh pr create --base main --head ci/integrate-vet --title "Integrate vet with GitHub Actions" --body "This PR integrates vet with GitHub Actions"`{{exec}}







