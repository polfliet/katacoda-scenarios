
The first step to installing the New Relic infrastructure agent is figuring out which agent to install. New Relic supports several package management systems (`apt`, `yum`, `zypper`) and the install instructions are different for each.

The simpelest way to figure out which package manager the customer uses is to figure out which operating system the customer has installed. Running the following command will give you that information.

`cat /etc/os-release`{{execute}}

`NAME` and `PRETTY_NAME` are your best bets to figure out which package manager to use. On our Infrastructure `+ Add data connections` page you can find a list of operating systems to choose one. When in doubt, you can always reach out to support.

After selecting the right operating system follow the instructions within New Relic, executing command by command. When you need to select a command depending on the `distribution version` you can use the information from above.

You can check if your installation was succesfull by running: `service newrelic-infra status`{{execute}}. If it says `Active: active` you are all good.

Once you're done installing and have checked, please click on 'next step' to start configuring the agent.
