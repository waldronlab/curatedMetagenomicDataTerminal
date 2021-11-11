# MS Windows

Installation on Windows is possible but requires a bit of work:

1. Add R to your Path.
    + Press the Windows key and type "path" then select "Edit the system environment variables."
    + Under Advanced, select "Environment Variables..." toward the bottom.
    + The lower half of the screen should be "System variables." Select Path and then select "Edit..."
    + Select New then enter the path to your R installation bin folder (typically C:\Program Files\R\R-<Version>\bin).
    
2. Ensure that it was added to your Path by opening Command Prompt or PowerShell and running `Rscript --version`.

3. Run these lines. Note that the position of the single and double quotes have been reversed from the same code block above. This will not work on Windows otherwise.

```{pwsh}
Rscript -e "utils::install.packages('BiocManager', repos = 'https://cloud.r-project.org/')"
Rscript -e "BiocManager::install('waldronlab/curatedMetagenomicDataTerminal')"
```

4. Create a symbolic link to the curatedMetagenomicData script to do this run the following line of code in a PowerShell window with elevated privileges (to run PowerShell with elevated privileges, right click and choose "Run as Administrator").

```{pwsh}
New-Item -ItemType SymbolicLink "curatedMetagenomicData" -Target "<path to R library>/curatedMetagenomicDataTerminal/exec/curatedMetagenomicData"
```

5. Check to make sure everything is setup correctly by running this line in PowerShell:

```{pwsh}
Rscript curatedMetagenomicData --help
```
