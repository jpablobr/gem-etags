RubyGems Automatic Etags Invoker
================================

This gem is based on [tpope's](https://github.com/tpope)
[ctags](https://github.com/tpope/gem-ctags) but for Emacs compliant
'TAGS'.

Nary a day of Ruby development goes by where I don't run `gem open`.
And when I do, I want tags.  As good as I've gotten at `ctags -eR .`,
I've grown weary of it.  So I wrote a RubyGems plugin to automatically
invoke Ctags every time a Gem is installed.

Installation
------------

    gem install gem-etags

Now all that's left to do is install [Exuberant
Ctags][http://ctags.sourceforge.net/] and make sure it comes first in
`$PATH`

If you're using RVM, I recommend extending your global gemset:

    echo gem-etags >> ~/.rvm/gemsets/global.gems

To generate tags for all previously installed gems that don't already
have a `TAGS` file, run `gem etags`.  (If it blows up, upgrade
RubyGems.)  Future gems will be handled automatically and silently, with
the sad exception of those installed by Bundler.

## Note on Patches/Pull Requests:

Fork the project.
Make your feature addition or bug fix.
Send me a pull request. Bonus points for topic branches.

Don't submit a pull request with [an ugly commit
message](http://stopwritingramblingcommitmessages.com) or I will ignore
your patch until I have the energy to politely explain my zero tolerance
policy.

## Copyright:

(The MIT License)

Copyright 2011 Jose Pablo Barrantes. MIT Licence, so go for it.

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, an d/or sell copies of the Software, and to
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
