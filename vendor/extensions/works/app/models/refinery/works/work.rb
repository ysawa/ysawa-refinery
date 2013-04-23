module Refinery
  module Works
    class Work < Refinery::Core::BaseModel
      self.table_name = 'refinery_works'

      attr_accessible :title, :description, :image_id, :position

      acts_as_indexed :fields => [:title, :description]

      validates :title, :presence => true, :uniqueness => true

      belongs_to :image, :class_name => '::Refinery::Image'
    end
  end
end
