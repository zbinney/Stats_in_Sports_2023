---
title: "Tutorial 0 - Installing R, Rstudio, and Packages"
author: "Zachary Binney, PhD; Assistant Professor of Quantiative Theory and Methods, Oxford College of Emory University"
date: "February 2020"

output:
  html_document:
    keep_md: true
---


# Setting Up for Our First Day of Class (and the Rest of the Course!)

Before we can get started with the fun stuff we have to eat some technical vegetables (just kidding, vegetables are actually delicious - have you had sauteed brussels sprouts? so savory).

Some of the things I'm asking you to do right now might seem arbitrary, and I apologize for that. I'll explain it all when we get into the course itself. But for right now, here's what you need to know:

* You need two pieces of **free** software in this course: R and RStudio.
 
    + R is the actual programming language we'll be using. Your computer doesn't know it inherently (like it does some other languages), so we have to install it.
    
        - When you install "R," it also comes with an interface (a program) for writing code and conducting analyses in it. One tiny problem, though: that interface stinks. So, we're going to install another one.
 
    + RStudio is a much better interface for using R


So with that all in mind, I'm asking you to do 3 things:

1. Install R
2. Install RStudio
3. Install some extra "packages" (not as scary as it sounds, promise!)


OK, ready? Let's go.


## Installing R

To install R: 

1. Click on one of the following links:

<div style = "width:500px;margin-left:100px;">
| Operating System |                     Link                    |
|:----------------:|:-------------------------------------------:|
|      Windows     | http://cran.r-project.org/bin/windows/base/ |
|        Mac       |    http://cran.r-project.org/bin/macosx/    |
|      Linux       |      https://cran.r-project.org/            |
</div>

2. If you're Windows, click on that big ol' "Download" link right at the top of the page. 

    If you're Mac, click the first `.pkg` link under "Latest Release." Note, though, that this will only work if your OS is at least OS X 10.11 (El Capitan) or higher - El Capitan was released in 2015, so hopefully most of you have upgraded by now. If not, though, you have two options: simply [upgrade your Mac OS](https://www.apple.com/macos/how-to-upgrade/) (my recommendation, should be free and fairly easy!), or install an older version of R. If you have to do this latter option, please email me.

    If you're using Linux, I trust you to figure out how to install R on your own because you probably know more about computers than I do, frankly.

3. When the file finishes downloading, double-click on it and an installer should open. Follow all the default prompts to install everything.

4. If you have any questions or get confused: 

    i) First try reading through the more detailed instructions in [the section for installing R in LSR (Section 3.1)](https://learningstatisticswithr.com/book/introR.html#gettingR).
  
        A. Use [Section 3.1.1 for Windows](https://learningstatisticswithr.com/book/introR.html#installing-r-on-a-windows-computer)
        
        B. Use [Section 3.1.2 for Mac](https://learningstatisticswithr.com/book/introR.html#installing-r-on-a-mac)
        
        C. Use [Section 3.1.3 for Linux](https://learningstatisticswithr.com/book/introR.html#installing-r-on-a-linux-computer)
  
    ii) Another option is the incredibly-detailed explanation (with screenshots!) from [Rafael Irizarry's data science book](https://rafalab.github.io/dsbook/installing-r-rstudio.html).
  
    iii) If you're still lost, [this 5-minute video](https://www.youtube.com/watch?v=cX532N_XLIs) might also help, especially for Mac users.
  
    iv) If you're still confused, try Googling around for any errors you're encountering or talking to a friend. Solving problems by searching for answers on your own is a key part of programming and a key skill I hope you'll develop in this course. Unfortunately, it's impossible to anticipate everything that might go wrong during the installation process and give you a pre-baked solution to all of them.
  
    v) However, if you have been working at this for about 30 minutes and still find yourself lost, please ask a question on the Canvas Discussions Board or shoot me an email and I'll help you!
  

Now we need to check that everything went right by opening R. If you chose to put a shortcut on your desktop you can do this by double-clicking on the new R icon. If you didn't you can access it via your Start menu on Windows or the equivalent on your Mac. 

Once you open it, you should see something like this:

![*The default application that comes with R.*](images/R_JustR.png)

Do you see that? Bask in its hideousness for a moment. Great, now close it and let us *never speak of this again*.




## Installing RStudio

To install RStudio (a hopefully slightly-simpler process!), 

1. Go to https://rstudio.com/products/rstudio/download/#download

2. The website lists 2 steps there. You've already done step 1 (install R). Hooray! Time for step 2. You'll see that RStudio is trying to guess the right version you want by showing a big blue button under "Recommended for Your System." 

    i) If that looks like it matches your operating system (OS, like Windows 10 or Mac OS X 10.15), click it! 
  
    ii) If not, scroll down slightly to "All Installers" and choose the right one for your OS.

