FROM octohost/mono

ENV PATH /opt/mono/bin:$PATH

RUN mozroots --import --sync --machine && certmgr -ssl -m https://go.microsoft.com && certmgr -ssl -m https://nugetgallery.blob.core.windows.net && certmgr -ssl -m https://nuget.org

ADD . /src/www

RUN xbuild KatanaTest.sln
