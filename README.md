## ⌨️ oboi&trade; command line tool ##

![Alt Text](oboi_logo_colour.png)

Installs **oboi&trade;** as a CLI tool. 

oboi&trade; uses TORIDION's TQNN FraudTagger scoreUsername API to score a username or email against their enterprise fraud detection model. It installs directly into your CLI environment so you can call it from your favourite scripting tools etc.


## 🌟 Features 

⦿ **Email/Username scoring** against enterprise grade fraud detection API

⦿ **Free** to use upto 10 username searches per day

⦿ Integrates with MacOS, Linux and Windows 32/64 bit terminals



## 💻 Further development 

This tool is likely to eveolve regularly for some time - check back often.

## ⚙️ Installation Instructions 
Install: brew tap forshaws/homebrew-oboi  then brew install oboi
Run this command in your terminal:

```bash
brew tap forshaws/homebrew-oboi
brew install oboi
```


Uninstall
Run this command in your terminal:

```bash
brew uninstall oboi
```


## 📧 Usage Instructions 

oboi currently supports the "check" command only. 

Example usage commands:

```bash
oboi check --apikey=<yourapikey> joy1@walletx-fakers.net 
```

**note** Replace **<YOUR_API_KEY>** with the supplied one from TORIDION if you have one. **IF** you have no key you can omit the --apikey argument completely and use the free tier **10 per day** like this:

```bash
oboi check joy1@walletx-fakers.net
```


Add JSON return argument
oboi will return the full API result in JSON if you include the --json flag. Example:

```bash
oboi check --json joy1@walletx-fakers.net 
```

**Recommended : Adding your apikey to the env so you dont have to keep entering it**

By adding the apikey to your environment variables you can use oboi without entering a key all the time. If your apikey is set in env, then oboi just uses your api credits.** If no key is set in env or on the command line it will default to free trial mode**. 

Add your key to the env by using the following command:

```bash
export OBOI_APIKEY="YOUR_API_KEY_GOES_HERE"
```

Remove the key using the following command:

```bash
unset OBOI_APIKEY
```


## 🔐 Free API Usage & Fair Use

**oboi&trade;** is free to use under the MIT license for personal, educational, and prototyping purposes.



Usage beyond this will require a valid API license key, please [view the API plans](https://toridion.com/oboi/) for license details for commercial use.

The source code may be modified and redistributed under the terms of the MIT license, but **abuse of the free API tier (e.g., illegal use, bulk use, bypassing limits or causing a nuisance to anyone)** may result in access being restricted without notice.

✅ TL;DR:
- You can use/modify/share the app
- API access is free up to 10/day
- For more, see [Pricing & Terms](https://toridion.com/oboi/)


⦿ **Email/Username scoring** against enterprise grade fraud detection API

⦿ **Free** to use upto 10 username searches per day

⦿ Integrates with MacOS, Linux and Windows 32/64 bit terminals



## 📧 Further development 

No notes

## 📧 Instructions 

Install using brew tap and call using ./oboi check  --apikey=<YOUR_API_KEY> <EMAIL>


**note** Replace <YOUR_API_KEY> with the supplied one from TORIDION if you have one. IF you have no key you can omit the --apikey argument completely and use the free tier **10 per day**. 

## 🔐 Free API Usage & Fair Use

**oboi&trade;** is free to use under the MIT license for personal, educational, and prototyping purposes.



Usage beyond this will require a valid API license key, please [view the API plans](https://toridion.com/oboi/) for license details for commercial use.

The source code may be modified and redistributed under the terms of the MIT license, but **abuse of the free API tier (e.g., illegal use, bulk use, bypassing limits or causing a nuisance to anyone)** may result in access being restricted without notice.

✅ TL;DR:
- You can use/modify/share the app
- API access is free up to 10/day
- For more, see [Pricing & Terms](https://toridion.com/oboi/)

Updated 14th August