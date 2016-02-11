##1.1 Think About Time

Which time management and productivity ideas did you learn about?

I learned how meditation can help me with elaborate attention span. Now i can catch my attention wander off when i trying work on complex topic. I can concentrate on task in much efficient way. Meta attention, is the ability to know that your attention has wandered off. Before learning about meditation and how it can help me with productivity was a big struggle. Now i’ve a clear mind and just being aware of these distractions is a big help in being productive. 

Phase 0 is 15-20 hour effort per week, this makes it 4 hour of study in a day. I would divide each day in 2 hour sprints. In these 2 hours i can use pomodoro technique to divide tasks in smaller chunks for better learning and time management. This way i would know which task are taking more time and need more time to complete. At the end of the day, i would recap to check level of understanding and see if something needs revision.



What is "Time Boxing?" How can you use it in Phase 0?

Each planned activity is allocated a fixed time, during which team or person work towards completion of some goal. When time box limit is reached, work is stopped and evaluate what was accomplished. 

In phase 0, peer pairing and guided pairing session can take place using time boxed approach. This way we don’t spend hours on session and concentrate what we can learn from each other and guides. 

How do you manage your time currently?

I’ve each week split into 2 hour sprints each morning/evening. I prioritize task that would take longer than others. This way i can see my progress and identify area which require more work to be done. I usually schedule difficult tasks during morning hours, this time is usually most productive. 

Keeping schedule of personal appointments let's me concentrate on my work and don’t let them become distractions. 

Is your current strategy working? If not, why not?


Can/will you employ any of them? If so, how?
What is your overall plan for Phase 0 time management?


##1.2 The Command Line

##version control
Write an explanation of and compare Git and GitHub to one another.
Git is a widely used “source code management system” for software development. It is the management of changes to documents, computer programs, large web sites, and other collections of information. Git is like an App that runs locally on user's machine. 
Git
Repository
A repository is a special directory which has all the features of version control system.
you can create a local repository by
create a directory
type command - git init
or you can clone an existing repository by
git clone /path/to/directory 
on a remote machine - git clone username@host:/path/to/directory 

Workflow
you local directory consist of three trees:
working directory - which has all the actual files
you add files which have been changed - git add *
actual commit would save those files in local repository - git commit “message”

Push Changes
To send these changes to remote repository, type command
git push origin master
GitHub
GitHub is web based repository hosting service. A web based model allows multiple users to work on same project. This way all the changes are synced and developers across the globe can keep up with progress. This can be accomplished as follows.

Update and Merge
Developer 1 can get the latest repository by pull request.
git pull
After making changes to his files, developer 1 can push changes, so repository is synced.
git push origin master
developer 2 and developer 3 can sync their local repositories by doing git pull (it will merge latest changes)

Explain what version control is and how GitHub helps with it.
Version Control is a widely used “source code management system” for software development. It is the management of changes to documents, computer programs, large web sites, and other collections of information.
GitHub is a repository hosting service. It’s flagship feature is “forking”. Forking is copying a repository from one user’s account to another. This enables you to take a project that you don’t have write access to and modify it under your own account. If you make changes you’d like to share, you can send a notification called a “pull request” to the original owner. That user can then, with a click of a button, merge the changes found in your repo with the original repo.


Why do developers use version control (Git)?
Developer use it achieve following goals
maintain different version of software
revert changes 
easy backup
more than one developer can work on prokject

What is a commit?
In version control system, a commit adds latest changes to software repository. This way wheen other user do any update or checkout  a project, they will receive a latest version, unless they specify they wish to retrieve a previous version of the source code in the repository.

##new heading

## over ride changes with checkout


