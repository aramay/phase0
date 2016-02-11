Using your command line, create a new file called tracking-changes-reflection.md in the week-1 directory.
Open the file in sublime. Copy the following questions in it and answer them.


How does tracking and adding changes make developers' lives easier?
Developer use it achieve following goals
maintain different version of software
revert changes 
easy backup
more than one developer can work on project
What is a commit?
In version control system, a commit adds latest changes to software repository. This way when other user do any update or checkout  a project, they will receive a latest version, unless they specify they wish to retrieve a previous version of the source code in the repository.

What are the best practices for commit messages?
A project's long-term success rests (among other things) on its maintainability, and a maintainer has few tools more powerful than his project's log.
Sometimes a single line is fine, especially when the change is so simple that no further context is necessary.
e.g “fixed typo”

when a commit merits a bit of explanation and context, you need to write a body with Subject. e.g:
Fixed bug#23
Expired user were is able to create certificate. As per business requirements, this is not allowed.
What does the HEAD^ argument mean?
HEAD is a reference to the last commit in the current checked out branch.
HEAD~3, HEAD~4, HEAD~5, are the 3rd 4th and 5th commit from HEAD respectively.


What are the 3 stages of a git change and how do you move a file from one stage to the other?
three stages are
git add <filename>
git commit -m “message”
git push origin <branch-name>
Write a handy cheatsheet of the commands you need to commit your changes.
As a good practice, you should create a branch for your changes
type git checkout -b <feature-x>
create a file and add changes.
save file and exit
on command line type git status
What is a pull request and how do you create and merge one?
Why are pull requests preferred when working with teams?
Go through the git workflow you just established and add your reflection to the file. (If you are creating a video reflection, add the video link to your reflection file.)
Add your changes, commit them, and make a pull request to your repository.
Merge the pull request into your master branch
Submit the link to your reflection file. It should be located at:
https://github.com/[YOUR-USERNAME]/phase-0/blob/master/week-1/tracking-changes-reflection.md


