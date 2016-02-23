class Pretask < ActiveRecord::Base
	belongs_to :project
	belongs_to :user
	has_many :predepends, dependent: :destroy
	has_many :pretaskdependtos, :through =>:predepends

	has_many :pretaskmemberships, dependent: :destroy
	has_many :pretmembers, :through => :pretaskmemberships
end
