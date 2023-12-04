# Bash


## Bash Scripting

BASH (Bourne Again Shell)
It is the command line in Linux
You need to add the shebang (#!), with what script type.

To run code you can

`bash file.sh`
`./file.sh` this will give you a permission denied response. Be sure to run `chmod 777`
`date=$(date)` use a bash command in the code `$(pwd), $(whoami)`
`#RANDOM` i.e echo #RANDOM. other randoms exist

You can create you own variables
`twitter="Elon Musk"`
`echo twitter` = Elon Musk
`export twitter` to create a variable used by children
You will still need to save the variables to the `.bashrc` file, then they save from reboots

What is bashrc?

Bashrc use bash code to set up all your code you want to run on start up
You can also get `env` variables in here

MATH

`echo $(( 2 + 3 ))`


### Example

```BASH
#!/bin/bash
name="Tom"
date=$(date)

echo 'Hello World'
echo "Hello $name"

echo "Enter your name $date"
read name
```

```BASH
#!/bin/bash
name=$1 # this is the first param entered from bash i.e. `./file.sh tom`
```

IF

```bash
echo "Hey deo you like coffee? (y/n)"

read coffee

if [[ $coffee == "y" ]]; then
        echo "Youre awesome"
else
        echo "leave right now"
fi


```

## Powershell .ps1

`Invoke-RestMethod` is a cmdlet in PowerShell that is used to send HTTP requests to