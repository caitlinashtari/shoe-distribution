class Store < ActiveRecord::Base
  has_and_belongs_to_many(:shoes)
  validates(:name, {:presence => true, :uniqueness => {case_sensitive: false}})
  before_save(:capitalize)

  private

  define_method(:capitalize) do
    self.name=(name.titlecase)
  end
end