3. When the file finishes downloading, double-click on it and an installer should open. Follow all the default prompts to install everything.

4. If you have any questions or get confused: 

    i) First try reading through the more detailed instructions in [the section for installing RStudio in LSR (Section 3.1.4)](https://learningstatisticswithr.com/book/introR.html#installingrstudio).
    
    ii) Another option is the incredibly-detailed explanation (with screenshots!) from [Rafael Irizarry's data science book](https://rafalab.github.io/dsbook/installing-r-rstudio.html#installing-rstudio).
  
    iii) If you're still lost, [this 5-minute video (same as above)](https://www.youtube.com/watch?v=cX532N_XLIs) might also help, especially for Mac users.
  
    iv) If you're still confused, try Googling around for any errors you're encountering or talking to a friend. Solving problems by searching for answers on your own is a key part of programming and a key skill I hope you'll develop in this course. Unfortunately, it's impossible to anticipate everything that might go wrong during the installation process and give you a pre-baked solution to all of them.
  
    v) However, if you have been working at this for about 30 minutes and still find yourself lost, please ask a question on the Canvas Discussions Board or shoot me an email and I'll help you!
  

Now we need to check that everything went right by opening RStudio. If you chose to put a shortcut on your desktop you can do this by double-clicking on the new RStudio icon. If you didn't you can access it via your Start menu on Windows or the equivalent on your Mac. 

Once you open it, you should see something like this:

