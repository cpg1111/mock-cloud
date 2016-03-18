require 'base64'
require 'hmac-sha1'
require 'aws/request'
require 'digital_ocean/request'
require 'gce/request'

describe 'Request' do
    before do
        aws_auth = "AWS #{ENV['AWS_ACCESS_KEY_ID']}:#{base64.encode64((HMAC::SHA1.new(ENV['AWS_SECRET_KEY_ID']) << ENV['AWS_REGION']).digest).strip}"
        @aws = Lib::Aws::Request.new(aws_auth, nil)
        @do = Lib::Digital_Ocean::Request.new("Bearer #{ENV['DO_TOKEN']}")
        @gce = Lib::Gce::Request.new("Bearer #{ENV['GCE_TOKEN']}")
    end
    describe 'Aws' do
        describe '#auth' do
            it 'should be able to auth with the actual cloud provider' do

            end
        end
        describe '#fetch' do
            it 'should return the correct response from an API endpoint when auth\'d' do

            end
            it 'should error when not auth\'d' do

            end
        end
        describe '#res_to_hash' do
            it 'should take a response and return a hash of that response' do

            end
            it 'should error given an unexpected content-type' do

            end
        end
        describe '#hash_to_schema' do
            it 'should define a schema based on the type of each value in the given hash' do

            end
        end
    end
    describe 'Digital_Ocean' do
        describe '#auth' do
            it 'should be able to auth with the actual cloud provider' do

            end
        end
        describe '#fetch' do
            it 'should return the correct response from an API endpoint when auth\'d' do

            end
            it 'should error when not auth\'d' do

            end
        end
        describe '#res_to_hash' do
            it 'should take a response and return a hash of that response' do

            end
            it 'should error given an unexpected content-type' do

            end
        end
        describe '#hash_to_schema' do
            it 'should define a schema based on the type of each value in the given hash' do

            end
        end
    end
    describe 'Gce' do
        describe '#auth' do
            it 'should be able to auth with the actual cloud provider' do

            end
        end
        describe '#fetch' do
            it 'should return the correct response from an API endpoint when auth\'d' do

            end
            it 'should error when not auth\'d' do

            end
        end
        describe '#res_to_hash' do
            it 'should take a response and return a hash of that response' do

            end
            it 'should error given an unexpected content-type' do

            end
        end
        describe '#hash_to_schema' do
            it 'should define a schema based on the type of each value in the given hash' do

            end
        end
    end
end
