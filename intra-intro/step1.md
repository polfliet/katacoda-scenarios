
The first step to installing the New Relic infrastructure agent is figuring out which agent to install. New Relic supports several package management systems (`apt`, `yum`, `zypper`) and operating systems, which means the install instructions are different for each.

The simpelest way to figure out which package manager the customer uses is to discover which operating system is installed. Running the following command will give you that information.

`cat /etc/os-release`{{execute}}

Check out the `NAME` and `PRETTY_NAME` variable for the name of the operating system. `VERSION_ID` gives you a hint on the version.

Next is the installation. In New Relic go to `Infrastructure` and click on `+ Add data connections` (top, right). Here you can find a list of operating systems to choose from. When in doubt or the operating system is not listed, you can always reach out to support. Use the `NAME` and `PRETTY_NAME` variables from the output to select the right operating system.

After selecting the right operating system follow the instructions within New Relic, executing command by command. When you need to select a command depending on the `distribution version` you can use the information from the `VERSION_ID` discovered above.

You can check if your installation was succesfull by running: `service newrelic-infra status`{{execute}}. If it says `Active: active` you are all good.

Once you're done installing and have checked, please click on `continue` to start configuring the agent.
