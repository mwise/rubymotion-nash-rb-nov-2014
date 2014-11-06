rubymotion-nash-rb-nov-2014
===========================

Example code for my RubyMotion presentation at Nash.rb in November 2014 

Requirements:
- RubyMotion

Usage:

### branch 'master'
```
git checkout master
bundle
rake
```

### branch 'good'
```
git checkout good
bundle
rake
```

### branch 'ugly'
Note - this should blow up when you try to build it
```
git checkout ugly
bundle
pod setup
rake pod:install
rake
```

This code is released under the MIT License.
