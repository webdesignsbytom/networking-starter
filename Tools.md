# Tools

A list and explanation of the basic networking tools available.

## Table of contents

- [Tools](#tools)
  - [Table of contents](#table-of-contents)
  - [Burp Suite](#burp-suite)
  - [Wireshark](#wireshark)
  - [NMap](#nmap)
  - [Twint](#twint)

## Burp Suite

Burp suite: A web application security testing framework

Features:

- Proxy
- Repeater
- Intruder
- Decoder
- Comparer
- Sequencer

Proxy: The Burp Proxy is the most renowned aspect of Burp Suite. It enables interception and modification of requests and responses while interacting with web applications.

Repeater: Another well-known feature. Repeater allows for capturing, modifying, and resending the same request multiple times. This functionality is particularly useful when crafting payloads through trial and error (e.g., in SQLi - Structured Query Language Injection) or testing the functionality of an endpoint for vulnerabilities.

Intruder: Despite rate limitations in Burp Suite Community, Intruder allows for spraying endpoints with requests. It is commonly utilized for brute-force attacks or fuzzing endpoints.

Decoder: Decoder offers a valuable service for data transformation. It can decode captured information or encode payloads before sending them to the target. While alternative services exist for this purpose, leveraging Decoder within Burp Suite can be highly efficient.

Comparer: As the name suggests, Comparer enables the comparison of two pieces of data at either the word or byte level. While not exclusive to Burp Suite, the ability to send potentially large data segments directly to a comparison tool with a single keyboard shortcut significantly accelerates the process.

Sequencer: Sequencer is typically employed when assessing the randomness of tokens, such as session cookie values or other supposedly randomly generated data. If the algorithm used for generating these values lacks secure randomness, it can expose avenues for devastating attacks.

## Wireshark

## NMap

## Twint

Twitter Intelligence:

Can find users and posts based on strings.

You will need
`apt install git`
`apt install python3`
`apt install python3-pip`
`git clone --depth=1 https://github.com/twintproject/twint.git`
`cd twint`
`pip3 install . -r requirements.txt`

- `twint -h` get help
- `twint -u [USERNAME]` scrap twitter for username
- `twint -u [USERNAME] --limit 20`
- `twint -u [USERNAME] -s [KEYWORD]` ssearch for keywords in tweets
- `twint -u [USERNAME] -s [KEYWORD]`

You can import twint into python code modules.
