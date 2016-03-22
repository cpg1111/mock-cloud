require 'base64'
require 'dotenv'
require 'hmac-sha1'
require 'aws_request'
require 'do_request'
require 'gce_request'

describe 'Request' do
    before do
        Dotenv.load
        aws_auth = "AWS #{ENV['AWS_ACCESS_KEY_ID']}:#{Base64.encode64((HMAC::SHA1.new(ENV['AWS_SECRET_KEY_ID']) << ENV['AWS_REGION']).digest).strip}"
        @aws = Aws_Request.new(aws_auth, nil)
        @do = DO_Request.new("Bearer #{ENV['DO_TOKEN']}", nil)
        @gce = Gce_Request.new("Bearer #{ENV['GCE_TOKEN']}", nil)
    end
    describe 'Aws' do
        describe '#auth' do
            it 'should be able to auth with the actual cloud provider' do
                expect(@aws.is_authd?).to_not eq(nil)
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
                expect(@do.is_authd?).to_not eq(nil)
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
                expect(@gce.is_authd?).to_not eq(nil)
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
