### gdechap

A tool for recovering credentials from sniffed PPPoE, RADIUS and L2TPv2 CHAP
authentications
(forked from [theclam/dechap](https://github.com/theclam/dechap))

#### about the fork

This fork is to try and improve its performace. And maybe add some new features.
The original repository had only tar.gz files of all versions. They are all
uncompressed here as tags. :wink:

#### purpuse

dechap is a tool which attempts to recover login credentials from captured
PPPoE, RADIUS and L2TP CHAP authentications plus MD5 authenticated OSPF or BGP
traffic. It strips away any 802.1Q tags and / or MPLS labels which are present
to get to the good stuff and then runs a dictionary attack against any
authentications it finds.

Please see [Foeh Mannay](http://www.blogger.com/profile/10422929908647460238)
blog [Bringing Up a PPPoE Session - The Theory]
(http://networkingbodges.blogspot.com/2013/01/bringing-up-pppoe-session-theory.html)
and [recovering-chap-passwords-from-sniffed.html]
(http://networkingbodges.blogspot.com.br/2013/01/recovering-chap-passwords-from-sniffed.html)
for more information on the theory behind this if you are interested.

#### instalation

As simple as running make... :wink:

#### usage

There are only two parameters and both are mandatory. You must specify your
capture file (original pcap format) with the -c flag and your word list (one per
line) with the -w flag. Here's an example:

```
~/dechap$ ./dechap -w mywords.txt -c someauths.cap
Found password "tangerine" for user user1@testisp.com.
Unable to find a password for user user2@testisp.com.
Found password "password1" for user user3@testisp.com.
Found password "Africa" for user user4@testisp.com.
Found password "Frankenstein" for user user5@testisp.com.
Found password "s3cr3tk3y" for OSPF host 10.1.1.1 key 1.
Found password "t1nt3rn3t" for TCP from 10.0.0.2 to 10.0.0.1.
~/dechap$
```

#### credits

All hard work done by Foeh Mannay [GitHub](https://github.com/theclam)
[blog](http://www.blogger.com/profile/10422929908647460238)