![*Basic RStudio interface (except for the red arrow, that's me). So pretty. Overwhelming right now, probably, but we'll work through it.*](images/RStudio_screenshot.png)

OK, now let's make sure R and RStudio are working. At the blinky cursor in the Console (look at the red arrow above) type `30 + 7`. Does it return 37? If so, you're all set! But keep RStudio open for now.

Note that using the Console is just one way - and usually not the optimal way - of telling R to do something. This was just a brief test.


## Installing Some Packages

You are *almost* there. That should've been the worst of it. Now all I need you to do is install some "packages."

I can hear you thinking "What the heck is a package?" I have really good ears. In short, R (the language) can do a lot of things already when you first install it. Think of it like a baby - it can breathe, look around, poop - it's really impressive! But it's capable of so much more. Installing a "package" to R is kinda like teaching a baby (or an adult) a new skill or set of skills. Just like I could teach you "Carpentry" I could install a "caRpentry" package to R, and now you can both do something you couldn't before.

To do cool sports stats-y things, I need you to teach your R-baby a couple new things. You'll do that by running some code in your RStudio console:

First,  run `install.packages("tidyverse")`. The tidyverse is actually a collection of a whole bunch of different packages, all of which should automatically install. This might take a few minutes.

You should see something *like* this (but not exactly this, as you'll have more and different packages installed) at the end:

![](images/pkg_install.png)

If you have some **Warnings**, too, that's probably OK. Hopefully you won't have any **Errors**. If you see something that says error, maybe send me a screenshot.

Now, run `install.packages(c("DT", "rmarkdown", "unvotes", "devtools", "remotes", "learnr", "shiny", "tinytex", "pacman"))`.

Finally, run `remotes::install_github("allisonhorst/palmerpenguins")`. Don't worry about what this code means for now.

We now need to make sure these installs ran OK. Try to *load* some of these the packages (I'll tell you what that means later) using the following code (again, enter it at the console):

`library(tidyverse)`

`library(DT)`

`library(pacman)`

You may see a lot of scary-looking red text and some "**Warning message**"s. These are (likely) fine!

It's also possible you'll see *nothing* (no text) when you load some packages. That's also fine!

You should only worry if you get anything that says "**Error**." If you don't, all is well.

Now just one last (brief) thing...

## Installing LaTeX

LaTeX is a typesetting language that's necessary to produce PDF documents in R (it's also very popular in economics and mathematics due to the ease of writing complex mathematical equations and formulas). To install it:

1. You've already installed the package we need to add LaTeX (`tinytex`).

2. So just run `tinytex::install_tinytex()`. This should install LaTeX onto your system.

Keep playing around if you want, but you're all set for now!

THANK YOU for investing this time to make everything run more smoothly!



### Common Errors and Solutions

As you're installing packages you might run into some errors. These are more common on Macs than PCs in my experience. Here are a couple common ones as well as their solutions.

#### **Error saying anything about "xcrun" or "xcode"**

If you get an error that says this, please follow the below instructions to install something called xcode. Don't worry about what it is or what it does.

Also note this needs to be run in your **Terminal**. The Terminal is the black box with (usually) a white cursor and text. It makes you feel like a hacker. It is *not* part of RStudio but rather something native to your computer. To open it, either:

* Click the Launchpad icon in the Dock, type Terminal in the search field, then click Terminal; OR

* In the Finder , open the /Applications/Utilities folder, then double-click Terminal

![](images/xcode.png)

Then restart RStudio (and maybe your computer) and then try installing the packages that had a problem before.

#### **Error saying anything about "XQuartz"**

This one is most likely to appear if you ever use the `summarytools` package. Simply go [here](https://www.xquartz.org/) and install the XQuartz program by clicking on .dmg file and following the instructions.

Then restart RStudio (and maybe your computer) and try to install the packages that had a problem before.

#### **Failure to Download Package**

If anything fails to install, check whether you actually managed to download the entire package. The way you do this is to look at the red code produced in the Console and look for something like a progress bar.

![](images/download_fail.png)

The number at the right of the line that begins with "Content" represents the expected size of the package. The number below the progress bar next to "downloaded" is how big a file you actually downloaded. They should match. If the latter is smaller than the former, it just means your download got interrupted. (R will usually try twice - the screenshot above shows two consecutive failures.)

This happens sometimes, even on strong connections. I have no idea why. It seems to be pretty random. Just run the code again to install whatever package(s) failed to download. It should work soon. If it doesn't after a few tries, wait a few minutes and try again later.


### Error With the Word "writable"

You may get an error that says something about a directory not being "writable" when you run `install_tinytex()`.

To troubleshoot this, follow the instructions [here](https://github.com/yihui/tinytex/issues/24). Here's the simple version:

* Open your **Terminal**. The Terminal is the black box with (usually) a white cursor and text. It makes you feel like a hacker. It is *not* part of RStudio but rather something native to your computer. To open it, either:

    + Click the Launchpad icon in the Dock on a Mac or Start Menu on Windows, type Terminal in the search field, then click Terminal; OR

    + In the Finder on a Mac, open the /Applications/Utilities folder, then double-click Terminal

* Type and run: sudo chown -R \`whoami\`:admin /usr/local/bin

* Then type and run: ~/Library/TinyTeX/bin/*/tlmgr path add

Then restart RStudio (and maybe your computer) and try `install_tinytex()` again. If you're still getting this error, let me know. 

If you see anything about a directory not existing, run this code in your Terminal first: `[ -e /usr/local/bin ] || sudo mkdir -p /usr/local/bin`

Then run the other code above.

There may be an issue for students specifically running their systems in Chinese (some Chinese characters in usernames, which are part of the file paths being used here, can cause issues), but we may need to troubleshoot those on an individual basis. In the past this has been *pretty* rare, so I'm hoping that continues to be the case.
