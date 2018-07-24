module Contexts
    module LargeGroups
      # Context for items (assumes no prior contexts)
  
      def create_lgs
        @lg1 = FactoryBot.create(:largeGroup)
        @lg2 = FactoryBot.create(:largeGroup, date: Date.current - 7, semester: "Fall 2018")
        @lg3 = FactoryBot.create(:largeGroup, date: Date.current - 14, semester: "Fall 2018")
      end
  
      def destroy_lgs
        @lg1.delete
        @lg2.delete
        @lg3.delete
      end
  
    end
end