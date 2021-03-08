class Project
    attr_accessor :title
    def initialize(title)
        @title=title
    end

    
    def add_backer(backer)
        new_projectbacker = ProjectBacker.new(self,backer)
        new_projectbacker
    end

    def backers
      
        backers=[]
        ProjectBacker.all.each do |projectbacker|
             if projectbacker.project == self 
           backers << projectbacker.backer
            end 
        end
        backers 
    end
    
end 