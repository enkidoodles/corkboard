require 'jenkins_api_client'

@client = JenkinsApi::Client.new(:server_ip => 'localhost',
         :username => 'enkidoodles', :password => 'patience')
# The following call will return all jobs matching 'Testjob'





jobs = @client.job.list_all;

s = ["_class", "number"];

jobs.each do |i|
	builds = @client.job.get_builds(i);
	builds.each do |j|
		s.each do |k|
			puts "#{k} = #{j[k]}";
		end
		s = @client.job.get_test_results(i,j["number"]);
		puts(s);
	end
end
