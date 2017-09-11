# AVISPA (Process Model's Moose package)

## Description:

SPEM 2.0 Process model visualizer. It takes an XML and produces blueprints and shows visual representations from process models ellaborated in Eclipse Process Framework

## Moose Version:
This package works on moose 6.1.

---

---

## Moose Installation:

Download sources (moose executable) and image (such as your workspace) from [here](http://www.moosetechnology.org/#install).

### Windows:

Just double click on pharo.exe.

### Linux:

If your O.S. is x64 you need to follow [this tutorial](http://pharo.org/gnu-linux-installation) in order to run all necessary dependencies.

From [moose main web page](http://www.moosetechnology.org/#install), it is necessary to download 3 files (latest moose version if it is posible):

- The executable virtual machine.
- The pharo sources.
- The pharo image and image changes (both in one)

#### 1. Unpackage moose virtual machine
#### 2. Unpackage pharo image and image changes
#### 3. Run it

> Before runing it, do not use the root user. Root has denied permission to use Xorg.

Next, just run it by passing the image path as parameter of moose executable (don't forget O.S. permissions of both: executable and image):

```bash
./<moose_executable> <moose_image>
```
On moose 6.1 and executable and image are on same relative path:

```bash
./pharo moose-6.1.image
```

The first time you will see an error such as this:

![Moose error: can not locate cairo library](ReadmeSources/unknownPharoSourcesPath.png?raw=true "Moose error: can not locate cairo library")

#### 4. Unzip source file on requested path

To fix this error just unpackage the Pharo 6.0 sources file on the pharo notified path. It contains the .source requested file.

#### 5. Run it again

---

---

## AVISPA (Process Model's Moose package) Installation:

This installation is now platform-independent due to, at this point, we assumed that you have pharo already installed on your system:


### 1. Download or clone this repository with git

Make sure than you are cloning this into an empty directory

### 2. Open the monticello browser on moose

By left clicking on *moose workspace* -> *monticello browser* or the keyboard shortcut **Cttl + O + P**

### 3. Aim a new repository as filestream to the cloned / downloaded git repository.

In the monticello browser make click in *+Repository* -> *filetree* -> *Select the git cloned repository directory* -> *Ok*

![Aiming to Process Model cloned repository](ReadmeSources/ProcessModelInstallation1.png?raw=true "Aiming to Process Model cloned repository")

Once loaded the repository to monticello it is necessary to load the package to moose by clicking the *Load* button on the loaded repository window:

![Opening Process Model package](ReadmeSources/ProcessModelInstallation2.png?raw=true "Opening Process Model package")


---

---

## AVISPA (Process Model's Moose package) saving process on git:

Repeat steps 1st and 2nd of the above item.

### 3. Search and export Process Model package progress:

On moticello browser *search ProcessModel* -> *select option starting by filetree followed by the git repo configured* -> *Save* -> *Type author name (this step does not appear if you already has inserted yours previously)* -> *type a message for the commit to describe the work that you have done* -> *Ok*

Then changes have been reflected on the directory. So you can use the normal git commands to save them on remote repository (we recommend to use [git flow](https://danielkummer.github.io/git-flow-cheatsheet/) to manage local repository and versions)

---

---

## AVISPA (Process Model's Moose package) user's manual:

### Understanding AVISPA

AVISPA is an engine to visualize software process models builded on Eclipse Process Framework based on SPEM 2.0 process metamodel specifications.

AVISPA builds graphical representations to illustrate users about some process error paterns that can be founded on software process models before they get started or initialized on software industries.

More information about conceptual issues can be founded in [this article](http://www.bergel.eu/download/papers/Berg13a-Avispa.pdf)

### Loading the software process model XML

On the git package you can found some sample process XMLs. You can visualize some by doing the performing steps:

On the moose workspace *left click* -> *moose panel* -> *on moose panel click on the arrow located on superior right corner that does not have any text on it* -> *click on "import EPF Process with AVISPA and vAVISPA"*

![Importing Process Model XML](ReadmeSources/XMLMooseImporting.png?raw=true "Importing Process Model XML")

Now search the XML on ./XMLSamples/ and load it.

### Explore the software process model on moose interface:

#### Process elements blueprints grouped by activity.

You can visualize all software process model elements grouped by activities, tasks, roles and artifacts.

![Moose panel with process loaded](ReadmeSources/MoosePanelWithOpenedProcess1.png?raw=true "Moose panel with process loaded")

As the above figure, you can click on *Activities* to view the list of activities asociated to the process.

In this version each activity has it's asociated tasks, roles and artifacts, each one with the associated blueprint that groups all the previously mentioned process elements by activity (Red box grouping the tabs on above image).

If you make click on one activity you can see all the tasks, roles and artifacts grouped by that single activity (Orange box grouping the tabs on above image) and the set of visualizations that can be done with this information (Yellow box grouping the tabs on above image).

And so on with each group or single process element if you click on the grouped elements inside the orange box on the above image.

You can explore all the AVISPA generated process blueprints.

#### All process elements blueprints.

You can visualize AVISPA blueprints by right clicking on each process elements to show the AVISPA's menu and explore each menu element in order to visualize each process blueprint (as show in the below image).

![Moose menu blueprins sample](ReadmeSources/MoosePanelWithOpenedProcess2.png?raw=true "Moose menu blueprins sample")

> For more information about each visualization you can get more information about conceptual issues can be founded in [this article](http://www.bergel.eu/download/papers/Berg13a-Avispa.pdf)

### Screenshots

#### Tasks:

![Task blueprints sample](ReadmeSources/MoosePanelWithOpenedProcess3.png?raw=true "Task blueprints sample")

#### Roles:

![Role blueprints sample](ReadmeSources/MoosePanelWithOpenedProcess4.png?raw=true "Role blueprints sample")

#### Artifacts:

![Artifact blueprints sample](ReadmeSources/MoosePanelWithOpenedProcess5.png?raw=true "Artifact blueprints sample")

---

---

## Troubleshooting:

### Linux

On linux distributions (debian based mainly) exists some problems about runing on x64 hardware architecture. We report and solve some of them:

---

#### squeak: can not find file or directory.

In x64 is necessary to install libraries to run moose because it is builded on x86 architecture.

You can install software packages that replace ia32-libs. This solution has been mentionend on StackOverflow forums:

```bash
$ sudo apt-get install gcc-multilib
```
but problem can persist, and is solved in the following troubleshooting:

---

#### could not find display driver vm-display-X11

When you try again to run moose, you may have the following error:

```bash
$ ./squeak <imagen_moose>
could not find display driver vm-display-X11; either:
  - check that /home/jjalvarezl/Escritorio/AVISPA//vm-display-X11.so exists, or
  - use the '-plugins <path>' option to tell me where it is, or
  - remove DISPLAY from your environment.
```

This means that you need to install some libraries to execute X11 visual environment.

Then you need to know ```vm-display-X11``` package dependencies that uses Xorg to enable graphical issues concerning to draw moose on screen. You can know them by typing the following command:

```bash
$ ldd vm-display-X11
```
Extensions with "not found" words are those that moose need in order execute vm-display-X11 and show itself.

On debian 8 x64 arch ```ldd vm-display-X11``` showed the following:

```
linux-gate.so.1 =>  (0xf776a000)
libGL.so.1 => /usr/lib/i386-linux-gnu/mesa/libGL.so.1 (0xf76d2000)
libXext.so.6 => /usr/lib/i386-linux-gnu/libXext.so.6 (0xf76bf000)
libSM.so.6 => not found
libICE.so.6 => not found
libdl.so.2 => /lib/i386-linux-gnu/libdl.so.2 (0xf76b9000)
libpthread.so.0 => /lib/i386-linux-gnu/libpthread.so.0 (0xf769d000)
libm.so.6 => /lib/i386-linux-gnu/libm.so.6 (0xf7657000)
libnsl.so.1 => /lib/i386-linux-gnu/libnsl.so.1 (0xf763d000)
libX11.so.6 => /usr/lib/i386-linux-gnu/libX11.so.6 (0xf7509000)
libc.so.6 => /lib/i386-linux-gnu/libc.so.6 (0xf735a000)
libexpat.so.1 => /lib/i386-linux-gnu/libexpat.so.1 (0xf7331000)
libxcb-dri3.so.0 => /usr/lib/i386-linux-gnu/libxcb-dri3.so.0 (0xf732d000)
libxcb-present.so.0 => /usr/lib/i386-linux-gnu/libxcb-present.so.0 (0xf7328000)
libxcb-sync.so.1 => /usr/lib/i386-linux-gnu/libxcb-sync.so.1 (0xf7321000)
libxshmfence.so.1 => /usr/lib/i386-linux-gnu/libxshmfence.so.1 (0xf731e000)
libglapi.so.0 => /usr/lib/i386-linux-gnu/libglapi.so.0 (0xf7303000)
libXdamage.so.1 => /usr/lib/i386-linux-gnu/libXdamage.so.1 (0xf72ff000)
libXfixes.so.3 => /usr/lib/i386-linux-gnu/libXfixes.so.3 (0xf72f8000)
libX11-xcb.so.1 => /usr/lib/i386-linux-gnu/libX11-xcb.so.1 (0xf72f5000)
libxcb-glx.so.0 => /usr/lib/i386-linux-gnu/libxcb-glx.so.0 (0xf72dd000)
libxcb-dri2.so.0 => /usr/lib/i386-linux-gnu/libxcb-dri2.so.0 (0xf72d7000)
libxcb.so.1 => /usr/lib/i386-linux-gnu/libxcb.so.1 (0xf72b5000)
libXxf86vm.so.1 => /usr/lib/i386-linux-gnu/libXxf86vm.so.1 (0xf72ae000)
libdrm.so.2 => /usr/lib/i386-linux-gnu/libdrm.so.2 (0xf729e000)
/lib/ld-linux.so.2 (0x5656e000)
libXau.so.6 => /usr/lib/i386-linux-gnu/libXau.so.6 (0xf729a000)
libXdmcp.so.6 => /usr/lib/i386-linux-gnu/libXdmcp.so.6 (0xf7293000)
```
In this case **libSM.so.6** and **libICE.so.6** are missed from this O.S:

Those can be installed by adding the library libsm6:i386:

```bash
sudo apt-get install libsm6:i386
```

Repeat this process until "no found" libraries have been installed.

---

#### Moose error: can not locate cairo library

If you need to visualize an AVISPA blueprint, possibly you can get the following error:

![Moose error: can not locate cairo library](ReadmeSources/AVISPAIssueExecution.png?raw=true "Moose error: can not locate cairo library")

In this case is necessary to install the missed cairo library (```libcairo2.so.2```) for x86 arch:

```bash
 sudo apt-get libcairo2:i386
```
Now you can visualize the AVISPA blueprints.

---

---

## Support:

Email: jjalvarezl@unicauca.edu.co

If you wish to colaborate in actualizing this package to the latest version of moose, or reporting any problem that you have founded, you can try these steps above and reporting us the issues / bugs. It's neccessary to including optional information such as:
- O.S.
- Processor's architecture.
- Moose version executable.
- Moose version image.
- Description and how to recreate it.
- Screenshots.

> You can add issues to the present project by asking a colaborator role on the project by sending username or the GitHub associated email.
