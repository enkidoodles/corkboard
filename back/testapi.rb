require 'jenkins_api_client'

@client = JenkinsApi::Client.new(:server_ip => 'localhost',
         :username => 'enkidoodles', :password => 'patience')
# The following call will return all jobs matching 'Testjob'





jobs = @client.job.list_all;

s = ["userId", "userName", "shortDescription"];

jobs.each do |i|
	builds = @client.job.get_builds(i);
	j = builds[-1];
	details = @client.job.get_build_details(i,j["number"]);
	s.each do |k|
		puts "#{k} = #{details["actions"][0]["causes"][0][k]}";
	end
	puts "result = #{details["result"]}";
	
end
