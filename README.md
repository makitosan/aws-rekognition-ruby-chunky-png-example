# aws-rekognition-ruby-chunky-png-example
Example usgin aws rekognition via AWS Ruby SDK, w/o rmagick

This project uses Chunky-PNG for its image processing instead of rmagick. 

This project is originally created at https://github.com/makitosan/aws-rekognition-ruby-example
which includes `rmagick` for its dependencies. `Rmagick` requires `imagemagick` library, 
it might cause unexpected issues and not needed for POC of AWS:Rekognition.

## REFERENCE

- https://rubygems.org/gems/chunky_png
- https://github.com/wvanbergen/chunky_png

# .env FILE
Please put `.env` file in the project root directory.

```.env
AWS_KEY=[YOUR_API_KEY]
AWS_SECRET=[YOUR_API_SECRET]
AWS_REGION=[YOUR_API_REGION]
```

## ACKNOWLEDGEMENT
This repository includes images provided from pakutaso.com . Please read and follow the terms and licence.

- https://www.pakutaso.com/20161113316post-9498.html
