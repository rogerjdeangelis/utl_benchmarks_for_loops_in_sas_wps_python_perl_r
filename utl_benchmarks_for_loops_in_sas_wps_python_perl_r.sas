Benchmarks for loops in SAS WPS Python Perl R


Added DS2, SAS datastep, WPS datastep, Paul's while loop, SAS IML and Perl

The only change I made was to add an assignment that changed on each iteration, smart compilers
can recognize an empty loop?

Pauls While Loop   29.4 seconds   while i < 1E8: i += 1;

My Python for Loop  9.5 seconds   for i in range(100000001): x=i
My R for Loop      22.8 seconds   for (i in 1:100000001) x <- i
IML DO loop        24.6 seconds   do i = 1 to 100000001; x=i; end;
SAS datastep        0.4 seconds   do i = 1 to 100000001; x=i; end;
SAS DS2             0.3 seconds   do i=1 to 100000000; x=i; end;
Perl                7.0 seconds   for $i (0..100000001) {$x=$i};`
WPS datastep        3.3 seconds   do i = 1 to 100000001; x=i; end;

Poor loop processing in R may not be a big deal for a matrix language.
My philosophy is only to drop down to another language when needed.

SAS/WPS ( core system
          big data, persistent tunnel to unix/mainframe.. OS kernels, verified complex stats and drop down to other languages)

Perl - Job processing
Python - AI, IoT, Web, niche packages, blleding edge processing.
R      - Matrix, Stats(when SAS component not available) - use SAS for complex stat designs and
         graphics(when missing SAS components or niche graphics), bleeding edge processing.
ghostscript - postscript, pdf processing




