#!/usr/bin/env ruby
require ('fileutils')

class Project 
  def initialize (project_name)
    @project_name = project_name
  end
  def project_gen 
    FileUtils.mkdir_p "../#{@project_name}/lib"
    FileUtils.mkdir_p "../#{@project_name}/spec"
    FileUtils.touch "../#{@project_name}/lib/#{@project_name}.rb"
    FileUtils.touch "../#{@project_name}/spec/#{@project_name}_spec.rb"
    File.open("../#{@project_name}/spec/#{@project_name}_spec.rb", 'a') {|f| f.write("did this appear") } 
    # File.open("../#{@project_name}/lib/#{@project_name}.rb", 'a') {|f| f.write("class /n end") }
  end
end


puts "What would you like your Ruby file to be called?"
file_name = gets.chomp
project = Project.new(file_name)
puts (project.project_gen)


