### Acquiring Intel License


##### Prerequisites

1. Finish installation of `Quartus Prime Lite FPGA` software

##### Instructions
1. Enroll for Intel FPGA Self-Service License Center (SSLC)
    a. If first-time user: [enroll](https://www.intel.com/content/www/us/en/secure/forms/fpga-sslc-registration.html) link on the [SSLC](https://licensing.intel.com/psg/s/?language=en_US) Intel website
    b. If returning user use this [SSLC link](https://licensing.intel.com/psg/s/)

2. Create an account (or sign in to Microsoft account)

3. At the top ribbon, select `Sign up for Evaluation or No-Cost License`
![](figures/altera-license-ribbon.png)

4. Select the `SW-QUESTA` license
![](figures/sw-questa.png)

5. Choose `add new computer` and determine your licence numbers by giving the MAC address of the WiFi module being used.
```bash
ifconfig        # find `ether aA:bB:cC:dD:eE:fF`
```
If `aA:bB:cC:dD:eE:fF` is the MAC address output, enter `aAbBcCdDeEfF` as the MAC address for the license. You will get the license file in email

6. Download license file and export `LM_LICENSE_FILE` as shown:
```bash
export LM_LICENSE_FILE=/path/to/license.dat
```

##### DONE!
Now you can use the `vsim` and `vlog` from command line without license errors. See [test-simple/Makefile](test-simple/Makefile) for an example.
