# frozen_string_literal: true

# Copyright (c) 2018 Akira. All rights reserved.
base_path = File.expand_path('..', File.dirname(__FILE__))
envfile_path = File.join(base_path, '.env')

File.foreach(envfile_path) do |line|
  key, value = line.split "="
  ENV[key] = value.strip
end

require 'aws-sdk-rekognition'

@client = Aws::Rekognition::Client.new(region: ENV['AWS_REGION'],
                                       credentials: Aws::Credentials.new(ENV['AWS_KEY'], ENV['AWS_SECRET']))


# https://docs.aws.amazon.com/sdkforruby/api/Aws/Rekognition/Client.html#detect_faces-instance_method
img = "#{base_path}/img/GORI_SAYAIMG_4705_TP_V.png"
res = @client.detect_faces({
                               image: {
                                   bytes: File.read(img)
                               }
                           })
puts res.to_h
puts res.face_details.first.bounding_box.to_h

require 'chunky_png'

original = ChunkyPNG::Image.from_file(img)

# Draw rectangle
ulx = original.width * res.face_details.first.bounding_box.left
uly = original.height * res.face_details.first.bounding_box.top
w = original.width * res.face_details.first.bounding_box.width
h = original.height * res.face_details.first.bounding_box.height

original.rect(ulx, uly, ulx + w, uly + h, ChunkyPNG::Color::BLACK)
original.save("#{base_path}/tmp/result.jpg", :best_compression)


