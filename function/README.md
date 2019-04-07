# Rest client ruby lambda

First you'll need to install the rest client gem on the vendor path:

`./bundle.sh` or `bundle install --path vendor/bundle`

Then you'll need to wrap everything on a .zip file to upload on AWS Lambda:

`./zip.sh` or `zip -r function.zip main.rb vendor`

Now, on AWS console you'll only need to:
- Create a new lambda with Ruby 2.5
- Upload the `function.zip`

When you're done you can go to `../invoker` to learn how to invoke it.
