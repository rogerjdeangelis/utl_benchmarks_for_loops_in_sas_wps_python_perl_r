# utl_benchmarks_for_loops_in_sas_wps_python_perl_r
    SAS-L Updated: Benchmarks for loops in SAS WPS Python Perl R

    The only change I made was to add an assignment that changed on each iteration, smart compilers
    can recognize an empty loop?

    I was unable to get the python 2.7  approx 1.5 second run.
    This is probably due to my very slow system.
    In addition I had to leave out the assignment.
    2008 Dell T7400 Big Box 3gz Two Xeons (switching between two Xeons slows things down)


    NO ASSIGNMENTS
    --------------

    My Pyhton 2.7  xrange pass   3.4   for i in xrange(1,100000001): pass; ** no assignment
    My Pyhton 3.5   range pass   7.3   for i in xrange(1,100000001): pass; ** no assignment

    * xrange is not available in Python 3


    ASSIGNMENT BENCHMARKS
    ---------------------

    My Pyhton 2.7  range        19.3   for i in range(1,100000001): x=i;
    My Pyhton 2.7  xrange       13.3   for i in xrange(1,100000001): x=i;

    My Python 3.5 Loop range     9.5   for i in range(100000001) x=i
    My R for Loop               22.8   for (i in 1:100000001) x <- i
    IML DO loop                 24.6   do i = 1 to 100000001 x=i; end;
    SAS datastep                 0.4   do i = 1 to 100000001 x=i; end;
    SAS DS2                      0.3   do i=1 to 100000000; x=i; end;
    Perl                         7.0   for $i (0..100000001) {$x=$i};`
    WPS datastep V3              3.3   do i = 1 to 100000001; x=i; end;
    WPS datastep V4              2.1   do i = 1 to 100000001; x=i; end;

    Poor loop processing in R and IML may not be a big deal for a matrix language.
    My philosophy is only to drop down to another language when needed.


    SOAPBOX ON

    OPTIMUM TOOLS
    -------------

    SAS/WPS ( core system
              big data, persistent tunnel to unix/mainframe.. OS kernels, verified complex stats and drop down to other languages)

    Perl - Job processing
    Python - AI, IoT, Web, niche packages, blleding edge processing.
    R      - Matrix, Stats(when SAS component not available) - use SAS for complex stat designs and
             graphics(when missing SAS components or niche graphics), bleeding edge processing.
    ghostscript - postscript, pdf processing

    SOAPBOX OFF


