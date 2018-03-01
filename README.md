# Front-End-Training
  This repository will be used for the front end training code review purpose.

# Steps to start with this project

1) Ember Installation Steps
  https://guides.emberjs.com/v2.11.0/getting-started/

2) Create your own fork of this repository

# How to create a fork
  Forking a repository is really straightforward:

  Make sure you’re logged into GitHub with your account.
  Find the GitHub repository with which you’d like to work.
  Click the Fork button on the upper right-hand side of the repository’s page.
  That’s it—you now have a copy of the original repository in your GitHub account.
  
  See: https://blog.scottlowe.org/2015/01/27/using-fork-branch-git-workflow/

3) Clone your forked repository local system.

  $ git clone https://github.com/codaemon-shrikant/Front-End-Training
  $ cd Front-End-Training

  Note- Change clone URL to your fork URL.

4) Install pre-commit hook which help you to find linting errors before commit.
  $ cp sh/pre-commit .git/hooks/pre-commit

5) Add Remote for the main repository 
  https://github.com/codaemon-shrikant/Front-End-Training

  So that you will have 2 remote 
   - your fork remote.
   - Main repository remote.
 # How to add remote 
  By Default you will have a Origin remote in your code base.
  You can check it by git remote -v
  
  So not lets add new remote 
  git remote add <REMOTE NAME> <REPOSITORY URL>
  
  to be consistent lets use Remote name as FRONT_END_TRAINING 
  So you have to run command 
  
  $ git remote add font_end_training https://github.com/codaemon-shrikant/Front-End-Training
  
  See: https://help.github.com/articles/adding-a-remote/
  
  run git remote -v 
  You will see new remote added. Now lets disable the push of font-end-traning so that no one will directly push there changes to main repository.
  
  git remote set-url --push font_end_training no_push
  
  
6) You are ready to go. Run ember-serve 

  Open localhost:4200 in your browser.


# How to share your code

note: No one push code directly to https://github.com/codaemon-shrikant/Front-End-Training/ code base
Every one suppose to use thre own fork to push the code. 

1) Create a branch with the with proper naming convention like "Add-<section name>, Updated-<section name>, Removed-<Section name>"

2) Add proper committ Message. - Add Descriptive messages 
  <A nice commit message>
  
  <Desccription>
  
  # Here's an example with an optional body:

  NAR-123 Implement cool feature

  This cool feature has interesting edge-cases I want to
  mention here. This is how I fixed them.
  
  If you follow this structure, GitHub will automatically add these to your pull requests.

  Here's a solid example from the official Git Docs:

  Short (50 chars or less) summary of changes

  More detailed explanatory text, if necessary.  Wrap it to
  about 72 characters or so.  In some contexts, the first
  line is treated as the subject of an email and the rest of
  the text as the body.  The blank line separating the
  summary from the body is critical (unless you omit the body
  entirely); tools like rebase can get confused if you run
  the two together.

  Further paragraphs come after blank lines.

    - Bullet points are okay, too

    - Typically a hyphen or asterisk is used for the bullet,
      preceded by a single space, with blank lines in
      between, but conventions vary here
      
  See: https://git-scm.com/book/ch5-2.html#Commit-Guidelines
  
4) Before push your changes always rebase code with main master of https://github.com/codaemon-shrikant/Front-End-Training/ repository.
  $ git fetch font_end_training
  $ git rebase font_end_training/master.
  
  So that you will get all latest changes.

5) Push code to your own fork.
  Simple git push origin <YOUR BRANCH NAME>
  
6) create Pull request - select base branch as a Master of main repository i.e.  https://github.com/codaemon-shrikant/Front-End-Training/
  
  While creating PR, add description, screenshot of your work done like Name of the file changed, if need details of what changes you did, etc.

Thanks

# References for Coding standards
- ESLint (http://eslint.org/docs/rules/)
- Google Coding Style Guide (http://google.github.io/styleguide/javascriptguide.xml)
- No comma dangle (http://eslint.org/docs/rules/no-comma-dangle)


