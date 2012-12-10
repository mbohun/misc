# ~/.bash_profile
#
export JAVA_HOME=/usr/local/jdk
export ANT_HOME=/usr/local/ant

```
martin@yobbo:/tmp/github-upload$ ls -la /usr/local/
total 248
drwxr-sr-x 54 root   root   4096 Nov 21 15:01 ./
drwxrwxr-x 19 root   root   4096 May 11  2012 ../
lrwxrwxrwx  1 root   root     16 Aug 20 12:40 ant -> apache-ant-1.8.4/
drwxr-xr-x  6 root   root   4096 Dec 21  2010 apache-ant-1.8.2/
drwxr-xr-x  6 root   root   4096 Feb 26  2012 apache-ant-1.8.3/
drwxr-xr-x  6 root   root   4096 May 22  2012 apache-ant-1.8.4/
drwxr-xr-x  2 root   root  16384 Dec  4 15:53 bin/
drwxr-sr-x  4 root   root   4096 Oct  2 15:54 bitlbee-3.0.5/
lrwxrwxrwx  1 root   root     12 Dec 24  2010 boost -> boost_1_45_0/
drwxr-xr-x  4 root   root   4096 Dec 24  2010 boost_1_45_0/
drwxr-sr-x  4 root   root   4096 Sep  5 23:48 boost_1_51_0/
drwxr-xr-x  9 martin users  4096 May 26  2012 eclipse-SDK-3.7.2/
drwxr-xr-x  9 root   root   4096 Feb 17  2012 eclipse-java-indigo-SR2/
drwxr-sr-x  4 root   root   4096 Sep  6 00:47 eigen2/
lrwxrwxrwx  1 root   root     10 Sep 15 12:33 emacs -> emacs-24.2/
drwxr-sr-x  6 root   root   4096 Jun 29 21:40 emacs-24.1/
drwxr-sr-x  6 root   root   4096 Sep 12 14:44 emacs-24.2/
drwxr-xr-x 11 root   root   4096 Jun 29 20:08 etc/
lrwxrwxrwx  1 root   root     14 Nov  1 19:45 firefox -> firefox-16.0.2/
drwxr-xr-x  9 root   root   4096 Sep  6 09:22 firefox-15.0.1/
drwxr-xr-x 10 root   root   4096 Oct 25 02:40 firefox-16.0.2/
drwxr-xr-x 11 root   root   4096 Sep 13 03:04 firefox-18.0a1/
drwxr-xr-x  8 root   root   4096 Apr 19  2012 gDEBugger6.2.438-x86/
drwxr-xr-x  3 root   root   4096 Oct 19  2009 games/
drwxr-xr-x  9 root   root   4096 Mar 23  2012 gcc-4.4.7/
drwxr-xr-x  7 root   root   4096 May 13  2011 gcc-4.5.3/
drwxr-xr-x  7 root   root   4096 Mar 23  2012 gcc-4.6.3/
drwxr-sr-x  7 root   root   4096 Jun 28 19:33 gcc-4.7.1/
drwxr-sr-x  7 root   root   4096 Oct 25 23:03 gcc-4.7.2/
drwxr-xr-x  9 root   root   4096 Jun 25  2010 ibm-java-i386-60/
drwxr-xr-x 66 root   root   4096 Oct 18 15:07 include/
drwxr-xr-x  2 root   root   4096 Nov 25  1993 info/
lrwxrwxrwx  1 root   root     15 Jan  7  2012 inkscape -> inkscape-0.48.2/
drwxr-xr-x  4 root   root   4096 Jan  5  2012 inkscape-0.48.2/
drwxrwxr-x  9 root   root   4096 May 11  2011 j2sdk1.4.2_19/
lrwxrwxrwx  1 root   root     11 Oct 25 18:10 jdk -> jdk1.7.0_09/
drwxr-xr-x  8 root   root   4096 Oct 25 18:09 jdk1.6.0_37/
drwxr-xr-x  8 root   root   4096 Sep 25 14:27 jdk1.7.0_09/

...

```

# for antialiased fonts
#
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on"
