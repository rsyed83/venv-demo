from git import Repo

git_url = "https://github.com/rsyed83/venv-demo.git"
repo_dir = "./venv-demo"
Repo.clone_from(git_url, repo_dir)

