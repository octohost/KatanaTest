FROM octohost/mono

ADD . /src/www
RUN xbuild KatanaTest.sln
