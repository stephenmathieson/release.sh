
# release.sh

  A convenience script for releasing (tagging) projects.  Will [populate your changelog](https://github.com/visionmedia/git-extras#git-changelog), open your editor (`$EDITOR`) for adjusting your `package.json` and/or `component.json` and finally push a new tag to origin.

  Requires [git-extras](https://github.com/visionmedia/git-extras) to be installed.

## Installation

    $ git clone https://github.com/stephenmathieson/release.sh.git /tmp/release
    $ make -C /tmp/release install

## Usage

  To release version `5.6.7`:

    $ release 5.6.7

## License 

(The MIT License)

Copyright (c) 2014 Stephen Mathieson &lt;me@stephenmathieson.com&gt;

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
