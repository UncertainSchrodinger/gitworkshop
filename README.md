# Git Workshop

This repository contains some simple exercises to work on to get familiar with
git.

All the exercises are in separate branches. These are listed below with some of
the goal on how to work on them.

Remember that the most important part is to get the end result right. So, don't
stress about using the right commands. Unless your command is `rm -rf .git` and
starting over.

# Exercises

These can be done in any order. There's some description of what you have been
doing in the branch and then you need to solve this.

## feature-branch-reset-mater-to-github

### Scenario

You have started a branch from a branch other than `master`, you ran `git
checkout -b feature-branch-reset-mater-to-github` in wrong branch.

### Goal

* get `feature-branch-reset-mater-to-github` to the same state as
  `origin/master`

### Results

Running `git diff origin/master..feature-branch-reset-mater-to-github` should print nothing.

## feature-branch-a-conflict

### Scenario

You have been working on a feature in this branch and are ready to start pushing
these changes to master. Your branch will conflict with the master branch.

### Goal

* get `feature-branch-a-conflict` branch to be up to date with master.
* resolve any conflicts
* your branch should have no merge commits

### Results

`code.rb` should look like this:
```
def i_will_conflict
  this = "is going to be fine"
  puts this
  i_will_remain
end

def i_will_remain
  puts "hey hey hey"
end

i_will_conflict
```

Your last two commits titles should be:

```
Add feature a
Add sunshine to code
```

## feature-branch-restore

### Scenario

You have accidentally deleted something and you need to get it back.


Start this exercise by running:

`git reset --hard HEAD~`

NOTE! In this exercise you must use `git reflog` to restore.

### Goal

* get commit with title `Why have you forsaken me` back to your repository.

### Results

Running `git log` shows first commit with title `Why have you forsaken me`

## feature-branch-squashing

### Scenario

You have been working on a feature for some time and have commits you need to
squash. Some of this work is separate so you cannot just squash all.

All commits containing feature-a should be squashed with each other and the same
for commits containing feature-b.

TIP: you can use `git rebase -i <commit_sha>` for this

### Goal

* squash your commits so that you are left with two commits
* commit message for feature-a commits should be `Add feature-a`
* commit message for feature-b commits should be `Add feature-b`

### Results

Running `git log` should show the following commits in this order:

```
Add feature-b
Add feature-a
```

`code.rb` shoud look like this:

```
def i_will_conflict
  this = "is going to be fine"
  puts this

  feature_a
  feature_b
end

def feature_a
end

def feature_b
end

i_will_conflict
```
