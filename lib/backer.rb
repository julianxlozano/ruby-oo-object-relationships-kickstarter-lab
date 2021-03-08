class Backer
    attr_accessor :name
    def initialize(name)
        @name = name 
    end

    def back_project(project)
        new_projectbacker = ProjectBacker.new(project,self)
        new_projectbacker
    end

    def backed_projects
        backed=[]
        ProjectBacker.all.each do |projectbacker|
             if projectbacker.backer == self 
           backed << projectbacker.project
            end 
        end
        backed 
    end
end