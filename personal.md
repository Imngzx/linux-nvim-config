# THIS IS HOW TO MAKE .VENV IN POWERSHELL

> [!CAUTION]
> Before proceed, go to your project directory first

> [!NOTE]
> Deactivate is the same for both platform

1. First step: make .venv first

```sh
  python -m venv .venv
```

2. Second step: activate it

```sh
  .venv\Scripts\Activate.ps1
```

3. Third step: check if it is activated

```sh
  pip --version
```

The output should looks like as below.
Assume that my .venv was located under code\py

```sh
  Administrator E:\code\py > pip --version
  pip 25.2 from E:\code\py\.venv\Lib\site-packages\pip (python 3.13)
```

# THIS IS HOW I MAKE .VENV IN LINUX

1. First step: make .venv first

```sh
  python3 -m venv .venv
```

2. Second step: activate it
```sh
  source .venv/bin/activate
```

3. Third step: check if it is activated

 > [!NOTE]
 > It should appear like this in Linux

```sh
  (.venv) user@linux:~/code/py$
```

also

```sh
  pip --version
```

